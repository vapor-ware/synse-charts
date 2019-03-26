{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- printf .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}

# Output the common labels used.
{{- define "labels" -}}
{{ template "selector" . }}
heritage: {{ .Release.Service | quote }}
{{- end -}}

{{- define "annotations" -}}
chart: "{{ .Chart.Name }}"
{{- end -}}

# Selector to pick a specific release/app.
{{- define "selector" -}}
app: {{ include "name" . | quote }}
release: {{ .Release.Name | quote }}
{{- if .Values.component }}
component: {{ .Values.component }}
{{- end -}}
{{- end -}}
