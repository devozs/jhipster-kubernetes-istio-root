#!/bin/bash
# Files are ordered in proper order with needed wait for the dependent custom resource definitions to get initialized.
# Usage: bash helm-apply.sh
if [ -d "csvc" ]; then
helm dep up ./csvc
helm upgrade --install csvc ./csvc --namespace office
fi
helm dep up ./leave
helm upgrade --install leave ./leave --namespace office
helm dep up ./meeting
helm upgrade --install meeting ./meeting --namespace office
helm dep up ./notification
helm upgrade --install notification ./notification --namespace office
helm dep up ./organization
helm upgrade --install organization ./organization --namespace office
helm dep up ./ui
helm upgrade --install ui ./ui --namespace office

kubectl apply -f istio/

