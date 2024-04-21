#!/bin/bash
eval $(minikube docker-env)
kubectl label namespace default istio-injection=enabled

kubectl apply -f samples/bookinfo/platform/kube/bookinfo.yaml
kubectl apply -f samples/bookinfo/networking/bookinfo-gateway.yaml
kubectl apply -f samples/bookinfo/networking/destination-rule-all.yaml
kubectl apply -f samples/bookinfo/networking/virtual-service-ratings-test-abort.yaml

kubectl get services
echo ""
kubectl get pods
minikube service productpage --url


