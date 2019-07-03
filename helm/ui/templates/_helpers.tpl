{{/* vim: set filetype=mustache: */}}
{{/*
mongodb customisation
*/}}
{{- define "mongodb-replicaset.name" -}}
{{- default "ui-mongodb" -}}
{{- end -}}

{{- define "mongodb-replicaset.fullname" -}}
{{- default "ui-mongodb" -}}
{{- end -}}
