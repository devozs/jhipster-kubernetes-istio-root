#!/bin/bash
# Files are ordered in proper order with needed wait for the dependent custom resource definitions to get initialized.
# Usage: bash helm-apply.sh
kubectl apply -f namespace.yaml
kubectl label namespace office istio-injection=enabled
if [ -d "csvc" ]; then
helm delete --purge csvc 2>/dev/null
helm dep up ./csvc
helm install --name csvc ./csvc --namespace office
fi
helm delete --purge leave 2>/dev/null
helm dep up ./leave
helm install --name leave  ./leave --namespace office
helm delete --purge meeting 2>/dev/null
helm dep up ./meeting
helm install --name meeting  ./meeting --namespace office
helm delete --purge notification 2>/dev/null
helm dep up ./notification
helm install --name notification  ./notification --namespace office
helm delete --purge organization 2>/dev/null
helm dep up ./organization
helm install --name organization  ./organization --namespace office
helm delete --purge ui 2>/dev/null
helm dep up ./ui
helm install --name ui  ./ui --namespace office

kubectl apply -f istio/

