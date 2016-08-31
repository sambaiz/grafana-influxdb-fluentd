#!/bin/bash

context=`kubectl config current-context`
if test $context != "minikube" ; then
  echo "minikubeで実行してください。今のcontextは${context}です。"
fi

# influxdb
kubectl create -f influxdb/deployment.yaml
kubectl create -f influxdb/service.yaml

# fluentd
kubectl create -f python2-with-fluentd/deployment.yaml

# grafana
kubectl create -f grafana/deployment.yaml
kubectl create -f grafana/service.yaml

echo "done"
