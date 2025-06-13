# Lullabee Design System

## 🎨 Design Philosophy

Lullabeeのデザインシステムは、家族の温かさと優しさを表現し、すべての世代（子ども、親、祖父母）にとって親しみやすく、わかりやすいインターフェースを提供します。

### Core Principles
- **Warmth (温かさ)**: 丸みのあるデザインで家族の温もりを表現
- **Simplicity (シンプルさ)**: 直感的で使いやすいインターフェース
- **Accessibility (アクセシビリティ)**: すべての世代が使いやすい設計
- **Consistency (一貫性)**: 統一されたビジュアル言語

---

## 🌈 Color Palette

### Primary Colors

#### Main Yellow (メインイエロー)
```dart
primary: Color(0xFFFFD122)  // 優しい黄色
```
家族の温かさと幸せを表現する、Lullabeeのブランドカラー

#### Secondary Peach (セカンダリーピーチ)
```dart
secondary: Color(0xFFF4A28C)  // 柔らかいピーチ色
```
アクセントとして使用、親しみやすさを演出

#### Tertiary Sky Blue (ターシャリースカイブルー)
```dart
tertiary: Color(0xFFB4D6F1)  // 淡い空色
```
清潔感と安心感を表現

### Background Colors

```dart
// Light Mode
primaryBackground: Color(0xFFFFFFFF)    // 純白
secondaryBackground: Color(0xFFFFD122)  // イエロー背景
alternate: Color(0xFFFFF6D3)            // 淡いクリーム色

// Dark Mode
primaryBackground: Color(0xFF1E1E1E)    // ダークグレー
secondaryBackground: Color(0xFF2A2A2A)  // ミディアムグレー
```

### Text Colors

```dart
// Light Mode
primaryText: Color(0xFF3C3C3C)      // ダークグレー（高コントラスト）
secondaryText: Color(0xFF777777)    // ミディアムグレー

// Dark Mode
primaryText: Color(0xFFFFFFFF)      // 白
secondaryText: Color(0xFFB0B0B0)    // ライトグレー
```

### Accent Colors

```dart
accent1: Color(0xFFFFF3D2)  // 淡いイエロー
accent2: Color(0xFFFFE5E5)  // 淡いピンク
accent3: Color(0xFFE3F7FF)  // 淡いブルー
accent4: Color(0xFFFFFBF1)  // 淡いクリーム
```

### Semantic Colors

```dart
success: Color(0xFFA6D785)  // 優しいグリーン
warning: Color(0xFFFFE082)  // 注意を促すイエロー
error: Color(0xFFFF8A80)    // 柔らかいレッド
info: Color(0xFF90CAF9)     // 情報のブルー
```

---

## 📝 Typography

### Font Family
```dart
fontFamily: 'Noto Sans JP'
```
日本語に最適化された、読みやすいフォントファミリー

### Type Scale

#### Display (大見出し)
```dart
displayLarge: TextStyle(
  fontSize: 57,
  fontWeight: FontWeight.w400,
  letterSpacing: -0.25,
)

displayMedium: TextStyle(
  fontSize: 45,
  fontWeight: FontWeight.w400,
)

displaySmall: TextStyle(
  fontSize: 36,
  fontWeight: FontWeight.w400,
)
```

#### Headline (見出し)
```dart
headlineLarge: TextStyle(
  fontSize: 32,
  fontWeight: FontWeight.w500,
)

headlineMedium: TextStyle(
  fontSize: 28,
  fontWeight: FontWeight.w500,
)

headlineSmall: TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.w500,
)
```

#### Title (タイトル)
```dart
titleLarge: TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.w600,
)

titleMedium: TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w600,
  letterSpacing: 0.15,
)

titleSmall: TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w600,
  letterSpacing: 0.1,
)
```

#### Body (本文)
```dart
bodyLarge: TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w400,
  letterSpacing: 0.5,
)

bodyMedium: TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w400,
  letterSpacing: 0.25,
)

bodySmall: TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w400,
  letterSpacing: 0.4,
)
```

#### Label (ラベル)
```dart
labelLarge: TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w500,
  letterSpacing: 0.1,
)

labelMedium: TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w500,
  letterSpacing: 0.5,
)

labelSmall: TextStyle(
  fontSize: 11,
  fontWeight: FontWeight.w500,
  letterSpacing: 0.5,
)
```

---

## 📐 Spacing System

### Base Unit
基本単位: `4px`

