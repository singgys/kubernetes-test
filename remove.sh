#/!/bin/bash

kubectl delete services rabbitmq --namespace=rabbitmq-cluster
kubectl delete services rabbitmq-management --namespace=rabbitmq-cluster
kubectl delete services rmq-cluster --namespace=rabbitmq-cluster
kubectl delete --all pods --namespace=rabbitmq-cluster 
kubectl delete statefulset rabbitmq --namespace=rabbitmq-cluster
kubectl get pods --namespace=rabbitmq-cluster
