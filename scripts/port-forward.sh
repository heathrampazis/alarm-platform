#!/bin/bash

echo "Starting frontend port-forward..."
echo "Frontend available at http://localhost:4200"

kubectl port-forward \
  service/alarm-frontend-service \
  4200:80 \
  -n alarm-system