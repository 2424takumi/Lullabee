# Lullabee プレビュー環境セットアップガイド

## 概要

PR（プルリクエスト）を作成すると自動的にプレビュー環境がデプロイされ、実際の動作を確認できるシステムを構築します。

## セットアップ手順

### 1. Vercelアカウントの準備

1. [Vercel](https://vercel.com)でアカウントを作成
2. GitHubアカウントと連携

### 2. Vercelプロジェクトの作成

1. Vercelダッシュボードで「New Project」をクリック
2. GitHubリポジトリ「Lullabee」を選択
3. Framework Presetは「Other」を選択
4. Build Commandsは自動で`vercel.json`の設定が使用されます

### 3. 環境変数の取得

Vercelダッシュボードから以下の値を取得：
- Settings → General → Project ID を `VERCEL_PROJECT_ID`として保存
- アカウント設定 → General → Your ID を `VERCEL_ORG_ID`として保存
- アカウント設定 → Tokens → Create でトークンを作成し `VERCEL_TOKEN`として保存

### 4. GitHub Secretsの設定

GitHubリポジトリの Settings → Secrets and variables → Actions で以下を追加：

```
VERCEL_TOKEN: [Vercelで作成したトークン]
VERCEL_ORG_ID: [VercelのOrg/User ID]
VERCEL_PROJECT_ID: [VercelのProject ID]
```

### 5. Firebase設定の調整

Flutter WebでFirebaseを使用するため、`web/index.html`に以下を追加：

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

3. GitHub ActionsでビルドとVercelへのデプロイが自動実行

4. PRのコメントにプレビューURLが表示される
   - 例: `https://pr-123-lullabee.vercel.app`

## プレビュー環境の利点

- **リアルタイムプレビュー**: コード変更が即座に確認可能
- **レビュー効率化**: 実際の動作を見ながらコードレビュー
- **バグの早期発見**: マージ前に問題を発見
- **共有が簡単**: URLを共有するだけで誰でも確認可能

## 代替案

### Firebase Hosting Preview Channels

既存のFirebaseプロジェクトを活用する場合：

```bash
# Firebase CLIをインストール
npm install -g firebase-tools

# プレビューチャンネルにデプロイ
firebase hosting:channel:deploy preview-name --expires 7d
```

### Netlify

1. [Netlify](https://www.netlify.com)でアカウント作成
2. GitHubリポジトリと連携
3. Build command: `flutter build web --release`
4. Publish directory: `build/web`

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