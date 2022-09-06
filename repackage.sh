#!/bin/bash

set -x
set -e

find .  -maxdepth 1 -mindepth 1  -not -path '*/\.*' -type d -exec helm package {} \;
helm repo index --url https://fallenangelblog.github.io/charts/ .


git add . && git commit -m 'rebuild' && git push
