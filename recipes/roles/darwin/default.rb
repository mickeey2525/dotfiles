include_recipe File.expand_path('../../../helper.rb', __FILE__)

node.reverse_merge!(
  dotfiles: File.expand_path('../../../../config/', __FILE__),
  home: '/Users/mikio',
  arch: `uname -m`.chomp
)

include_cookbook 'dotfile'
include_cookbook 'cask'
include_cookbook 'startship'
include_cookbook 'tap'
include_cookbook 'git'
include_cookbook 'wezterm'
include_cookbook 'zsh'
include_cookbook 'karabiner'
include_cookbook 'zed'

package 'gh'
package 'ghq'
package 'peco'
package 'mise'
package 'bat'
package 'eza'
package 'direnv'
package '1password-cli'
package 'bitwarden-cli'
package 'kubectl'
package 'gitui'

cask 'font-hack-nerd-font'
cask 'bitwarden'
cask '1password'
cask 'visual-studio-code'
