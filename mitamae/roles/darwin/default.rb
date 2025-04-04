include_recipe File.expand_path('../../../helper.rb', __FILE__)

node.reverse_merge!(
  dotfiles: File.expand_path('../../../../config/', __FILE__),
  home: '/Users/lime1024'
)

include_cookbook 'dotfile'
include_cookbook 'cask'

include_cookbook 'git'
include_cookbook 'asdf'
include_cookbook 'git-secrets'
include_cookbook 'karabiner-elements'
include_cookbook 'ruby'
include_cookbook 'solarized'
include_cookbook 'vim'
include_cookbook 'visual-studio-code'
include_cookbook 'zsh'

package 'awscli'
package 'circleci'
package 'direnv'
package 'peco'
package 'coreutils'

cask '1password'
cask 'docker'
cask 'google-chrome'
cask 'google-japanese-ime'
cask 'kindle'
cask 'slack'
cask 'zoom'
