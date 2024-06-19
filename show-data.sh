# List all services defined in the docker-compose.yml file
services=$(docker compose config --services)
for service in $services; do
  if [ "$service" != "nginx" ]; then
    echo "----------------------------------------------------------------------------"
    echo "$service : $(docker compose exec "$service" sh -c "sh info.sh info")"
  fi
done
echo "----------------------------------------------------------------------------"