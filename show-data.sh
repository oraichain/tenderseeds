# List all services defined in the docker-compose.yml file
services=$(docker-compose config --services)
for service in $services; do
    echo "$service:"
    echo "------------------------------------------------------------------"
    docker-compose exec "$service" sh -c "sh info.sh info"
    echo "------------------------------------------------------------------"
done