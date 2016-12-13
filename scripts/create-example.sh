#!/bin/bash

API="http://localhost:4741"
URL_PATH="/card_links"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiVmNDA4MDgzNDAwYzYyZDQxOGJhYWMzNDE3NmY5NDUyMQY6BkVG--5454cd00b3ba0d250a93ad93dfde87ca525dc500" \
  --data '{
    "card_link": {
      "deck_id": "1",
      "card_id": "1"
    }
  }'

echo
