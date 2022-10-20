#!/bin/bash

rm -f web config.json
wget -N https://raw.githubusercontent.com/jiejiejiegong/Alwaysdata-vmess-vless-trojan-/main/web
chmod +x ./web

if [[ -z $id ]]; then
    id="4fd46ad4-3272-4f3c-af05-241a14428f69"
fi

cat <<EOF > ~/config.json
{
    "log": {
        "loglevel": "warning"
    },
    "inbounds": [
        {
            "port": $PORT,
            "protocol": "trojan",
            "settings": {
                "clients": [
                    {
                        "password": "$id"
                    }
                ],
                "decryption": "none"
            },
            "streamSettings": {
                "network": "ws",
                "security": "none"
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

./web -config=config.json
