echo "Start! $ID"

echo "Seeds: $SEEDS"

tenderseed -seeds=$SEEDS -chain-id $ID start
