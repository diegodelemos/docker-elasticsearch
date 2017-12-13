#!/bin/bash

hash=$(/elasticsearch/plugins/search-guard-5/tools/hash.sh -p $ELASTIC_PWD)
sed -ri "s|hash:[^\r\n#]*#elastic|hash: \'$hash\' #elastic|" /elasticsearch/config/searchguard/sg_internal_users.yml

cat /elasticsearch/config/searchguard/sg_internal_users.yml
