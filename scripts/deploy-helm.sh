#!/bin/bash

set -e

echo "🚀 Deploying Alarm Platform with Helm..."

# Move to project root
cd "$(dirname "$0")/.."

echo ""
echo "Installing/upgrading Helm release..."

helm upgrade --install alarm ./charts/alarm \
  --namespace alarm-system \
  --create-namespace


echo ""
echo "Waiting for pods..."

kubectl wait \
  --for=condition=ready pod \
  --all \
  -n alarm-system \
  --timeout=120s


echo ""
echo "Pods:"
kubectl get pods -n alarm-system


echo ""
echo "Services:"
kubectl get services -n alarm-system


echo ""
echo "✅ Deployment complete."