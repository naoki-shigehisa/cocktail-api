# README
カクテルアプリのAPI

## setup
```
docker compose build
docker compose run --rm api bundle exec rake db:create
docker compose run --rm api bundle exec rake ridgepole:apply
docker compose up
```

## DBスキーマ
- スキーマ管理には ridgepole を採用しています
- スキーマ変更は以下のコマンドで実行してください

```
docker compose run --rm api bundle exec rake ridgepole:apply
```
