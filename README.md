# 💤 LazyVim

My personal Lazyvim configuration

install on linux by:

Ubuntu:
  git clone https://github.com/OrMichal/Lazyvim ~/.config/nvim

  sudo apt update
  sudo apt install luarocks \
    sudo apt install -y \
    git curl unzip build-essential \
    luarocks lua5.1 liblua5.1-0-dev \
    gcc make ripgrep fd-find \
    python3-pip nodejs npm

  mkdir -p ~/.local/share/fonts
    cd ~/.local/share/fonts

    wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip
    unzip JetBrainsMono.zip
    rm JetBrainsMono.zip

    fc-cache -fv
