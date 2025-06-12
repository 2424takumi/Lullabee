#!/bin/bash

# Vercel用のビルドスクリプト
# Flutterのインストールとビルドを行う

echo "🚀 Starting Lullabee build process..."

# Flutterのインストール
if [ ! -d "$HOME/flutter" ]; then
  echo "📦 Installing Flutter..."
  git clone https://github.com/flutter/flutter.git -b stable $HOME/flutter
fi

# PATHの設定
export PATH="$PATH:$HOME/flutter/bin"

# Flutter doctorで環境確認
echo "🔍 Checking Flutter environment..."
flutter doctor -v

# 依存関係のインストール
echo "📚 Installing dependencies..."
flutter pub get

# Webサポートの有効化
echo "🌐 Enabling web support..."
flutter config --enable-web

# ビルド
echo "🔨 Building web application..."
flutter build web --release --web-renderer html

echo "✅ Build completed successfully!"