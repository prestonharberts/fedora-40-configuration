# Neovim

Run the following to install Neovim:

```
sudo dnf install neovim -y
```

Run the following to make necessary folders and files:

```
mkdir -p ~/.local/share/nvim/plugged ~/.local/share/nvim/site ~/.config/nvim
touch ~/.config/nvim/init.lua
```

Copy my config to `~/.config/nvim` with something like the following (change the config location to where my config folder is on your disk):

```
cp ../configs/nvim/init.lua ~/.config/nvim
```

Run the following to install `vim-plug`:

```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

Enter into Neovim and enter `:PlugInstall`.


Run the following to install language servers:

```
sudo dnf install clang-tools-extra -y # C++
sudo npm install -g bash-language-server # Bash
sudo npm install -g pyright # Python
sudo npm install -g typescript typescript-language-server # JS
sudo npm install -g vscode-langservers-extracted # CSS/HTML
```
