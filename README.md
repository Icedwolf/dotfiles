# dotfiles
repo for storing dotfiles

# dependencies
ohmyzsh: ``sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"``  
zplugin: sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh)"  
tmux-tpm: git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm  
fzf: git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install -y  
bat: cargo install bat (need rust)  
