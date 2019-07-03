{{/* vim: set filetype=mustache: */}}
{{/*
mongodb customisation
*/}}
{{- define "mongodb-replicaset.name" -}}
{{- default "meeting-mongodb" -}}
{{- end -}}

{{- define "mongodb-replicaset.fullname" -}}
{{- default "meeting-mongodb" -}}
{{- end -}}
