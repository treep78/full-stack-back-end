#!/bin/bash

API="http://localhost:4741"
URL_PATH="/card_links"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiVjNjIyNzRkNTM1OGI0MDQyYTk2YTE0ZDI0MzExYzdlMAY6BkVG--59e26b232f7f12323b9f467ff7da2c4d88d7d3df" \
  --data '{
    "card_link": {
      "deck_id": "1",
      "card_id": "1"
    }
  }'

echo
