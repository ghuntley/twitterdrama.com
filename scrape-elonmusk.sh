#!/usr/bin/env bash

echo ${TWTY_CONFIG} > ~/.config/twty/settings.json
export ELONID=`twty -u elonmusk --json | tail -n1 | jq .id_str | tr -d \"`
cat template.html | sed "s/ELONID/${ELONID}/" > index.html

