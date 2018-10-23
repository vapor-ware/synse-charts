{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{/* - define "modbus.name" - */}}
{{- define "name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{/* - define "modbus.fullname" - */}}
{{- define "fullname" -}}
{{/* - if .Values.fullnameOverride - */}}
{{/* - .Values.fullnameOverride | trunc 63 | trimSuffix "-" - */}}
{{/* - else - */}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{/* - if contains $name .Release.Name - */}}
{{/* - .Release.Name | trunc 63 | trimSuffix "-" - */}}
{{/* - else - */}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{/* - end - /*}}
{{/* - end - */}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{/* - define "modbus.chart" - */}}
{{/* - printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" - */}}
{{/* - end - */}}

{{/* Below copied from autofan, whatever it does. Also - is the pound sign a comment here??? */}}
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
