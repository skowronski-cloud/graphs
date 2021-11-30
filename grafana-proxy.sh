#!/bin/bash
BASEURL=http://$1:3000/render/d-solo
TOKEN=$2

# C10 inside
## Study
### gauges
curl -H 'Authorization: Bearer '$TOKEN $BASEURL'/ZvAMlXp7k/c10-inside?panelId=8&from=now-6h&to=now&width=720&height=200' -o c10_inside_study_temp.png.swp
mv c10_inside_study_temp.png.swp c10_inside_study_temp.png
curl -H 'Authorization: Bearer '$TOKEN $BASEURL'/ZvAMlXp7k/c10-inside?panelId=6&from=now-6h&to=now&width=720&height=200' -o c10_inside_study_co2.png.swp
mv c10_inside_study_co2.png.swp c10_inside_study_co2.png
curl -H 'Authorization: Bearer '$TOKEN $BASEURL'/ZvAMlXp7k/c10-inside?panelId=7&from=now-6h&to=now&width=720&height=200' -o c10_inside_study_humid.png.swp
mv c10_inside_study_humid.png.swp c10_inside_study_humid.png
### graphs
curl -H 'Authorization: Bearer '$TOKEN $BASEURL'/ZvAMlXp7k/c10-inside?panelId=2&from=now-6h&to=now&width=720&height=480' -o c10_inside_study_graph1.png.swp
mv c10_inside_study_graph1.png.swp c10_inside_study_graph1.png
curl -H 'Authorization: Bearer '$TOKEN $BASEURL'/ZvAMlXp7k/c10-inside?panelId=3&from=now-6h&to=now&width=720&height=480' -o c10_inside_study_graph2.png.swp
mv c10_inside_study_graph2.png.swp c10_inside_study_graph2.png