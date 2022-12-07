git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

ln -s ~/git/linux-config/vim/.vimrc ~/.vimrc
declare -a vimcfgs=("vundle_vimrc"  "ycm_vimrc"  "ycm_extra_conf.py")
for file in "${vimcfgs[@]}"
do
    ln -s ~/git/linux-config/vim/${file} ~/.vim/${file}
done

pip3 install --user pathlib
python3 ~/git/linux-config/vim-plugin-diff/apply_diff.py

ln -s ~/git/linux-config/tmux/.tmux.conf ~/.tmux.conf

