# Lullabee Theme System

このディレクトリには、Lullabeeアプリケーションのデザインシステムとテーマ設定が含まれています。

## 📁 ファイル構成

- **`lullabee_theme.dart`** - メインのテーマ設定ファイル（色、タイポグラフィ、スペーシングなど）
- **`components_showcase.dart`** - コンポーネントの使用例とデモ
- **`README.md`** - このファイル

## 🎨 使い方

### 1. テーマの適用

`main.dart`でアプリケーション全体にテーマを適用します：

```dart
import 'package:lullabee/theme/lullabee_theme.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lullabee',
      theme: LullabeeTheme.lightTheme(),
      darkTheme: LullabeeTheme.darkTheme(),
      home: HomePage(),
    );
  }
}
```

### 2. テーマプロパティへのアクセス

#### カラー
```dart
// 基本色
Theme.of(context).primaryYellow  // メインの黄色
Theme.of(context).secondaryPeach // セカンダリーのピーチ色
Theme.of(context).tertiaryBlue   // ターシャリーのブルー

// アクセント色
Theme.of(context).accent1  // 淡いイエロー
Theme.of(context).accent2  // 淡いピンク
Theme.of(context).accent3  // 淡いブルー
Theme.of(context).accent4  // 淡いクリーム

// セマンティックカラー
Theme.of(context).success  // 成功
Theme.of(context).warning  // 警告
Theme.of(context).error    // エラー
Theme.of(context).info     // 情報
```

#### スペーシング
```dart
Theme.of(context).spacingXs   // 4.0
Theme.of(context).spacingSm   // 8.0
Theme.of(context).spacingMd   // 16.0
Theme.of(context).spacingLg   // 24.0
Theme.of(context).spacingXl   // 32.0
Theme.of(context).spacingXxl  // 48.0
```

#### ボーダー半径
```dart
Theme.of(context).radiusXs    // 4.0
Theme.of(context).radiusSm    // 8.0
Theme.of(context).radiusMd    // 12.0
Theme.of(context).radiusLg    // 16.0
Theme.of(context).radiusXl    // 24.0
Theme.of(context).radiusFull  // 9999.0 (完全な円)
```

#### 影
```dart
Theme.of(context).shadow1  // 微細な影
Theme.of(context).shadow2  // 軽い影
Theme.of(context).shadow3  // 中程度の影
Theme.of(context).shadow4  // 強い影
```

### 3. コンポーネントの使用例

#### 家族の温かさを表現するカード
```dart
Container(
  padding: EdgeInsets.all(Theme.of(context).spacingMd),
  decoration: BoxDecoration(
    color: Theme.of(context).colorScheme.surface,
    borderRadius: BorderRadius.circular(Theme.of(context).radiusMd),
    boxShadow: Theme.of(context).shadow2,
  ),
  child: // カードの内容
)
```

#### 優しい印象のボタン
```dart
ElevatedButton(
  onPressed: () {},
  style: ElevatedButton.styleFrom(
    backgroundColor: Theme.of(context).primaryYellow,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(Theme.of(context).radiusSm),
    ),
  ),
  child: Text('ボタン'),
)
```

## 🧪 コンポーネントショーケース

デザインシステムのすべてのコンポーネントを確認するには：

```dart
import 'package:lullabee/theme/components_showcase.dart';

// ルートに追加
MaterialPageRoute(
  builder: (context) => ComponentsShowcase(),
)
```

## 📝 デザイン原則

1. **丸みのあるデザイン** - 角丸を使用して優しさを表現
2. **優しい黄色** - 温かさと親しみやすさを演出
3. **シンプル** - すべての世代が使いやすいインターフェース
4. **一貫性** - 統一されたビジュアル言語

## 🔧 カスタマイズ

既存のコンポーネントスタイルを拡張する場合：

```dart
// 既存のテーマを拡張
ElevatedButton(
  style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
    backgroundColor: MaterialStateProperty.all(
      Theme.of(context).secondaryPeach,
    ),
  ),
  child: Text('カスタムボタン'),
)
```

詳しい使用方法については、`/DESIGN_SYSTEM.md`を参照してください。