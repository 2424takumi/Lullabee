# Lullabee プレビュー環境セットアップガイド

## 概要

PR（プルリクエスト）を作成すると自動的にFirebase Hostingのプレビューチャンネルにデプロイされ、実際の動作を確認できるシステムを構築しています。

## 現在の設定（Firebase Hosting）

このプロジェクトでは、Firebase Hostingのプレビューチャンネル機能を使用してプレビュー環境を提供しています。

### 仕組み

1. PRが作成・更新されると、GitHub Actionsが自動的に起動
2. Flutter Webアプリケーションをビルド
3. Firebase Hostingのプレビューチャンネルにデプロイ
4. PR内にプレビューURLがコメントされる

### 必要な設定

GitHubリポジトリの Settings → Secrets and variables → Actions で以下が設定されている必要があります：

```
FIREBASE_SERVICE_ACCOUNT: Firebase サービスアカウントのJSON
```

### Firebase設定

プロジェクトID: `lullabee-mdb94s`

Flutter WebでFirebaseを使用するため、`web/index.html`に以下のFirebase SDKが含まれています：

```html
<script src="https://www.gstatic.com/firebasejs/10.7.0/firebase-app-compat.js"></script>
<script src="https://www.gstatic.com/firebasejs/10.7.0/firebase-auth-compat.js"></script>
<script src="https://www.gstatic.com/firebasejs/10.7.0/firebase-firestore-compat.js"></script>
<script src="https://www.gstatic.com/firebasejs/10.7.0/firebase-storage-compat.js"></script>
```

## 使い方

1. 新しいブランチを作成して変更をプッシュ
```bash
git checkout -b feature/new-feature
git add .
git commit -m "feat: 新機能追加"
git push origin feature/new-feature
```

2. GitHubでPRを作成

3. GitHub ActionsでビルドとFirebase Hostingへのデプロイが自動実行

4. PRのコメントにプレビューURLが表示される
   - Firebase BotがプレビューURLをコメントします
   - URLは自動生成され、7日間有効です

## プレビュー環境の利点

- **リアルタイムプレビュー**: コード変更が即座に確認可能
- **レビュー効率化**: 実際の動作を見ながらコードレビュー
- **バグの早期発見**: マージ前に問題を発見
- **共有が簡単**: URLを共有するだけで誰でも確認可能

## ローカルでのプレビューチャンネルデプロイ

開発者が手動でプレビューチャンネルにデプロイすることも可能です：

```bash
# Firebase CLIをインストール（初回のみ）
npm install -g firebase-tools

# Firebaseにログイン（初回のみ）
firebase login

# プレビューチャンネルにデプロイ
firebase hosting:channel:deploy preview-name --expires 7d
```

## GitHub Actions設定の詳細

プレビューデプロイは `.github/workflows/firebase-preview.yml` で管理されています：

- **トリガー**: PR作成・更新時
- **ビルド**: Flutter 3.16.0でWebビルド
- **デプロイ先**: Firebase Hosting プレビューチャンネル
- **有効期限**: 7日間
- **プロジェクトID**: lullabee-mdb94s

## トラブルシューティング

### ビルドエラーが発生する場合

1. Flutter Webが有効か確認
```bash
flutter config --enable-web
```

2. 依存関係をクリーンアップ
```bash
flutter clean
flutter pub get
```

### プレビューが表示されない場合

- ブラウザのキャッシュをクリア
- Vercelのデプロイログを確認
- Firebase設定が正しいか確認

## 注意事項

- プレビュー環境は開発用です。本番データは使用しないでください
- 音声録音機能などの一部機能はWeb版では制限があります
- モバイル向けUIのため、PC表示では見た目が異なる場合があります