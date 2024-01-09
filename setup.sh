# #!/bin/zsh

# DOT_FILES=(.*)

# for file in ${DOT_FILES[@]}; do
#     ln -s $HOME/dotfiles/$file $HOME/$file
# done

# 未定義な変数があったら途中で終了する
set -u

# .vimフォルダを作成
mkdir -p ~/.vim
mkdir -p ~/.vim/colors
# 今のディレクトリ
# dotfilesディレクトリに移動する
BASEDIR=$(dirname $0)
cd $BASEDIR

# dotfilesディレクトリにある、ドットから始まり2文字以上の名前のファイルに対して
for f in z??*; do
    [ "$f" = ".git" ] && continue
    [ "$f" = ".gitconfig.local.template" ] && continue
    [ "$f" = ".gitmodules" ] && continue

    # シンボリックリンクを貼る
    ln -snfv ${PWD}/"$f" ~/."$f"
done

ln -snfv ${PWD}/editor/vim/vimrc ~/.vimrc
ln -snfv ${PWD}/.p10k.zsh ~
ln -snfv ${PWD}/modules/prezto ~/.zprezto
ls modules/vim/colors | xargs -I{} ln -snfv ${PWD}/modules/vim/colors/{} ~/.vim/colors/{}
ln -snfv ${PWD}/wezterm.lua ~/.wezterm.lua

