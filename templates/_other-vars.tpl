{{ define "gluetun.other" }}
            - name: TZ
              value: {{ .Values.tz | quote }}
            - name: PUID
              value: {{ .Values.puid | quote }}
            - name: PGID
              value: {{ .Values.pgid | quote }}
            - name: PUBLICIP_PERIOD
              value: {{ .Values.publicIpPeriod | quote }}
            - name: PUBLICIP_FILE
              value: {{ .Values.publicIpFile | quote }}
            - name: VERSION_INFORMATION
              value: {{ .Values.versionInformation | quote }}
            - name: UPDATER_PERIOD
              value: {{ .Values.updaterPeriod | quote }}
            - name: UPDATER_VPN_SERVICE_PROVIDERS
              value: {{ .Values.updaterVpnServiceProviders | quote }}
{{ end }}