### Spacing Scale
```dart
spacing_xs:  4.0   // 極小
spacing_sm:  8.0   // 小
spacing_md:  16.0  // 中（デフォルト）
spacing_lg:  24.0  // 大
spacing_xl:  32.0  // 特大
spacing_xxl: 48.0  // 超特大
```

### Common Padding Patterns
```dart
// カード内の余白
cardPadding: EdgeInsets.all(16.0)

// ボタンの余白
buttonPadding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0)

// リストアイテム間の余白
listItemSpacing: SizedBox(height: 8.0)

// セクション間の余白
sectionSpacing: SizedBox(height: 24.0)
```

---

## 🔲 Border Radius System

### Radius Scale
```dart
radius_xs:  4.0   // 極小（チップ、バッジ）
radius_sm:  8.0   // 小（ボタン、入力フィールド）
radius_md:  12.0  // 中（カード、モーダル）
radius_lg:  16.0  // 大（大きなカード）
radius_xl:  24.0  // 特大（特殊な要素）
radius_full: 9999.0 // 完全な円（アバター、FAB）
```

### Component-Specific Radius
```dart
// ボタン
buttonRadius: BorderRadius.circular(8.0)

// カード
cardRadius: BorderRadius.circular(12.0)

// 入力フィールド
inputRadius: BorderRadius.circular(8.0)

// アバター
avatarRadius: BorderRadius.circular(9999.0) // 完全な円

// モーダル/ボトムシート
modalRadius: BorderRadius.only(
  topLeft: Radius.circular(16.0),
  topRight: Radius.circular(16.0),
)
```

---

## 🎭 Shadows & Elevation

### Shadow Levels
```dart
// Level 1 - 微細な影（ホバー状態）
shadow1: BoxShadow(
  color: Color(0x0A000000),
  blurRadius: 4.0,
  offset: Offset(0, 2),
)

// Level 2 - 軽い影（カード）
shadow2: BoxShadow(
  color: Color(0x0D000000),
  blurRadius: 8.0,
  offset: Offset(0, 4),
)

// Level 3 - 中程度の影（ポップアップ）
shadow3: BoxShadow(
  color: Color(0x10000000),
  blurRadius: 16.0,
  offset: Offset(0, 8),
)

// Level 4 - 強い影（モーダル）
shadow4: BoxShadow(
  color: Color(0x14000000),
  blurRadius: 24.0,
  offset: Offset(0, 12),
)
```

---

## 🧩 Component Styles

### Buttons

#### Primary Button
```dart
FFButtonWidget(
  text: 'ボタンテキスト',
  options: FFButtonOptions(
    height: 48.0,
    padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
    color: FlutterFlowTheme.of(context).primary,
    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
      fontFamily: 'Noto Sans JP',
      color: Colors.white,
      fontWeight: FontWeight.w600,
    ),
    elevation: 0.0,
    borderRadius: BorderRadius.circular(8.0),
  ),
)
```

#### Secondary Button
```dart
FFButtonWidget(
  text: 'ボタンテキスト',
  options: FFButtonOptions(
    height: 48.0,
    padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
    color: FlutterFlowTheme.of(context).secondaryBackground,
    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
      fontFamily: 'Noto Sans JP',
      color: FlutterFlowTheme.of(context).primaryText,
      fontWeight: FontWeight.w600,
    ),
    elevation: 0.0,
    borderRadius: BorderRadius.circular(8.0),
    borderSide: BorderSide(
      color: FlutterFlowTheme.of(context).alternate,
      width: 2.0,
    ),
  ),
)
```

#### Icon Button
```dart
FlutterFlowIconButton(
  borderRadius: 8.0,
  buttonSize: 40.0,
  fillColor: FlutterFlowTheme.of(context).primaryBackground,
  icon: Icon(
    Icons.favorite_border,
    color: FlutterFlowTheme.of(context).primaryText,
    size: 24.0,
  ),
)
```

### Cards

#### Basic Card
```dart
Container(
  decoration: BoxDecoration(
    color: FlutterFlowTheme.of(context).primaryBackground,
    borderRadius: BorderRadius.circular(12.0),
    boxShadow: [
      BoxShadow(
        blurRadius: 8.0,
        color: Color(0x0D000000),
        offset: Offset(0, 4),
      )
    ],
  ),
  child: Padding(
    padding: EdgeInsets.all(16.0),
    child: // Card content
  ),
)
```

### Input Fields

