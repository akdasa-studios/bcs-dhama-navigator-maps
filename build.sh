#!/bin/sh

# Install dependencides
git submodule update --init --recursive
cd ./tilemaker && make install

osmium extract --bbox=77.666931,27.557615,77.723904,27.590101 --set-bounds --strategy=smart ./india-latest.osm.pbf  --output ./output/vrindavan.osm.pbf
./tilemaker --input ./output/vrindavan.osm.pbf --outpuin .mbtiles --process ./configs/tilemaker.lua --config ./configs/tilemaker.json
