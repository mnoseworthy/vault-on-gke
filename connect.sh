cd terraform 
export VAULT_ADDR="https://$(terraform output address)"
export VAULT_TOKEN="$(eval $(terraform output root_token_decrypt_command))"
export VAULT_CAPATH="$(cd ../ && pwd)/tls/ca.pem"
cd ..
