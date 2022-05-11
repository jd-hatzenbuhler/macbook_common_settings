## COMMON
export LSCOLORS=gxfxcxdxbxegedabagacad
export CLICOLOR=1
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel

## AWS
export AWS_PROFILE=mgmt
export AWS_REGION=eu-west-1

## KUBERNETES
export KUBECONFIG=~/.kube/config

## VAULT
export VAULT_ADDR="https://scrooge.eu-west-1.csq.io"
export VAULT_TOKEN=$(xargs < ~/.vault-token)

## ARTIFACTORY
export ARTIFACTORY_USER=<YOU ARTIFACTORY USER>
export ARTIFACTORY_TOKEN=<YOUR ARTIFACTORY TOKEN>

## GO
export GOPATH="${HOME}/.go"
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"

## TERRAFORM
export TF_VAR_vault_location=/Users/michael.borens/Documents/Development/ContentSquare/Git/ansible-dev/group_vars/vault/vault.yml

## ANSIBLE
export ANSIBLE_DIR=~/Documents/Development/ContentSquare/Git/ansible-dev

## GITHUB
export GITHUB_TOKEN=<YOUR GITHUB TOKEN>
