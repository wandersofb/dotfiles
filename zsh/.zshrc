# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000

bindkey -v
bindkey '^E' beginning-of-line
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/jam/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
alias ll="ls -al"

# change environment path
export PATH=/home/jam/nvim-linux64/bin:$PATH
export PATH=/home/jam/.local/bin:$PATH
export PATH=/home/jam/.local/share/nvim/mason/bin:$PATH
export PATH=/home/jam/sci/bin:$PATH

# internal plugin
plugins=(git git-prompt)

# external plugin
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/git/git-prompt.sh

# 开启颜色
autoload -U colors && colors

# git PROMPT
setopt PROMPT_SUBST

# 配置提示符模式
#PS1='[%n@%m %c$(__git_ps1 " (%s)")]\$ '
PROMPT='%{$fg[green]%}%1|%~%{$reset_color%}%{$fg[blue]%}$(__git_ps1 " (%s)") %{$fg[white]%}%#>'
#PROMPT='%F{blue}%n%f@%F{green}%m%f:%F{yellow}%~%f$(git_prompt_info)%F{default}$ %f'

# 在行末显示上一命令的返回状态
RPROMPT="[%{$fg_bold[yellow]%}%?%{$reset_color%}]"
# 开启代理
#export http_proxy="http://127.0.0.1:1081"
#export https_proxy="http://127.0.0.1:1081"
# 关闭代理
#unset http_proxy
#unset https_proxy

# function
export FUNCNEST=100

