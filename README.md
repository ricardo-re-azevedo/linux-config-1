# nvim

<b>Install + Config:</b><br>
``sudo apt-get install neovim``<br>
``mkdir .config/nvim``<br>
``curl -L https://raw.githubusercontent.com/blakjak44/nvim/master/init.vim > ~/.config/nvim/init.vim``<br>
``curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim``<br>
``cd ~/.config/nvim/plugged``<br>
``git clone https://github.com/Valloric/YouCompleteMe``<br>
``cd YouCompleteMe``<br>
``git submodule update --init --recursive``<br>
``sudo apt install nodejs npm``<br>
``python3 install.py --clang-completer --ts-completer``<br>
