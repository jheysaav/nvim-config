echo "Creating symbolic links..."

ln -sf $PWD/fish $HOME/.config
ln -sf $PWD/nvim $HOME/.config
ln -sf $PWD/starship.toml $HOME/.config/starship.toml

echo "Setting nvm..."

set --universal nvm_data $HOME/.local/share/nvm || export nvm_data $HOME/.local/share/nvm
