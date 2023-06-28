#!/bin/sh
osmium extract --bbox=77.666931,27.557615,77.723904,27.590101 --set-bounds --strategy=smart ./india-latest.osm.pbf  --output ./vrindavan/vrindavan.osm.pbf
