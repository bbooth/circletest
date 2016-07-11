#!/usr/bin/env bash
curl -X POST https://api.newrelic.com/v2/applications/${NEW_RELIC_APPLICATION_ID}/deployments.json \
     -H "X-Api-Key:${NEW_RELIC_API_KEY}" -i \
     -H 'Content-Type: application/json' \
     -d "{\"deployment\":{\"revision\":\"Circle CI Build: ${CIRCLE_BUILD_NUM}\nGit Commit: ${CIRCLE_SHA1}\"}}"