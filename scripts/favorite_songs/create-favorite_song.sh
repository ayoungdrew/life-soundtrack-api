#!/bin/bash

curl "http://localhost:4741/favorite_songs" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "favorite_song": {
      "user_id": "'"${USER_ID}"'",
      "song_id": "'"${SONG_ID}"'",
      "story_date": "'"${STORY_DATE}"'"
    }
  }'

echo
