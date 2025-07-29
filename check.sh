#!/bin/bash

URL="https://sri-lokeshwari-portfolio.netlify.app"

STATUS=$(curl -o /dev/null -s -w "%{http_code}" "$URL")

if [ "$STATUS" -ne 200 ]; then
  echo "❌ Website is DOWN! Status code: $STATUS"
  exit 1
else
  echo "✅ Website is UP. Status code: $STATUS"
fi
