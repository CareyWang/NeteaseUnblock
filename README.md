# NeteaseUnblock

基于 [nondanee/UnblockNeteaseMusic](https://github.com/nondanee/UnblockNeteaseMusic) 与 V2Ray，使用 docker-compose 部署服务解锁网易云音乐客户端变灰歌曲。

# 特性

- 使用 V2Ray 作为前置代理，实现服务加密，默认使用 SS 中转流量。
- docker-compose 一键启动。

# 运行

```shell
git clone https://github.com/CareyWang/NeteaseUnblock.git NeteaseUnblock && cd NeteaseUnblock

cp .env.example .env
docker-compose up -d
```

# 使用

必须下载并安装信任证书，证书来源：[nondanee/UnblockNeteaseMusic](https://raw.githubusercontent.com/nondanee/UnblockNeteaseMusic/master/ca.crt) （IOS 使用 Safari 打开）。

.env 中目前可修改端口与音源，若不了解原项目，不建议修改默认音源。各类客户端设置，请参照原作者 [issue](https://github.com/nondanee/UnblockNeteaseMusic/issues) 前人教程自行研究。

通过修改 v2ray/config.json 为对应配置文件，可使用 socks5/shadowsocks/vmess 作为前置代理。
- socks 端口 `58080`，用户名: `netease`，密码: `T5ckndbLSXHQ`。
- shadowsocks 端口 `58080`，加密方式 `chacha20-ietf-poly1305`，密码 `T5ckndbLSXHQ`。
- vmess 端口 `58080`，uuid: `69f53690-db19-4fd3-c618-7c82cc47ba0d`，alertId: `1`， ws-path: `/163`。

# Tips

海外部署不建议使用与大陆通信线路较差的服务器，若需要部署于海外服务器，.env 中音源 MUSIC_SOURCE 请自行修改为 MUSIC_SOURCE_OVERSEAS 一致。
