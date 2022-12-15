#!/usr/bin/env bash

mkdir -p /home/runner/.config/twty
echo ${TWTY_CONFIG} > /home/runner/.config/twty/settings.json
export ELONID=`/home/runner/go/bin/twty -u elonmusk --json | tail -n1 | jq .id_str | tr -d \"`
cat template.html | sed "s/ELONID/${ELONID}/" > index.html

