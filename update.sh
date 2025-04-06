#!/bin/bash

# https://overpass-api.de/command_line.html
wget -O "./results/municipi.osm" --post-file="./queries/municipi.overpassql" "https://overpass-api.de/api/interpreter"
wget -O "./results/uffici_postali.osm" --post-file="./queries/uffici_postali.overpassql" "https://overpass-api.de/api/interpreter"
wget -O "./results/chiese.osm" --post-file="./queries/chiese.overpassql" "https://overpass-api.de/api/interpreter"
wget -O "./results/fontanelle.osm" --post-file="./queries/fontanelle.overpassql" "https://overpass-api.de/api/interpreter"
wget -O "./results/parchi_giochi.osm" --post-file="./queries/parchi_giochi.overpassql" "https://overpass-api.de/api/interpreter"
wget -O "./results/tabaccai.osm" --post-file="./queries/tabaccai.overpassql" "https://overpass-api.de/api/interpreter"
wget -O "./results/scuole.osm" --post-file="./queries/scuole.overpassql" "https://overpass-api.de/api/interpreter"

