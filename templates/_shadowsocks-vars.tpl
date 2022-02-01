{{ define "gluetun.shadowsocks" }}
{{ if eq .Values.shadowSocks.status "on" }}
            - name: SHADOWSOCKS
              value: "on"
            - name: SHADOWSOCKS_LOG
              value: {{ .Values.shadowSocks.log | quote }}
            - name: SHADOWSOCKS_ADDRESS
              value: {{ .Values.shadowSocks.address | quote }}
            - name: SHADOWSOCKS_PASSWORD
              value: {{ .Values.shadowSocks.password | quote }}
            - name: SHADOWSOCKS_CIPHER
              value: {{ .Values.shadowSocks.cipher | quote }}
{{ end }}
{{ end }}
