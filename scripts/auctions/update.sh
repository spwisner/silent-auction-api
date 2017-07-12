#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/api/auctions/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "auction": {
      "organization": "Update Org Two"
    }
  }'

echo

# ID=2 FIRST_NAME="Jeff" LAST_NAME="W" BORN_ON="2016-02-01" SCHOOL="QUINCY" TEACHER="G" GRADE="4"
