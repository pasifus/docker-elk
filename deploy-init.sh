#!/bin/bash
echo "## BEGING INITIALIZE ELK SCRIPT ######################################################"
docke-compose up -d
docker-compose exec metricbeat sh -c './scripts/import_dashboards -es $ELASTICSEARCH_URL'
echo "Show added indeses"
curl 'localhost:9200/_cat/indices?v' 
# delete kibana indexes
#curl -XDELETE 'localhost:9200/*'
docker cp kibana/elastalert-0.0.6.1.zip kibana:/tmp
docker-compose exec kibana sh -c './bin/kibana-plugin install file:///tmp/elastalert-0.0.6.1.zip'
docker kibana restart
echo "## END INITIALIZE ELK SCRIPT ######################################################"
