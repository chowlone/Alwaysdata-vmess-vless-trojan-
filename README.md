# Alwaysdata-vmess-vless-trojan-
Alwaysdata 搭建 vmess / vless / trojan 节点


## 建议使用临时邮箱，避免封号！

## 搭建步骤

1. 连接**SSH**，执行以下命令

### vmess

```shell
wget -N https://raw.githubusercontent.com/bhqz/Alwaysdata-vmess-vless-trojan-/main/vmess.sh && chmod +x ./vmess.sh
```

### vless

```shell
wget -N https://raw.githubusercontent.com/bhqz/Alwaysdata-vmess-vless-trojan-/main/vless.sh && chmod +x ./vless.sh
```

### trojan

```shell
wget -N https://raw.githubusercontent.com/bhqz/Alwaysdata-vmess-vless-trojan-/main/trojan.sh && chmod +x ./trojan.sh
```

2. 修改网站空间配置

## 客户端配置

vmess / vless

```
地址：appname.alwaysdata.net
端口：443
默认UUID：1eb6e917-774b-4a84-aff6-b058577c60a5
vmess额外id：0
加密：none
传输协议：ws
伪装类型：none
伪装域名：appname.fly.dev
路径：/
底层传输安全：tls
跳过证书验证：false
```

Trojan-go

```bash
{
    "run_type": "client",
    "local_addr": "127.0.0.1",
    "local_port": 1080,
    "remote_addr": "appname.alwaysdata.net",
    "remote_port": 443,
    "password": [
        "1eb6e917-774b-4a84-aff6-b058577c60a5"
    ],
    "websocket": {
        "enabled": true,
        "path": "/",
        "host": "appname.alwaysdata.net"
    }
}
```

## 感谢列表

原作者项目：https://github.com/wgp-2020/AX
