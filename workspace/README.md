# ELM TRIAL
elmに入門してみる．

[日本語版ガイド](https://guide.elm-lang.jp)を参考にする．

# 導入
バイナリで配布されているツールキットを利用することが公式では推奨されているが，npmからインストールすることもできる．
フォーマッタなどエディター支援ツールはnpmから入れるらしいのでnpmを利用する．（バイナリ配布もあるみたい？）

```sh
apt update && apt install ca-certificates #理由は下記
npm install -g elm # globalインストールでなく，devインストールでもよい．
npm install -g elm-format
# npm install -g elm-test 今回は入れなかった
```

## 注意
linux環境下かつnpmを利用したインストールの場合，ca-certificatesパッケージをインストールしておく必要がある．
これがないと
`InternalException (HandshakeFailed (Error_Protocol ("certificate has unknown CA",True,UnknownCa)))`
が発生する．

# 初期化
ツールチェインで初期化できる．`elm init`を実行するだけ．

サンプルを見ると，ファイル名はCamelCaseでエントリはMain.elmらしい．

# ビルド
`elm make`を使う． コンパイル対象のファイルを指定する．デフォルトではhtmlファイルが生成される．jsが欲しければ`--output`オプションを使う．

