#!/bin/bash

curl -sG "https://wallhaven.cc/api/v1/search" --data "q=$@" --data "atleast=1920x1080" --data "ratios=16x9" --data "purity=100" --data "categories=111" --data "page=2" | jq -r '.data[].path' | xargs wget