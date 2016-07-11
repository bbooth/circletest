#!/usr/bin/env bash
curl -X POST 'https://api.newrelic.com/v2/applications/${NEW_RELIC_APPLICATION_ID}/deployments.json' \
     -H 'X-Api-Key:69ee32549fcde1c4e1744ca320ff2240160c8209cc21eac' -i \
     -H 'Content-Type: application/json' \
     -d '{"deployment":{"revision":"test"}}'  \
-v --trace-ascii /dev/stdout