# Dog Service API

犬にまつわるサンプルAPIサービス。

## セットアップ

```bash
# Docker で起動
docker compose up

# http://localhost:3005 でアクセス可能
```

## エンドポイント

すべてのレスポンスはJSON形式。データはコントローラー内の固定データを返却（DB不使用）。

### 犬種 (Breeds)

| メソッド | パス | 説明 |
|---------|------|------|
| GET | `/api/breeds` | 犬種一覧を取得 |
| GET | `/api/breeds/:id` | 犬種の詳細を取得 |

### 犬 (Dogs)

| メソッド | パス | 説明 |
|---------|------|------|
| GET | `/api/dogs` | 登録犬一覧を取得 |
| GET | `/api/dogs/:id` | 犬の詳細を取得 |

### 散歩記録 (Walking Logs)

| メソッド | パス | 説明 |
|---------|------|------|
| GET | `/api/walking_logs` | 散歩記録一覧を取得 |
| GET | `/api/walking_logs/:id` | 散歩記録の詳細を取得 |

## レスポンス例

```bash
curl http://localhost:3005/api/breeds
```

```json
[
  {
    "id": 1,
    "name": "柴犬",
    "origin_country": "日本",
    "size_category": "medium",
    "description": "忠実で勇敢な日本原産の犬種。くるんと巻いた尻尾が特徴。"
  }
]
```
