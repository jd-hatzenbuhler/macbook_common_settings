## COMMON
alias ls='/bin/ls -bFHGLOPW'
alias tar="gtar"
alias cs='cd ~/Documents/Development/ContentSquare/Git/'
alias tcurl="curl -w "@$HOME/.curl-format.txt" -o /dev/null -s"
alias azswitch="az fzf subscription"

## DOCKER
alias docker='podman'

## KUBERNETES
alias kctx='kubectx'
alias kns='kubens'
alias ctx='kubie ctx'
alias ns='kubie ns'

## GIT
alias gti='git'
alias glg='git lg -25'
alias gmerge='git merge --no-ff'
alias grebase='git rebase -r'
alias up='git fetch -p --all --tags -P -f && git pull --rebase'

## TERRAFORM
alias tfp='terraform plan -input=false -out tfplan --var-file=$(fzf)'
alias tfd='terraform destroy --var-file=$(fzf)'
alias tfa='terraform apply tfplan'
alias tfws='terraform workspace select $(terraform workspace list | fzf | sed -e "s/\*//")'
alias tfmt='terraform fmt -recursive'
alias tflock='terraform providers lock -platform=linux_amd64 -platform=linux_arm64 -platform=darwin_amd64 -platform=darwin_arm64 -platform=windows_amd64'
