[[ -f "${HOME}/.cache/p10k-instant-prompt-${(%):-%n}.zsh" ]] && source "${HOME}/.cache/p10k-instant-prompt-${(%):-%n}.zsh"

export DOCKER_HOST="tcp://127.0.0.1:2375"

export EDITOR="vim"

export HYPHEN_INSENSITIVE="true"

export ZSH="${HOME}/.oh-my-zsh"

export ZSH_THEME="powerlevel10k/powerlevel10k"

export ZSH_THEME_SRC="https://github.com/romkatv/powerlevel10k.git"

export ZSH_THEME_SHORT=$(echo "${ZSH_THEME}" | awk -F/ '{print $2}')

export plugins=(
    1password
    aws
    command-not-found
    git
    golang
    helm
    kubectx
    kubectl
    python
    terraform
    ubuntu
    vscode
)

[[ ! -d "${ZSH}/themes/${ZSH_THEME_SHORT}" ]] && git clone --depth=1 "${ZSH_THEME_SRC}" "${ZSH}/themes/${ZSH_THEME_SHORT}"

[[ -f "${ZSH}/oh-my-zsh.sh" ]] && source "${ZSH}/oh-my-zsh.sh"

[[ -f "${HOME}/.p10k.zsh" ]] && source "${HOME}/.p10k.zsh"

eval $(ssh-agent -s) &>/dev/null

[[ -f "${HOME}/.ssh/id_rsa" ]] && ssh-add "${HOME}/.ssh/id_rsa"