#### Text Input
```dart
TextFormField(
  decoration: InputDecoration(
    labelText: 'ラベル',
    hintText: 'プレースホルダー',
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: FlutterFlowTheme.of(context).alternate,
        width: 2.0,
      ),
      borderRadius: BorderRadius.circular(8.0),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: FlutterFlowTheme.of(context).primary,
        width: 2.0,
      ),
      borderRadius: BorderRadius.circular(8.0),
    ),
    filled: true,
    fillColor: FlutterFlowTheme.of(context).primaryBackground,
    contentPadding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
  ),
)
```

### Avatar

```dart
Container(
  width: 60.0,
  height: 60.0,
  decoration: BoxDecoration(
    color: FlutterFlowTheme.of(context).accent1,
    shape: BoxShape.circle,
  ),
  child: ClipRRect(
    borderRadius: BorderRadius.circular(30.0),
    child: Image.network(
      'image_url',
      fit: BoxFit.cover,
    ),
  ),
)
```

### Floating Action Button

```dart
FloatingActionButton(
  onPressed: () {},
  backgroundColor: FlutterFlowTheme.of(context).primary,
  elevation: 8.0,
  child: Icon(
    Icons.add,
    color: Colors.white,
    size: 24.0,
  ),
)
```

---

## 📱 Responsive Design

### Breakpoints
```dart
mobile:  < 480px
tablet:  480px - 768px
desktop: > 768px
```

### Responsive Utilities
```dart
// レスポンシブな表示/非表示
if (responsiveVisibility(
  context: context,
  phone: true,
  tablet: true,
  desktop: false,
))

// レスポンシブなサイズ
width: MediaQuery.sizeOf(context).width >= 768 ? 400.0 : double.infinity
```

---

## ♿ Accessibility Guidelines

1. **Color Contrast**
   - テキストと背景のコントラスト比は最低4.5:1を維持
   - 重要なアクションは色だけでなくアイコンやテキストでも示す

2. **Touch Targets**
   - 最小タッチターゲット: 48x48px
   - アイテム間の最小間隔: 8px

3. **Text Size**
   - 本文の最小サイズ: 14px
   - ユーザーがテキストサイズを調整できるように設計

4. **Icons**
   - すべてのアイコンに適切なセマンティックラベルを設定
   - 装飾的なアイコンはアクセシビリティツリーから除外

---

## 🎯 Usage Examples

### 家族プロフィールカード
```dart
Container(
  decoration: BoxDecoration(
    color: FlutterFlowTheme.of(context).primaryBackground,
    borderRadius: BorderRadius.circular(12.0),
    boxShadow: [
      BoxShadow(
        blurRadius: 8.0,
        color: Color(0x0D000000),
        offset: Offset(0, 4),
      )
    ],
  ),
  child: Padding(
    padding: EdgeInsets.all(16.0),
    child: Row(
      children: [
        // アバター
        Container(
          width: 60.0,
          height: 60.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).accent1,
            shape: BoxShape.circle,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: Image.network('profile_image_url'),
          ),
        ),
        SizedBox(width: 16.0),
        // 情報
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '家族メンバー名',
                style: FlutterFlowTheme.of(context).titleMedium,
              ),
              SizedBox(height: 4.0),
              Text(
                '役割（お父さん、お母さんなど）',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Noto Sans JP',
                  color: FlutterFlowTheme.of(context).secondaryText,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  ),
)
```

### 録音ボタン
```dart
Container(
  width: 80.0,
  height: 80.0,
  decoration: BoxDecoration(
    color: FlutterFlowTheme.of(context).primary,
    shape: BoxShape.circle,
    boxShadow: [
      BoxShadow(
        blurRadius: 16.0,
        color: Color(0x20000000),
        offset: Offset(0, 8),
      )
    ],
  ),
  child: IconButton(
    icon: Icon(
      Icons.mic,
      color: Colors.white,
      size: 36.0,
    ),
    onPressed: () {},
  ),
)
```

---

## 🚀 Implementation Tips

1. **一貫性を保つ**
   - 定義されたトークンを使用し、ハードコードされた値を避ける
   - コンポーネントの再利用を心がける

2. **アニメーション**
   - 優しく滑らかなアニメーション（duration: 200-300ms）
   - ease-in-out カーブを使用

3. **フィードバック**
   - すべてのインタラクティブ要素にホバー/プレス状態を設定
   - 適切なローディング状態を表示

4. **テスト**
   - 異なる画面サイズでテスト
   - ライトモード/ダークモードの両方で確認
   - アクセシビリティツールでチェック

---

このデザインシステムは、Lullabeeアプリケーションの視覚的な一貫性と使いやすさを保証し、すべての家族メンバーにとって温かく親しみやすい体験を提供します。