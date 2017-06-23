#!/bin/sh

set -e

$PREFIX/npi config set license_key $LICENSE_KEY
$PREFIX/npi prepare com.aerospike.newrelic.connector --noedit

echo "{
  \"agents\": [
    {
      \"seed_list\": [\"$AS_HOST\"],
      \"clusterName\": \"${AS_CLUSTER:-aerospike}\"
    }
  ]
}" > plugins/com.aerospike.newrelic.connector/newrelic-aerospike-plugin-2.0.1/config/plugin.json

exec "$@"
