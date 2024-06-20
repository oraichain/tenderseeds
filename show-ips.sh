chain_name="$1"

if [[ -z $chain_name ]]; then
  echo "No chain_name"
  exit
fi
cd /root/seeds
docker compose -f docker-compose.local.yml exec "$chain_name" sh -c "sh info.sh ips"