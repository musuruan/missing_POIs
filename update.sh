#!/bin/bash

# https://overpass-api.de/command_line.html
wget -O "./results/municipi.osm" --post-file="./queries/municipi.oql" "https://overpass-api.de/api/interpreter"
wget -O "./results/uffici_postali.osm" --post-file="./queries/uffici_postali.oql" "https://overpass-api.de/api/interpreter"
wget -O "./results/chiese.osm" --post-file="./queries/chiese.oql" "https://overpass-api.de/api/interpreter"
wget -O "./results/fontanelle.osm" --post-file="./queries/fontanelle.oql" "https://overpass-api.de/api/interpreter"
wget -O "./results/parchi_giochi.osm" --post-file="./queries/parchi_giochi.oql" "https://overpass-api.de/api/interpreter"
