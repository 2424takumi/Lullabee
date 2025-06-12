# Lullabee 開発ガイドライン

## 開発環境のセットアップ

### Flutter SDKのインストール

1. [Flutter公式サイト](https://flutter.dev/docs/get-started/install)から最新版をダウンロード
2. 環境変数の設定
```bash
export PATH="$PATH:[PATH_TO_FLUTTER]/flutter/bin"
```

3. Flutter環境の確認
```bash
flutter doctor
```

### Firebase設定

1. Firebaseコンソールでプロジェクトを作成
2. iOS/Android アプリを追加
3. 設定ファイルをダウンロードして配置
   - iOS: `ios/Runner/GoogleService-Info.plist`
   - Android: `android/app/google-services.json`

## コーディング規約

### ディレクトリ構造

```
lib/
├── models/         # データモデル
├── services/       # ビジネスロジック・API通信
├── views/          # UI画面
├── widgets/        # 再利用可能なウィジェット
├── utils/          # ユーティリティ関数
└── constants/      # 定数定義
```

### 命名規則

- **ファイル名**: snake_case (例: `user_profile.dart`)
- **クラス名**: PascalCase (例: `UserProfile`)
- **変数・メソッド名**: camelCase (例: `getUserName`)
- **定数**: UPPER_SNAKE_CASE (例: `MAX_RECORDING_TIME`)

### コード品質

- 各クラス・メソッドにはドキュメントコメントを追加
- 複雑なロジックには説明コメントを追加
- `flutter analyze`でエラー・警告をゼロに保つ

## Git ワークフロー

### ブランチ戦略

- `main`: 本番環境
- `develop`: 開発環境
- `feature/*`: 新機能開発
- `bugfix/*`: バグ修正
- `release/*`: リリース準備

### コミットメッセージ

```
<type>(<scope>): <subject>

<body>

<footer>
```

**Type**:
- feat: 新機能
- fix: バグ修正
- docs: ドキュメント
- style: コードスタイル
- refactor: リファクタリング
- test: テスト
- chore: ビルド・補助ツール

**例**:
```
feat(recording): 録音時間の上限を設定

- 最大録音時間を5分に制限
- タイマー表示を追加
- 上限到達時の通知実装
```

## テスト

### テストの種類

1. **Unit Tests**: ビジネスロジックのテスト
2. **Widget Tests**: UIコンポーネントのテスト
3. **Integration Tests**: E2Eテスト

### テスト実行

```bash
# 全テスト実行
flutter test

# カバレッジレポート生成
flutter test --coverage
```

### テストガイドライン

- 新機能追加時は必ずテストを書く
- テストカバレッジ80%以上を維持
- 重要なビジネスロジックは100%カバー

## ビルド & デプロイ

### 開発ビルド

```bash
# iOS
flutter build ios --debug

# Android
flutter build apk --debug
```

### リリースビルド

```bash
# iOS
flutter build ios --release

# Android
flutter build appbundle --release
```

### 環境変数

`.env`ファイルで環境別の設定を管理:

```
# .env.development
API_URL=https://dev-api.lullabee.com
ENVIRONMENT=development

# .env.production
API_URL=https://api.lullabee.com
ENVIRONMENT=production
```

## パフォーマンス最適化

### 画像・音声ファイル

- 画像は適切なサイズにリサイズ
- 音声ファイルは圧縮形式（AAC）を使用
- キャッシュ戦略の実装

### ウィジェット最適化

- `const`コンストラクタの活用
- 適切な`Key`の使用
- 不要な`setState()`の削減

## トラブルシューティング

### よくある問題

1. **依存関係の競合**
```bash
flutter clean
flutter pub get
```

2. **iOS ビルドエラー**
```bash
cd ios
pod install
pod update
```

3. **Android ビルドエラー**
```bash
cd android
./gradlew clean
./gradlew build
```

## リソース

- [Flutter公式ドキュメント](https://flutter.dev/docs)
- [Firebase Flutter ドキュメント](https://firebase.flutter.dev/)
- [効果的なDart](https://dart.dev/guides/language/effective-dart)

## 連絡先

技術的な質問や提案がある場合は、GitHubのIssueを作成してください。