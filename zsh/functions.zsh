function vlogin {
  unset VAULT_TOKEN
  export VAULT_TOKEN=$(vault login -token-only -method=oidc -path=onelogin role=as-platformers)
  echo $VAULT_TOKEN > ~/.vault-token
}

function onelogin () {
  lpass login appo.esl@gmail.com
  echo -n "Enter you MFA Code: "
  read mfa
  csq ol login --config $HOME/.config/csq-go-cli.toml -p "$(lpass show onelogin --fixed-strings --password)" --mfa-code "${mfa}"
}

function update_providers() {
  if [[ -z "${GITHUB_TOKEN}" ]]; then
      echo "GITHUB_TOKEN is not defined"
  else
      latest_version=$(curl -u micborens:$GITHUB_TOKEN https://api.github.com/repos/contentsquare/platform_terraform_modules/releases/latest -s  | jq .tag_name -r)
      gsed -i "s/?ref=.*/?ref=$latest_version\"/" *tf
  fi
}

function ansible() {
  gsed -i 's/^strategy =/#strategy =/' ${ANSIBLE_DIR}/ansible.cfg
  source ${ANSIBLE_DIR}/ansible/bin/activate
}
