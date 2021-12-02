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
### stats
download c10_study_temp      'zBlCiep7z/graphs-skowronski-cloud?from=now-6h&to=now&width=720&height=200&panelId=8' 
download c10_study_co2       'zBlCiep7z/graphs-skowronski-cloud?from=now-6h&to=now&width=720&height=200&panelId=6'
download c10_study_humid     'zBlCiep7z/graphs-skowronski-cloud?from=now-6h&to=now&width=720&height=200&panelId=7' 
### graphs
download c10_study_graph1    'zBlCiep7z/graphs-skowronski-cloud?from=now-6h&to=now&width=720&height=480&panelId=2'
download c10_study_graph2    'zBlCiep7z/graphs-skowronski-cloud?from=now-6h&to=now&width=720&height=480&panelId=3'
## Outside
### status
download c10_outside_temp    'zBlCiep7z/graphs-skowronski-cloud?from=now-6h&to=now&width=720&height=200&panelId=13' 
download c10_outside_humid   'zBlCiep7z/graphs-skowronski-cloud?from=now-6h&to=now&width=720&height=200&panelId=15' 
download c10_outside_press   'zBlCiep7z/graphs-skowronski-cloud?from=now-6h&to=now&width=720&height=200&panelId=16' 
download c10_outside_pm25    'zBlCiep7z/graphs-skowronski-cloud?from=now-6h&to=now&width=720&height=200&panelId=14' 
### graphs
download c10_outside_graph1  'zBlCiep7z/graphs-skowronski-cloud?from=now-6h&to=now&width=720&height=480&panelId=17'
download c10_outside_graph2  'zBlCiep7z/graphs-skowronski-cloud?from=now-6h&to=now&width=720&height=480&panelId=19'
download c10_outside_graph3  'zBlCiep7z/graphs-skowronski-cloud?from=now-6h&to=now&width=720&height=480&panelId=18'
