#!/bin/bash

# https://overpass-api.de/command_line.html
#SERVER="https://overpass-api.de/api/interpreter"
SERVER="https://osmit-overpass.wmcloud.org/api/interpreter"
REFERER="https://overpass-turbo.eu/"
wget -O "./results/municipi.osm" --post-file="./queries/municipi.overpassql" --referer=$REFERER $SERVER
wget -O "./results/uffici_postali.osm" --post-file="./queries/uffici_postali.overpassql" --referer=$REFERER $SERVER
wget -O "./results/chiese.osm" --post-file="./queries/chiese.overpassql" --referer=$REFERER $SERVER
wget -O "./results/fontanelle.osm" --post-file="./queries/fontanelle.overpassql" --referer=$REFERER $SERVER
wget -O "./results/parchi_giochi.osm" --post-file="./queries/parchi_giochi.overpassql" --referer=$REFERER $SERVER
wget -O "./results/tabaccai.osm" --post-file="./queries/tabaccai.overpassql" --referer=$REFERER $SERVER
wget -O "./results/scuole.osm" --post-file="./queries/scuole.overpassql" --referer=$REFERER $SERVER

