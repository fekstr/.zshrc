alias gs="git status"
alias rebase='function _rebase() {
    if git show-ref --verify --quiet refs/remotes/origin/"$1"; then
        git fetch origin "$1"
        git rebase origin/"$1"
    else
        git rebase "$1"
    fi
}; _rebase'
alias push='git push origin $(git branch --show-current) "$@"'

