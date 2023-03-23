# docker-wordpresのテンプレート設定

M1チップ搭載のMac環境の場合追記
```yml:docker-compose.yml
platform: linux/x86_64
```

# docker compose up -dする際にUSER変数に値を渡す為に以下の通りにする。
```sh
UID_GID="$(id -u):$(id -g)" docker-compose up
```