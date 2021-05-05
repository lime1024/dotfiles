cask 'visual-studio-code'

extensions = File.open(File.join(node[:dotfiles], 'vscode-extensions'))
extensions.each do |extension|
  execute "code --install-extension #{extension}" do
    not_if "code --list-extensions | grep #{extension}"
  end
end

dotfile 'Library/Application Support/Code/User/settings.json'
dotfile 'Library/Application Support/Code/User/keybindings.json'
