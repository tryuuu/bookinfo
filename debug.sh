#!/bin/bash
istioctl analyze
kubectl get destinationrules -o yaml
kubectl get virtualservice ratings -o yaml
istioctl proxy-status
kubectl get svc,pods -l app=ratings