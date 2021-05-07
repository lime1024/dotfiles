git "#{ENV['HOME']}/.asdf" do
  repository 'https://github.com/asdf-vm/asdf.git'
end

dotfile '.asdfrc'

plugins = File.open(File.join(node[:dotfiles], 'asdf-plugins'))
plugins.each do |plugin|
  execute "#{node[:home]}/.asdf/bin/asdf plugin-add #{plugin}" do
    not_if "#{node[:home]}/.asdf/bin/asdf plugin list | grep #{plugin}"
  end
end
