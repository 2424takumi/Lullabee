# Firebase Hosting プレビュー環境セットアップガイド

## 概要

PRごとに自動でFirebase Hostingのプレビュー環境を作成するシステムです。

## セットアップ手順

### 1. Firebase CLIのインストール（ローカル環境）

```bash
npm install -g firebase-tools
```

### 2. Firebaseにログイン

```bash
firebase login
```

### 3. サービスアカウントの作成

1. [Firebase Console](https://console.firebase.google.com)を開く
2. プロジェクト「lullabee-mdb94s」を選択
3. ⚙️ → プロジェクトの設定 → サービスアカウント
4. 「新しい秘密鍵を生成」をクリック
5. JSONファイルがダウンロードされる

### 4. GitHub Secretsの設定

1. GitHubリポジトリの Settings → Secrets and variables → Actions
2. 「New repository secret」をクリック
3. 以下を追加：

**FIREBASE_SERVICE_ACCOUNT**
- Name: `FIREBASE_SERVICE_ACCOUNT`
- Secret: ダウンロードしたJSONファイルの**中身全体**をコピペ

### 5. 初回デプロイ（ローカルから）

```bash
# プロジェクトディレクトリで
cd /Users/a2424/claude-dev/Lullabee

# Webビルド
flutter build web --release --web-renderer html

# Firebase Hostingにデプロイ
firebase deploy --only hosting
```

## 使い方

### PRプレビュー

1. 新しいブランチを作成
```bash
git checkout -b feature/new-feature
```

2. 変更をコミット＆プッシュ
```bash
git add .
git commit -m "feat: 新機能追加"
git push origin feature/new-feature
```

3. GitHubでPRを作成

4. 自動でプレビュー環境がデプロイされる
   - URL例: `https://lullabee-mdb94s--pr-123-xxxxxxx.web.app`

5. PRにコメントでURLが通知される

### 本番デプロイ

mainブランチにマージされると自動で本番環境にデプロイ：
- URL: `https://lullabee-mdb94s.web.app`

## プレビュー環境の特徴

- **自動作成**: PR作成時に自動でプレビュー環境を構築
- **自動更新**: PRに新しいコミットをプッシュすると自動更新
- **自動削除**: 7日後に自動削除（期限は変更可能）
- **独立環境**: 各PRごとに独立したURL

## ローカルでのテスト

```bash
# エミュレータで確認
firebase emulators:start

# ブラウザで http://localhost:5000 を開く
```

## よくある質問

### Q: プレビューURLが表示されない
A: GitHub ActionsのログでFirebaseデプロイが成功しているか確認

### Q: ビルドエラーが発生する
A: 
- Flutter Webが有効か確認: `flutter config --enable-web`
- 依存関係を更新: `flutter pub get`

### Q: Firebase設定が見つからない
A: firebase.jsonと.firebasercが存在するか確認

## トラブルシューティング

1. **権限エラー**
   - サービスアカウントに「Firebase Hosting Admin」権限があるか確認

2. **ビルドエラー**
   ```bash
   flutter clean
   flutter pub get
   flutter build web --release
   ```

3. **デプロイエラー**
   - Firebase プロジェクトIDが正しいか確認
   - サービスアカウントのJSONが正しくGitHub Secretsに設定されているか確認

## 参考リンク

- [Firebase Hosting Documentation](https://firebase.google.com/docs/hosting)
- [GitHub Actions for Firebase](https://github.com/FirebaseExtended/action-hosting-deploy)