#!/bin/bash
istioctl analyze
kubectl get destinationrules -o yaml
kubectl get virtualservice ratings -o yaml
istioctl proxy-status
kubectl get svc,pods -l app=ratings
kubectl logs -l app=reviews,version=v1 -c istio-proxy
