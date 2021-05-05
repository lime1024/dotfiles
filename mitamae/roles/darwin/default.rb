include_recipe File.expand_path('../../../helper.rb', __FILE__)

node.reverse_merge!(
  dotfiles: File.expand_path('../../../../config/', __FILE__),
  home: '~/'
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

package 'angular-cli'
package 'awscli'
package 'circleci'
package 'direnv'
package 'peco'
package 'coreutils'

cask '1password'
cask 'dash'
cask 'deepl'
cask 'discord'
cask 'docker'
cask 'google-chrome'
cask 'google-japanese-ime'
cask 'kindle'
cask 'krisp'
cask 'slack'
cask 'zoom'
