#!/bin/bash
echo "## BEGING INITIALIZE ELK SCRIPT ######################################################"
docke-compose up -d
docker-compose exec metricbeat sh -c './scripts/import_dashboards -es $ELASTICSEARCH_URL'
echo "Show added indeses"
curl 'localhost:9200/_cat/indices?v' 
# delete kibana indexes
#curl -XDELETE 'localhost:9200/*'
echo "## END INITIALIZE ELK SCRIPT ######################################################"
