# README
カクテルアプリのAPI

## DBスキーマ
- スキーマ管理には ridgepole を採用しています
- スキーマ変更は以下のコマンドで実行してください

```
docker compose run --rm api bundle exec rake ridgepole:apply
```
