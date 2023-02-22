#!/bin/sh

#Config v2ray

rm -rf /etc/xray/config.json
cat << EOF > /etc/xray/config.json
{
  "log": {
        "loglevel": "debug"
  },
  "inbounds": [
    {
      "port": 80,
      "protocol": "vmess",
      "settings": {
        "decryption": "none",
        "clients": [
          {
            "id": "$UUID",
            "alterId": 0,
            "security": "auto",
            "level": 0
          }
        ]
      },
      "streamSettings": {
        "network": "ws",
        "wsSettings": {
					"path": "/",
					"headers": {
						"Host": "dl.ops.kgvn.garenanow.com"
					}
				}
      }
    }
  ],
  "outbounds": [
    {
      "protocol": "freedom"
    }
  ]
}
EOF

#run v2ray server

xray -c /etc/xray/config.json