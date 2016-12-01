curl --include --request POST http://localhost:4741/cards \
  --header "Content-Type: application/json" \
  --data '{
    "card": {
      "name": "Jeff",
      "class": "Assassin"
    }
  }'
