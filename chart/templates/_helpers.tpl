{{- define "krateo.mongodb" -}}
{{- if .Values.mongodb.uri -}}
  {{ .Values.mongodb.uri }}
{{- else -}}
  {{- printf "mongodb://root:%s@krateo-mongodb.krateo-system.svc/krateo?retryWrites=true" .Values.mongodb.password -}}
{{- end -}}
{{- end -}}