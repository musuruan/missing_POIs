#!/bin/bash

wget -O "./results/municipi.osm" --post-file="./queries/municipi.oql" "https://overpass-api.de/api/interpreter"
