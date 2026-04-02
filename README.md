# Agent Core MCP Sample

Rails REST API を AWS Bedrock AgentCore Gateway 経由で MCP サーバー化するサンプルプロジェクト。

## アーキテクチャ

```
AI エージェント
  ↓ MCP プロトコル
AgentCore Gateway (AWS マネージド)
  ↓ REST API
Rails API (EC2 + CloudFront)
```

## MCP ツール一覧

Gateway URL: `https://dogservicegateway-mm34gpiev7.gateway.bedrock-agentcore.ap-northeast-1.amazonaws.com/mcp`

| MCP ツール名 | メソッド | パス | 説明 |
|-------------|---------|------|------|
| `DogServiceAPI___listBreeds` | GET | `/api/breeds` | 犬種一覧を取得 |
| `DogServiceAPI___getBreed` | GET | `/api/breeds/:id` | 犬種の詳細を取得 |
| `DogServiceAPI___listDogs` | GET | `/api/dogs` | 登録犬一覧を取得 |
| `DogServiceAPI___getDog` | GET | `/api/dogs/:id` | 犬の詳細を取得 |
| `DogServiceAPI___listWalkingLogs` | GET | `/api/walking_logs` | 散歩記録一覧を取得 |
| `DogServiceAPI___getWalkingLog` | GET | `/api/walking_logs/:id` | 散歩記録の詳細を取得 |

## 使用 AWS サービス

| サービス | 用途 |
|---------|------|
| EC2 (t3.micro) | Rails API の実行 |
| ECR | Docker イメージの保管 |
| CloudFront | HTTPS 化 |
| S3 | OpenAPI spec の保管 |
| Bedrock AgentCore Gateway | REST → MCP 変換 |
| Cognito | Gateway のインバウンド認証 |
| IAM | ユーザー・ロール管理 |

## ドキュメント

- [AgentCore Gateway 構築マニュアル](docs/agentcore-gateway-manual.md)
- [Backend API 仕様](backend/README.md)
- [OpenAPI Spec](backend/openapi.yaml)

### TODO
- ~~サンプルのエンドポイント追加~~
- サンプルのfirebase認証まで追加 jwt token
