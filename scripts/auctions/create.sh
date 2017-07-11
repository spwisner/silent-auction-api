#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/auctions"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "auction": {
      "organization": "Test Org",
      "start_date": "2001-02-03T04:05:06",
      "end_date": "2001-02-03T05:05:06",
      "active": "false",
      "total_items": "24"
    }
  }'


  # --data '{
  #   "auction": {
  #     "first_name": "'"${FIRST_NAME}"'",
  #     "last_name": "'"${LAST_NAME}"'",
  #     "born_on": "'"${BORN_ON}"'",
  #     "school": "'"${SCHOOL}"'",
  #     "teacher": "'"${TEACHER}"'",
  #     "grade": "'"${GRADE}"'"
  #   }
  # }'

echo

# TOKEN="" FIRST_NAME="Z" LAST_NAME="Z" BORN_ON="2016-05-05" SCHOOL="Z" TEACHER="Z" GRADE="4" sh scripts/auctions/create.sh
