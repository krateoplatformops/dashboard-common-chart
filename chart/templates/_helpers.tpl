{{- define "krateo.mongodb" -}}
{{- if .Values.mongodb.uri -}}
  {{ .Values.mongodb.uri }}
{{- else -}}
  {{- printf "mongodb://krateo:%s@krateo-mongodb.krateo-system.svc/krateo?retryWrites=true" .Values.mongodb.password -}}
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