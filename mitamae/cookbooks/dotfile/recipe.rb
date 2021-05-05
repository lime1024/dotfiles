define :dotfile do
  name = params[:name].shellescape

  src = File.join(node[:dotfiles], name)
  dst = File.join(node[:home], name)

  link dst do
    to src
  end
end
