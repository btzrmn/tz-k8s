wait
kubectl delete -f deployment.yaml
kubectl delete -f service.yaml
wait
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml