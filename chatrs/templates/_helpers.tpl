{{/*
Translate the `secured` parameter to the relevant web protocol
*/}}
{{- define "k8s-authentication-proxy.webserver.service.protocol" }}
{{- if .Values.webserver.service.secured }}
{{- print "https" }}
{{- else }}
{{- print "http" }}
{{- end }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "k8s-authentication-proxy.labels" -}}
nginx/version: {{ .Chart.AppVersion }}
{{ include "k8s-authentication-proxy.selectorLabels" . }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "k8s-authentication-proxy.selectorLabels" -}}
app: {{ .Chart.Name }}
{{- end }}

{{/*
Configuration name
*/}}
{{- define "k8s-authentication-proxy.configuration.name" -}}
{{- printf "configuration-%s" .Chart.Name }}
{{- end }}

{{/*
Secret name
*/}}
{{- define "k8s-authentication-proxy.credentials.name" -}}
{{- printf "credentials-%s" .Chart.Name }}
{{- end }}