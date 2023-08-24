apiVersion: v1
kind: ConfigMap
metadata:
  name: {{ include "dashy.fullname" . }}
  namespace: {{ .Release.Namespace }}
  labels:
    {{- include "dashy.labels" . | nindent 4 }}
data:
  conf.yml: |
    {{- .Values.dashyConfig | toYaml | nindent 4 }}
