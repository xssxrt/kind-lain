{{- define "app.name" -}}
"starlette-demo"
{{- end -}}

{{- define "app.replicas" -}}
1
{{- end -}}

{{- define "app.port" -}}
8000
{{- end -}}

{{- define "app.image.name" -}}
ghcr.io/xssxrt/kind-lain/demo-starlette
{{- end -}}

{{- define "app.image.tag" -}}
latest
{{- end -}}
