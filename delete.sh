#!/bin/bash

context=`kubectl config current-context`
if test $context != "minikube" ; then
  echo "minikubeで実行してください。今のcontextは${context}です。"
fi

# influxdb
kubectl delete -f influxdb/deployment.yaml
kubectl delete -f influxdb/service.yaml

# fluentd
kubectl delete -f python2-with-fluentd/deployment.yaml

# grafana
kubectl delete -f grafana/deployment.yaml
kubectl delete -f grafana/service.yaml

echo "done"
