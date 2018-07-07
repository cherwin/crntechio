Prereqs
=======
`brew install jq`
`brew install direnv`
`echo "export TF_VAR_do_token=REPLACE_ME >> .envrc`
`direnv allow`

Get image list
==============
curl -X GET --silent "https://api.digitalocean.com/v2/images?per_page=999" -H "Authorization: Bearer $TF_VAR_do_token" |jq '.'
