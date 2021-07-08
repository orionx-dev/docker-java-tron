LAST_BLOCK=$(curl http://localhost:8090/wallet/getnowblock | jq -r '.block_header.raw_data.number')

if [[ ${LAST_BLOCK} == '' ]];  then
    1>&2 echo "Node http requests broken... Restarting"
    exit 1 
fi

echo "Last block: ${LAST_BLOCK}" >&2

sleep 100

NEW_BLOCK=$(curl http://localhost:8090/wallet/getnowblock | jq -r '.block_header.raw_data.number')

echo "New block: ${NEW_BLOCK}" >&2

if [[ $NEW_BLOCK -gt $LAST_BLOCK ]]; then
    exit 0
fi

1>&2 echo "Node not syncing... Restarting"

exit 1