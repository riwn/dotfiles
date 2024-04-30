# dotfiles
dotfileの管理をするためのリポジトリ

## Clone
ホームに置く
```sh
cd ~

git clone --recursive https://github.com/riwn/dotfiles.git

# recursiveやり忘れた時は
git submodule update --init --recursive
```

## フォントのDL

- [MesloLGS NF Regular](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf)
- [MesloLGS NF Bold](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf)
- [MesloLGS NF Italic](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf)
- [MesloLGS NF Bold Italic](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf)

## 追加でインストールしておくと良いツール群

### difftastic

diffをわかりやすくしたツール  
レビューがよりやりやすくなるので追加したい  

[公式サイト](https://difftastic.wilfred.me.uk/)

Mac
```zsh
$ brew install difftastic
```

Linux
```zsh
$ cargo install --locked difftastic
```

### zellij

ターミナルマルチプレクサ

### zoxide

改良版cd
よく使うディレクトリを登録しておくことで移動しやすくなる

### bat

改良版cat

### exa

改良版ls

### httpie

改良版curl

## SketchyBar

Macの上部のBarの見栄えがよくなるツール

## Go言語について

以下のIssueをSubscribeしておくことで最新の更新情報が毎週得られる

- https://github.com/golang/go/issues/33502

