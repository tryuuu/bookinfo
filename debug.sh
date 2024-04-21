#!/bin/bash
istioctl analyze
kubectl get destinationrules -o yaml