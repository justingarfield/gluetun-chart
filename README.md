# gluetun

Deploys gluetun related resources to be used as a sidecar and/or proxy to allow traffic to flow through a VPN Service Provider (e.g. Private Internet Access).

![Version: 0.0.1](https://img.shields.io/badge/Version-0.0.1-informational?style=flat-square) ![AppVersion: 2022.01.27](https://img.shields.io/badge/AppVersion-2022.01.27-informational?style=flat-square) 

## Source Code

* <https://github.com/justingarfield/gluetun-chart>
* <https://hub.docker.com/r/qmcgaw/gluetun>
* <https://github.com/qdm12/gluetun>



## Installation

```shell
helm repo add justingarfield https://justingarfield.github.io/emulatorjs-chart/
helm repo update
```
## Uninstallation

To uninstall/delete the `my-release` deployment (NOTE: `--purge` is default behaviour in Helm 3+ and will error):

```shell
helm delete --purge my-release
```

## Configuration

The following table lists the configurable parameters of the emulatorjs chart and the default values.

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| dns.blockAds | string | `"on"` | Block ads hostnames and IPs with Unbound |
| dns.blockMalicious | string | `"on"` | Block malicious hostnames and IPs with Unbound |
| dns.blockSurveillance | string | `"on"` | Block surveillance hostnames and IPs with Unbound |
| dns.dnsKeepNameServer | string | `"off"` | Keep the nameservers in /etc/resolv.conf untouched, but disabled DNS blocking features |
| dns.dnsPlaintextAddress | string | `"1.1.1.1"` | IP address to use as DNS resolver if DOT is off |
| dns.dnsUpdatePeriod | string | `"24h"` | Period to update block lists and cryptographic files and restart Unbound. Set to 0 to deactivate updates |
| dns.dot | string | `"on"` | Activate DNS over TLS with Unbound |
| dns.dotCaching | string | `"on"` | Unbound caching |
| dns.dotIPv6 | string | `"off"` | DNS IPv6 resolution |
| dns.dotPrivateAddress | string | `nil` | Comma separated list of CIDRs or single IP addresses Unbound won't resolve to. Note that the default setting prevents DNS rebinding |
| dns.dotProviders | string | `"cloudflare"` | Comma delimited list of DNS over TLS providers |
| dns.dotValidationLogLevel | int | `0` | Unbound validation log level |
| dns.dotVerbosity | int | `1` | Unbound verbosity level |
| dns.dotVerbosityDetails | int | `0` | Unbound details verbosity level |
| dns.unblock | string | `nil` | Comma separated list of domain names to leave unblocked with Unbound |
| firewall.debug | string | `"off"` | Prints every firewall related command. You should use it for debugging purposes only. |
| firewall.inputPorts | string | `nil` | Comma separated list of ports to allow through the default interface. This seems needed for Kubernetes sidecars. |
| firewall.outboundSubnets | string | `nil` | Comma separated subnets that Gluetun and the containers sharing its network stack are allowed to access. This involves firewall and routing modifications. |
| firewall.status | string | `"on"` | Turn on or off the container built-in firewall. You should use it for debugging purposes only. |
| firewall.vpnInputPorts | string | `nil` | Comma separated list of ports to allow from the VPN server side (useful for vyprvpn port forwarding) |
| health.addressToPing | string | `"github.com"` | Hostname or IP address to ping on every internal health check |
| health.vpnDurationAddition | string | `"5s"` | Additional duration to add to the wait time for each consecutive failure of the VPN |
| health.vpnDurationInitial | string | `"6s"` | Initial duration to wait for the VPN to be ready before restarting it |
| httpControlServer.log | string | `"on"` | Enable logging of HTTP requests |
| httpControlServer.port | int | `8000` | Listening address for the HTTP control server |
| httpProxy.log | string | `"off"` | Logs every tunnel requests |
| httpProxy.password | string | `nil` | Password to use to connect to the HTTP proxy |
| httpProxy.port | int | `8888` | Internal port number for the HTTP proxy to listen on |
| httpProxy.status | string | `"off"` | Enable the internal HTTP proxy |
| httpProxy.stealth | string | `"off"` | Stealth mode means HTTP proxy headers are not added to your requests |
| httpProxy.user | string | `nil` | Username to use to connect to the HTTP proxy |
| image.pullPolicy | string | `"IfNotPresent"` | the pull policy |
| image.repository | string | `"qmcgaw/gluetun"` | the repostory to pull the image from |
| image.tag | string | `"latest"` | the docker tag, if left empty it will get it from the chart's appVersion |
| maxSurge | int | `1` | The maximum number of Pods that can be created over the desired number of `ReplicaSet` during updating. |
| maxUnavailable | int | `1` | The maximum number of Pods that can be unavailable during updating |
| openVpn.auth | string | `nil` | Specify a custom auth algorithm to use |
| openVpn.cipher | string | `nil` | Specify a custom cipher to use. It will also set ncp-disable if using AES GCM for PIA |
| openVpn.endpointIp | string | `nil` | Specify a target VPN IP address to use |
| openVpn.flags | string | `nil` | Space delimited openvpn flags to pass to openvpn |
| openVpn.interface | string | `"tun0"` | Specify a custom network interface name to use |
| openVpn.ipv6 | string | `"off"` | Enable tunneling of IPv6 (only for Mullvad) |
| openVpn.mssfix | int | `0` | Set the MSS fix parameter. Set to 0 to use the defaults. |
| openVpn.protocol | string | `"udp"` | Network protocol to use, only valid for OpenVPN |
| openVpn.root | string | `"no"` | Run OpenVPN as root |
| openVpn.verbosity | int | `1` | Openvpn verbosity level |
| openVpn.version | float | `2.5` | Set the OpenVPN version to run |
| pgid | int | `1000` | Group ID to run as non root and for ownership of files written |
| publicIpFile | string | `"/tmp/gluetun/ip"` | Filepath to store the public IP address assigned. This will be removed in the v4 program, instead you might want to use the HTTP control server |
| publicIpPeriod | string | `"12h"` | Period to check for public IP address. Set to 0 to disable. |
| puid | int | `1000` | User ID to run as non root and for ownership of files written |
| replicaCount | int | `1` | The number of replicas |
| shadowSocks.address | string | `":8388"` | Internal listening address for Shadowsocks |
| shadowSocks.cipher | string | `"chacha20-ietf-poly1305"` | AEAD Cipher to use for Shadowsocks |
| shadowSocks.log | string | `"off"` | Enable logging |
| shadowSocks.password | string | `nil` | Password to use to connect to Shadowsocks |
| shadowSocks.status | string | `"off"` | Enable the internal Shadowsocks proxy |
| strategyType | string | `"RollingUpdate"` | The `spec.strategyTpye` for updates |
| tz | string | `"Europe/London"` | Specify a timezone to use to have correct log times |
| updaterPeriod | int | `0` | Period to update the VPN servers data in memory and to /gluetun/servers.json. Set to 0 to disable. This does a burst of DNS over TLS requests, which may be blocked if you set BLOCK_MALICIOUS=on for example. |
| updaterVpnServiceProviders | string | `nil` | List of providers to update servers data for, when the updater triggers periodically. If left empty, it defaults to the current VPN provider used at start. |
| versionInformation | string | `"on"` | Logs a message indicating if a newer version is available once the VPN is connected |
| vpn.password | string | `""` |  |
| vpn.regions | string | `"US East,CA Montreal,US Atlanta"` |  |
| vpn.serviceProvider | string | `"private internet access"` |  |
| vpn.username | string | `""` |  |

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Justin Garfield | helm-charts@jgarfield.com |  |

## Credits

This chart was heavily influenced by the pihole chart available @ https://github.com/MoJo2600/pihole-kubernetes/tree/master/charts/pihole. I really like how they've handled support for the multiple ways of handling networking and storage aspects of their template, and decided to follow suit. Thanks to that team for all the hard-work that helped breathe life into this one!
