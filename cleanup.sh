for i in $( oc get applications.argoproj.io | grep demo-  | awk '{print $1}'); 
do 
echo "deleting: $i"
kubectl patch applications.argoproj.io/$i --type json --patch='[ { "op": "remove", "path": "/metadata/finalizers" } ]'
oc delete applications.argoproj.io $i --force --grace-period=0
done

