#!/bin/bash

set -e

echo "Deploying Alarm Platform..."

kubectl apply -f ../kubernetes/base/

echo ""
echo "Current pods:"
kubectl get pods -n alarm-system

echo ""
echo "Services:"
kubectl get services -n alarm-system

echo ""
echo "Deployment complete."