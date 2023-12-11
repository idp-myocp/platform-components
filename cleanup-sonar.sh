sonarpassword=XXXXXXXX

for i in $( curl -s -u admin:$sonarpassword -XGET "https://sonarqube-sonar9.apps.home.myocp.net/api/projects/search" | jq '.components[].key');
do
  project=`echo $i | sed 's/.\(.*\)/\1/' | sed 's/\(.*\)./\1/'`
  echo "deleting project: $project"
 curl -s -u admin:$sonarpassword -XPOST https://sonarqube-sonar9.apps.home.myocp.net/api/projects/bulk_delete?projects=$project
done


