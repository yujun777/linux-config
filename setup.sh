git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

ln -s ~/git/linux-config/vim/.vimrc ~/.vimrc
ln -s ~/git/linux-config/vim/.vundle_vimrc ~/.vundle_vimrc

pip3 install --user pathlib
python3 ~/git/linux-config/vim-plugin-diff/apply_diff.py

ln -s ~/git/linux-config/tmux/.tmux.conf ~/.tmux.conf


