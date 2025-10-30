# TDD in Swift

Swiftでのテスト駆動開発（TDD）を学ぶためのプロジェクトです。

## 開発環境

このプロジェクトはDev Containerを使用してSwift開発環境を提供しています。

### 必要なもの

- Docker Desktop
- Visual Studio Code
- Dev Containers拡張機能

### セットアップ

1. このリポジトリをクローンします
2. VS Codeでフォルダーを開きます
3. 「Reopen in Container」の通知が表示されたらクリックします
   - または、コマンドパレット（Ctrl+Shift+P）で「Dev Containers: Reopen in Container」を実行します

### プロジェクト構造

```
├── .devcontainer/          # Dev Container設定
│   ├── devcontainer.json   # Dev Container設定ファイル
│   └── Dockerfile          # カスタムDockerfile
├── Sources/
│   ├── TDDSwift/          # メインライブラリ
│   │   └── Calculator.swift
│   └── TDDSwiftCLI/       # 実行可能ファイル
│       └── main.swift
├── Tests/
│   └── TDDSwiftTests/     # テストファイル
│       └── CalculatorTests.swift
├── Package.swift           # Swift Package Manager設定
└── README.md
```

### 利用可能なタスク

VS Codeのタスクランナー（Ctrl+Shift+P → "Tasks: Run Task"）で以下のタスクを実行できます：

- **Swift: Build** - プロジェクトをビルドします
- **Swift: Test** - テストを実行します  
- **Swift: Run** - CLIアプリケーションを実行します
- **Swift: Clean** - ビルド成果物をクリーンアップします

### TDDの実践

このプロジェクトでは、Calculatorクラスを例にTDDのサイクルを実践できます：

1. **Red** - 失敗するテストを書く
2. **Green** - テストを通すための最小限のコードを書く  
3. **Refactor** - コードをリファクタリングする

### コマンドライン使用例

```bash
# プロジェクトをビルド
swift build

# テストを実行
swift test

# CLIアプリケーションを実行
swift run TDDSwiftCLI

# 詳細なテスト出力
swift test --verbose
```

### VS Code拡張機能

Dev Containerには以下の拡張機能が自動的にインストールされます：

- Swift Language Support
- Test Explorer
- Test Adapter Converter

これらの拡張機能により、VS Code内でSwiftコードの編集、デバッグ、テスト実行が可能になります。