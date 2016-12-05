#!/bin/bash

API="http://localhost:4741"
URL_PATH="/card_links"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiU3ODA5MmNlZjhjNDdkMzdiNGRlZjdjYWE4ZTFiMDU2YwY6BkVG--630ad8c0822d84fe1f41a39b95efa47044ed8eb6" \
  --data '{
    "card_link": {
      "deck_id": "1",
      "card_id": "1"
    }
  }'

echo
