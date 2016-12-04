#!/bin/bash

API="http://localhost:4741"
URL_PATH="/sign-in"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "jane@said.com",
      "password": "jane"
    }
  }'

echo
