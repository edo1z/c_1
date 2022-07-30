# m1 macのnvimでcの開発環境を作る

## 概要
- コンパイルに make, clangを使う
- ユニットテストに、cpputestを使う
- nvimの開発環境設定に, coc-clangd, clang-format, compiledbを使う 

## coc-clangdの設定
- nvimにcocをインストールしている前提
- [coc-clangd]("https://github.com/clangd/coc-clangd")をインストールする
  - `:CocInstall coc-clangd`
- `compile_commands.json`が必要で、[compiledb](https://github.com/nickdiego/compiledb)で作れる

### coc-clangdで自動フォーマットさせる
#### ファイル保存時の自動フォーマット
- nvimのコマンドで、`:CocConfig` でcocの設定画面を開いて、下記を追加する。

```
"coc.preferences.formatOnSaveFiletypes": ["c"],
```

#### clang-formatでフォーマット設定する

- clang-formatをインストール

```
brew install clang-format
```

- .clang-formatというファイルをプロジェクトルートに配置
- 中身を下記のような感じにする

```
BasedOnStyle:  Google
ColumnLimit: 0
IndentWidth: 2

Language: Cpp
Standard: Auto
UseTab: Never
```

- 上記設定が自動で読み込まれるので、ファイル保存時に上記設定でフォーマットされる。

### compile_commnads.json作成

- compiledbをインストール

```
pip3 install compiledb
```

- makeを使う場合

```
compiledb make
```

- 上記でmakeと同時に、makeの設定内容に合わせてcompile_commnads.jsonが作成される

## ユニットテストでCppUTestを使う

- Install

```
brew install cpputest
```

- cpputestのパスを環境変数にセット

```
export CPPUTEST_HOME="$(brew --prefix cpputest)"
```

- makeの設定例

```
CPPFLAGS += -I$(CPPUTEST_HOME)/include
LDFLAGS = -L$(CPPUTEST_HOME)/lib -lCppUTest -lCppUTestExt

../bin/test/test: test.cpp  
	clang++ -o $@ $(CPPFLAGS) $(LDFLAGS) $^ 
```

- `-I` でヘッダファイルを探すフォルダを追加できる。
- `-I$(CPPUTEST_HOME)/include`によって、cpputestのヘッダファイルを追加している。
- `-L$(CPPUTEST_HOME)/lib`で、ライブラリのあるフォルダを追加できる。
- `-lCppUTest`は、libCppUTestをリンクするってこと。
- ヘッダファイルの読み込みがある部分しかリンクされないらしい。
- だからライブラリ読み込む前にヘッダファイルの読み込みしているコードを先に持ってこないといけないらしい。




