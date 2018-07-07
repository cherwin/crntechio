Prereqs
=======
`brew install jq`
`brew install direnv`
`brew install ansible`
`brew install pipenv`
`echo "export TF_VAR_do_token=REPLACE_ME" >> .envrc`
`echo "export DO_API_TOKEN=REPLACE_ME" >> .envrc`
`direnv allow`
`pipenv shell`

Get image list
==============
`curl -X GET --silent "https://api.digitalocean.com/v2/images?per_page=999" -H "Authorization: Bearer $TF_VAR_do_token" | jq`

Get public keys
===============
`curl -X GET -H "Content-Type: application/json" -H "Authorization: Bearer $TF_VAR_do_token" "https://api.digitalocean.com/v2/account/keys" | jq`

Create droplets
===============
`make terraform`

Provision droplets
==================
`make ansible`
