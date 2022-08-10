{{- define "krateo.nodetlsreject" -}}
{{- if .Values.ignore_self_signed_ssl -}}
  NODE_TLS_REJECT_UNAUTHORIZED: '0'
{{- end -}}
{{- end -}}
