{{/* vim: set filetype=mustache: */}}
{{/*
mongodb customisation
*/}}
{{- define "mongodb-replicaset.name" -}}
{{- default "leave-mongodb" -}}
{{- end -}}

{{- define "mongodb-replicaset.fullname" -}}
{{- default "leave-mongodb" -}}
{{- end -}}
