#!/bin/bash
eval $(minikube docker-env)
kubectl label namespace default istio-injection=enabled

kubectl apply -f samples/bookinfo/platform/kube/bookinfo.yaml
kubectl apply -f samples/bookinfo/networking/bookinfo-gateway.yaml


kubectl get services
minikube service productpage --url


