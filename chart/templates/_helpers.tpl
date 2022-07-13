{{- define "krateo.mongodb" -}}
{{- if .Values.mongodb.uri -}}
  {{ .Values.mongodb.uri }}
{{- else -}}
  {{- printf "mongodb://krateo:%s@krateo-mongodb.%s.svc/krateo?retryWrites=true" .Values.mongodb.password .Release.Namespace -}}
{{- end -}}
{{- end -}}



{{- define "krateo.pipeline" -}}
{{- if .Values.services.hosts.pipeline -}}
  PIPELINE_URI: {{ .Values.services.hosts.pipeline | quote }}
{{- end -}}
{{- end -}}

{{- define "krateo.kubernetes" -}}
{{- if .Values.services.hosts.kubernetes -}}
  KUBERNETES_URI: {{ .Values.services.hosts.kubernetes | quote }}
{{- end -}}
{{- end -}}

{{- define "krateo.keptn" -}}
{{- if .Values.services.hosts.keptn -}}
  KEPTN_URI: {{ .Values.services.hosts.keptn | quote }}
{{- end -}}
{{- end -}}

{{- define "krateo.codequality" -}}
{{- if .Values.services.hosts.codequality -}}
  CODEQUALITY_URI: {{ .Values.services.hosts.codequality | quote }}
{{- end -}}
{{- end -}}

{{- define "krateo.capi" -}}
{{- if .Values.services.hosts.codequality -}}
  CAPI_URI: {{ .Values.services.hosts.capi | quote }}
{{- end -}}
{{- end -}}

{{- define "krateo.nodetlsreject" -}}
{{- if .Values.services.ignore_self_signed_ssl -}}
  NODE_TLS_REJECT_UNAUTHORIZED: '0'
{{- end -}}
{{- end -}}