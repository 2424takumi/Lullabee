# Firebase GitHub Actions 自動デプロイ設定手順

## 現在の状況
GitHub Actionsのワークフローは既に設定済みです：
- `firebase-deploy.yml`: mainブランチへのプッシュ時に本番環境へ自動デプロイ
- `firebase-preview.yml`: プルリクエスト時にプレビュー環境へ自動デプロイ

## 必要な設定：Firebase Service Account

### 1. Firebase Service Accountキーの作成

1. [Firebase Console](https://console.firebase.google.com/project/lullabee-mdb94s/settings/serviceaccounts/adminsdk)にアクセス
2. 「サービスアカウント」タブを選択
3. 「新しい秘密鍵を生成」をクリック
4. JSONファイルがダウンロードされます（重要：このファイルは機密情報です）

### 2. GitHubリポジトリにシークレットを追加

1. GitHubリポジトリ（https://github.com/2424takumi/Lullabee）にアクセス
2. Settings → Secrets and variables → Actions
3. 「New repository secret」をクリック
4. 以下の情報を入力：
   - Name: `FIREBASE_SERVICE_ACCOUNT`
   - Value: ダウンロードしたJSONファイルの内容をそのまま貼り付け
5. 「Add secret」をクリック

### 3. 動作確認

設定が完了したら、以下の方法で動作を確認できます：

#### 本番デプロイのテスト
```bash
# 何か小さな変更を加えてコミット
git add .
git commit -m "Test Firebase auto-deploy"
git push origin main
```

GitHubのActionsタブで進行状況を確認できます。
成功すると https://lullabee-mdb94s.web.app に自動的にデプロイされます。

#### プレビューデプロイのテスト
```bash
# 新しいブランチを作成
git checkout -b test-preview
# 何か変更を加える
git add .
git commit -m "Test preview deploy"
git push origin test-preview
```

GitHubでプルリクエストを作成すると、自動的にプレビュー環境がデプロイされ、
PRにプレビューURLがコメントされます。

## トラブルシューティング

### エラー: "Error: Failed to authenticate"
- Service Accountのシークレットが正しく設定されているか確認
- JSONの内容が完全にコピーされているか確認（改行も含めて）

### エラー: "flutter: command not found"
- ワークフローファイルのFlutterバージョンが正しいか確認
- 現在は3.16.0が設定されていますが、必要に応じて更新してください

## セキュリティに関する注意事項

- Service AccountのJSONファイルは絶対にGitにコミットしないでください
- ダウンロードしたJSONファイルは安全な場所に保管するか、設定後は削除してください
- GitHubのシークレットは暗号化されて保存されます

## 設定完了後の流れ

1. **開発時**: featureブランチで開発
2. **レビュー時**: PRを作成 → 自動的にプレビュー環境にデプロイ
3. **リリース時**: PRをmainにマージ → 自動的に本番環境にデプロイ

これにより、手動でのデプロイ作業が不要になり、開発効率が大幅に向上します。