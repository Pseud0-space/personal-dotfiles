# System update and Installations
sudo pacman --noconfirm -Syu
sudo pacman -S --noconfirm --needed wget git nvidia nvidia-utils nvidia-settings 

yay -S hyprland-git hyprpaper-git hyprlock-git waypaper swww-git ttf-fira-code ttf-firacode-nerd brightnessctl pamixer rofi-wayland visual-studio-code-bin neovim kitty nerd-fonts blueman udiskie wl-clipboard waybar boo-sddm-git hyprshot gwenview inetutils brave-bin apple-fonts spotify spicetify-cli yazi

# Handle Dotfiles
cp -r ./.config/* ~/.config
mkdir -p ~/.local/share/fonts/
cp -r ./fonts/* ~/.local/share/fonts/
sudo cp -r ./sddm/boo /usr/share/sddm/themes/
cp -r ./wallpapers ~/
cp ./load-ssd.sh ~/

# Zsh
mkdir -p ~/.zsh/themes
mkdir -p ~/.zsh/plugins
cp ./.zsh/themes/headline.zsh-theme ~/.zsh/themes/
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/plugins/zsh-autosuggestions
cp ./.zshrc ~/
chsh -s /usr/bin/zsh
