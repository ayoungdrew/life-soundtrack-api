#!/bin/bash

curl "http://localhost:4741/songs" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "song": {
      "name": "'"${NAME}"'",
      "artist": "'"${ARTIST}"'"
    }
  }'

echo
