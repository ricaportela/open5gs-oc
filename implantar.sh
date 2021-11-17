#!/bin/bash
kubectl apply -f env-configmap.yaml
kubectl apply -f default-networkpolicy.yaml
kubectl create -f pv/
kubectl create -f pvc/
kubectl create -f pv/dbdata-pv.yaml
kubectl create -f service/mongo-service.yaml
kubectl create -f service/mysql-service.yaml
kubectl create -f deploy/mongo/mongo-deployment.yaml 
kubectl create -f deploy/mysql/mysql-deployment.yaml
