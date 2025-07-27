wait
kubectl delete -f configmap.yaml
kubectl delete -f deployment.yaml
kubectl delete -f service.yaml
wait
kubectl apply -f configmap.yaml
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml