# Dev Container トラブルシューティング

## エラー対処済み

以下の問題を修正しました：

1. **Dockerfileの簡素化**: 
   - 特定のSwiftバージョン (5.9-focal) を指定してセキュリティ脆弱性を軽減
   - Dev Container Featuresとの競合を避けるため、ユーザー作成処理を削除
   - 必要最小限のパッケージのみをインストール

2. **devcontainer.jsonの最適化**:
   - 非推奨の `swift.sourcekit-lsp.serverPath` 設定を削除
   - カスタムワークスペースマウント設定を削除してデフォルトを使用

3. **README.mdの修正**:
   - 外来語カタカナ表記ルールに準拠 (`フォルダ` → `フォルダー`)
   - 全角・半角文字間の不要なスペースを削除

## 対処手順

もしまだエラーが発生する場合は、以下の手順でクリーンアップしてください：

### VS Code内で実行:
1. Command Palette (`Ctrl+Shift+P`)
2. "Dev Containers: Rebuild Container"を選択

### または、PowerShellで実行:
```powershell
# 古いコンテナを削除
docker container prune -f

# 古いイメージを削除（オプション）
docker image prune -f

# Dev Containerを再ビルド
# VS Codeで "Reopen in Container" を実行
```

修正後は正常にSwift開発環境が起動するはずです。