#!/bin/sh
if [ ! -f UUID ]; then
  UUID="f79c1d06-e1a2-4136-be4e-1d9a86c7e69d"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

