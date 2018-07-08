# Reference Architecture Consul/Nomad/Fabio


## Prerequisites

Install depedencies.

```
brew install jq direnv ansible pipenv
```

Configure Digital Ocean credentials.

```
echo "export DO_API_TOKEN=REPLACE_ME" > .envrc
```

```
echo "export TF_VAR_do_token=$DO_API_TOKEN >> .envrc
```

```
direnv allow
```

```
pipenv shell
```

## Create Cluster

Create droplets.

    make terraform

Provision droplets.

    make ansible

### Useful One Liners

Get all images.

    curl -X GET --silent "https://api.digitalocean.com/v2/images?per_page=999" -H "Authorization: Bearer $DO_API_TOKEN" | jq

Get public keys.

    curl -X GET -H "Content-Type: application/json" -H "Authorization: Bearer $DO_API_TOKEN" "https://api.digitalocean.com/v2/account/keys" | jq

