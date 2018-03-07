#!/bin/bash

curl "http://localhost:4741/favorite_songs" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
