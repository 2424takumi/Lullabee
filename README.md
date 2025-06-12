# Lullabee

子供との大切な会話を記録して家族で共有するアプリ

## 概要

Lullabeeは、子供との貴重な会話や成長の瞬間を音声で記録し、家族みんなで共有できるモバイルアプリケーションです。子供の成長過程での可愛い発言や親子の日常会話を、今しか聞けない声のトーンや感情も含めて大切に保存します。

## 主な機能

- 🎙️ **音声録音**: 簡単な操作で子供との会話を高品質で録音
- 👨‍👩‍👧‍👦 **家族グループ**: 家族単位でグループを作成し、録音を共有
- 📚 **ライブラリ**: 録音した音声をタイトル・日付・子供ごとに整理
- 💬 **コメント・いいね**: 家族メンバー間でのコミュニケーション
- 🔒 **プライバシー保護**: 家族グループ内でのみ共有される安全な設計

## 技術スタック

- **フレームワーク**: Flutter 3.0+
- **バックエンド**: Firebase (Authentication, Firestore, Storage)
- **音声処理**: record, just_audio
- **状態管理**: Provider
- **ルーティング**: go_router

## セットアップ

### 必要な環境

- Flutter SDK 3.0以上
- Dart SDK 2.19以上
- iOS: Xcode 14以上
- Android: Android Studio / VS Code

### インストール手順

1. リポジトリをクローン
```bash
git clone https://github.com/2424takumi/Lullabee.git
cd Lullabee
```

2. 依存関係をインストール
```bash
flutter pub get
```

3. Firebase設定ファイルを配置
   - iOS: `ios/Runner/GoogleService-Info.plist`
   - Android: `android/app/google-services.json`

4. アプリを実行
```bash
flutter run
```

## 開発環境

このプロジェクトは元々FlutterFlowで作成されましたが、現在はコードベースでの開発に移行しています。

### プロジェクト構造

```
lib/
├── auth/           # 認証関連
├── backend/        # Firebase連携・データモデル
├── components/     # 共通UIコンポーネント
├── pages/          # 各画面
├── flutter_flow/   # FlutterFlow生成コード
└── main.dart       # エントリーポイント
```

## ビルド

### iOS
```bash
flutter build ios
```

### Android
```bash
flutter build apk
```

## ライセンス

このプロジェクトはプライベートリポジトリです。
