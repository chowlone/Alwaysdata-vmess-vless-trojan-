
# Alwaysdata 搭建 vmess / vless / trojan 节点

无需翻墙就可注册，但是有些IP可能要求验证信用卡，遇到这种情况就换节点，

1.建议使用原生IP注册账号

2.建议使用无痕模式

3.建议使用临时邮箱，避免封号！

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

**Command**：```./vmess.sh```或```./vless.sh```或```./torjan.sh```

**Environment**：```id=你的UUID```


## 客户端配置

vmess / vless

```
地址：appname.alwaysdata.net
端口：443
默认UUID：4fd46ad4-3272-4f3c-af05-241a14428f69
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
        "4fd46ad4-3272-4f3c-af05-241a14428f69"
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

Fork自项目：https://github.com/Misaka-blog/AX
