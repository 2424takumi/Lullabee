# Vercel代替案：事前ビルド方式

Vercel上でFlutterをインストールするのが難しい場合の代替案です。

## 方法1: ローカルでビルドしてデプロイ

### 手順

1. ローカルでWebビルドを実行
```bash
flutter build web --release --web-renderer html
```

2. Vercel CLIでデプロイ
```bash
cd build/web
vercel --prod
```

## 方法2: GitHub Actionsでビルド → Vercelにデプロイ

`.github/workflows/deploy.yml`を作成：

```yaml
name: Deploy to Vercel

on:
  push:
    branches: [main]

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      
      - uses: subosito/flutter-action@v2
        with:
          flutter-version: '3.16.0'
          
      - run: flutter pub get
      - run: flutter build web --release --web-renderer html
      
      - uses: amondnet/vercel-action@v20
        with:
          vercel-token: ${{ secrets.VERCEL_TOKEN }}
          vercel-org-id: ${{ secrets.VERCEL_ORG_ID }}
          vercel-project-id: ${{ secrets.VERCEL_PROJECT_ID }}
          vercel-args: '--prod'
          working-directory: ./build/web
```

## 方法3: Netlifyを使用

Netlifyの方がFlutterプロジェクトとの相性が良い場合があります。

1. [Netlify](https://www.netlify.com)でアカウント作成
2. GitHubリポジトリと連携
3. ビルド設定：
   - Build command: `flutter build web --release`
   - Publish directory: `build/web`

## 方法4: Firebase Hostingを使用

既にFirebaseを使用しているので、最も統合しやすい選択肢：

```bash
# Firebase CLIをインストール
npm install -g firebase-tools

# Firebase Hostingを初期化
firebase init hosting

# ビルドとデプロイ
flutter build web --release
firebase deploy --only hosting
```

### Preview Channelsで複数環境管理

```bash
# プレビューチャンネルにデプロイ
firebase hosting:channel:deploy preview-pr-123 --expires 7d
```

## 推奨案

現在の状況を考えると、**Firebase Hosting**が最適です：
- 既存のFirebaseプロジェクトと統合済み
- Preview Channelsで複数のプレビュー環境を管理可能
- GitHub Actionsとの連携も簡単
- 完全無料