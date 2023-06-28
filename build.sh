#!/bin/sh

osmium extract --bbox=77.666931,27.557615,77.723904,27.590101 --set-bounds --strategy=smart ./india-latest.osm.pbf  --output ./output/vrindavan.osm.pbf
/usr/local/bin/tilemaker --input ./output/vrindavan.osm.pbf --outpuin .mbtiles --process ./configs/tilemaker.lua --config ./configs/tilemaker.json
