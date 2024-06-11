chain_name="$1"

if [[ -z $chain_name ]]; then
  echo "No chain_name. usage eg., ./docker_service_create.sh cosmoshub 2 caddy"
  exit
fi

docker compose exec "$chain_name" sh -c "sh info.sh ips"