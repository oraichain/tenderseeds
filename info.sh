function="$1"

if [[ $function == "info" ]]; then
    KEY=$(tenderseed -seeds=$SEEDS -chain-id $ID show-node-id)
    IP=$(curl -s https://ifconfig.me)
    echo "$KEY@$IP:$PORT"
fi

if [[ $function == "ips" ]]; then
    cat /data/.tenderseed/data/addrbook.json | jq .addrs[].addr.ip
fi
