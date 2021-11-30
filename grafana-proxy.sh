#!/bin/bash
BASEURL=http://$1:3000/render/d-solo
TOKEN=$2
mkdir graphs
set -x
function download() {
	curl -H 'Authorization: Bearer '$TOKEN $BASEURL/$2 -o $1.png.swp
	mv $1.png.swp graphs/$1.png
	chmod 0744 graphs/$1.png
}

# C10 inside
## Study
### gauges
download c10_inside_study_temp   'ZvAMlXp7k/c10-inside?panelId=8&from=now-6h&to=now&width=720&height=200' 
download c10_inside_study_co2    'ZvAMlXp7k/c10-inside?panelId=6&from=now-6h&to=now&width=720&height=200'
download c10_inside_study_humid  'ZvAMlXp7k/c10-inside?panelId=7&from=now-6h&to=now&width=720&height=200' 
### graphs
download c10_inside_study_graph1 'ZvAMlXp7k/c10-inside?panelId=2&from=now-6h&to=now&width=720&height=480'
download c10_inside_study_graph2 'ZvAMlXp7k/c10-inside?panelId=3&from=now-6h&to=now&width=720&height=480'
