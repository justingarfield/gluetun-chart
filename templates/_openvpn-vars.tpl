{{ define "gluetun.openvpn" }}
            - name: PROTOCOL
              value: {{ .Values.openVpn.protocol | quote }}
            - name: VERSION
              value: {{ .Values.openVpn.version | quote }}
            - name: VERBOSITY
              value: {{ .Values.openVpn.verbosity | quote }}
            - name: FLAGS
              value: {{ .Values.openVpn.flags | quote }}
            - name: ROOT
              value: {{ .Values.openVpn.root | quote }}
            - name: ENDPOINTIP
              value: {{ .Values.openVpn.endpointIp | quote }}
            - name: CIPHER
              value: {{ .Values.openVpn.cipher | quote }}
            - name: AUTH
              value: {{ .Values.openVpn.auth | quote }}
            - name: IPV6
              value: {{ .Values.openVpn.ipv6 | quote }}
            - name: MSSFIX
              value: {{ .Values.openVpn.mssfix | quote }}
            - name: INTERFACE
              value: {{ .Values.openVpn.interface | quote }}
{{ end }}
