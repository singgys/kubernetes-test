#/!/bin/bash

kubectl delete services rabbitmq 
kubectl delete services rabbitmq-management 
kubectl delete services rmq-cluster 
kubectl delete statefulset rabbitmq 
