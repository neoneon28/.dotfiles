# Fig pre block. Keep at the top of this file.

# |====== PATH EXPORTS  ======|
export PATH=$HOME/Library/Python/3.8/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.composer/vendor/bin:$PATH #set up for PHP composer
export PATH=$HOME/usr/local/bin:$PATH
export PATH=$HOME/bin:$PATH
export PATH=$HOME/scripts:$PATH

# export BAT_THEME="Catppuccin Mocha"

# |====== PNPM  ======|
export PNPM_HOME="/Users/no1/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

# |====== Yarn  ======|
export YARN_GLOBAL_FOLDER="$FNM_MULTISHELL_PATH/yarn-global"
export YARN_PREFIX="$FNM_MULTISHELL_PATH"

# |====== Bun Config  ======|
[ -s "/Users/no1/.bun/_bun" ] && source "/Users/no1/.bun/_bun"
export BUN_INSTALL="/Users/no1/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# |====== Bat Man Page  ======|
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# |====== ZSH Config  ======|
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=white'
VI_MODE_SET_CURSOR=true

# |======= Source Plugins  ========|
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-history-substring-search/zsh-history-substring-search.zsh
source ~/.zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh

# |======  Options  ======|
#
setopt autocd

# |======  History  ======|
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999

setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

# |======  Aliases  ======|
#
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
alias hl="history 0 | awk '{print $2}' | sort | uniq -c | sort -nr | head -10" # show leaderboard of top commands

alias py="python3"
alias gl="gorilla"
alias esprc="nvim /Users/no1/Library/Application\ Support/espanso/match/base.yml"
alias esr="espanso restart"
alias ubd="open /Users/no1/Library/Application\ Support/Übersicht"

alias vim="nvim" #set default VIM to Neovim

# |======  LS replaement  ======|

alias ls="eza --icons=always --git-ignore --ignore-glob='node_modules'"
alias ll="ls -l "
alias la="ls -la"
alias lla="ls -la"
alias lt="ls -lTa"

alias c="clear"
alias e="exit"

# |======  Folder Aliases  ======|
alias btop="bpytop"

# |======  Zellij  ======|
alias zel="zellij --layout ~/.config/zellij/configs/layouts/dev.kdl"
alias zeldc="vim ~/.config/zellij/config/layouts/dev.kdl"

# |======  Kitty  ======|
alias krc="vim ~/.config/kitty/kitty.conf"

# |======  TMUX  ======|
alias tl="tmux ls"
alias tad="tmux attach -d -t"
alias ta="tmux attach -d"
alias ts="tmux new-session -s"
alias tksv="tmux kill-server"
alias tkss="tmux kill-session -t"
alias tmd="tmux detach"
alias stx="tmux source ~/.tmux.conf"

# |======  Misc  ======|
alias nf="neofetch"
alias ff="fastfetch"
alias cat="bat"
alias st="speedtest"
alias lg="lazygit"
alias ct="cointop"

# |======  NPM Commands  ======|
alias nrd="npm run dev -- --open"

# |======  PNPM Commands  ======|
alias pup="pnpm i -g pnpm"
alias pms="pnpm start"
alias pmd="pnpm dev"
alias pmb="pnpm build"
alias pmp="pnpm preview"

# |======  Edit Config  ======|
alias zsrc="source ~/.zshrc"
alias zrc="vim ~/.zshrc"
alias nrc="vim ~/.config/nvim/init.lua" # init.lua
alias arc="vim ~/.alacritty.yml" # alacritty
alias wrc="vim ~/.wezterm.lua" # wezterm
alias skrc="vim ~/.skhdrc" # skhdrc
alias trc="vim ~/.tmux.conf" # tmux rc
alias zelrc="vim ~/.config/zellij/config.kdl" zellij rc

# |======  Karabiners Config ======|
alias krc="vim ~/.config/karabiner/karabiner.json" # karabiner elements
alias logk="tail -f ~/.local/share/karabiner/log/console_user_server.log"

# |====== Laravel Aliases  ======|
alias art="php artisan"
alias artr="php artisan route:list"
alias artm="php artisan migrate"
alias artmf="php artisan migrate:fresh"
alias artmrf="php artisan migrate:refresh"
alias briv="php artisan breeze:install vue --typescript --ssr --pest --dark"

# |======  Bat for man pages  ======|
alias -g -- -h='-h 2>&1 | bat --language=help --style=plain'
alias -g -- --help='--help 2>&1 | bat --language=help --style=plain'

# |======  Github Aliases  ======|
alias ghrw="gh repo view --web"

# |======  Serverless CLI  ======|
# alias ps="pscale"
# alias pcs="pscale connect my-rpg-quest main --port 3309"

# |======  JS Aliases  ======|
alias lpj="vim package.json"
alias cap="cat package.json"
alias bd="bun dev"
alias bb="bun run build"
alias bp="bun run build && bun run preview"

# |======  Edit Config Files  ======|
alias skrc="vim ~/.skhdrc"

# |======  Python  ======|
alias py="python3"
alias sdapi="./webui.sh --precision full --no-half --api --no-download-sd-model"

# |======  Pocketbase  ======|
alias pb="./pocketbase"
alias pbs="./pocketbase serve"

# |====== Prisma  ======|
alias ps="prisma studio"

# |====== SQL  ======|
alias sql="sqlite3"


alias pam="php artisan migrate:refresh --seed"

alias cd="z"

alias krs="launchctl kickstart -k gui/`id -u`/org.pqrs.karabiner.karabiner_console_user_server"

# |====== Eval ======|
eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(fnm env --use-on-cd)"
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

# |====== Functions  ======|

mcd() {
  mkdir -p "$1" && cd "$1"
}

# |====== Prompt ======|

# # Define the colors
# BOLD_BLUE='%B%F{blue}'
# YELLOW='%F{yellow}'
# RESET='%f%b'
#
# # Function to update the prompt
# set_prompt() {
#     local user_host="${BOLD_BLUE}Aquawolf${YELLOW}@${RESET}${BOLD_BLUE}Zen${RESET}"
#     local dir="%~"
#
#     # Set the prompt with a newline before the actual prompt
#     PROMPT="${user_host} ${dir} "
#     RPROMPT=""
# }
#
# # Call the function to set the prompt
# set_prompt
#
# # Update the prompt when the directory changes
# autoload -U add-zsh-hook
# add-zsh-hook chpwd set_prompt

eval "$(zellij setup --generate-auto-start zsh)"


# Herd injected NVM configuration
export NVM_DIR="/Users/no1/Library/Application Support/Herd/config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

[[ -f "/Applications/Herd.app/Contents/Resources/config/shell/zshrc.zsh" ]] && builtin source "/Applications/Herd.app/Contents/Resources/config/shell/zshrc.zsh"

# Herd injected PHP binary.
export PATH="/Users/no1/Library/Application Support/Herd/bin/":$PATH


# Herd injected PHP 8.2 configuration.
export HERD_PHP_82_INI_SCAN_DIR="/Users/no1/Library/Application Support/Herd/config/php/82/"
