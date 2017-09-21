#!/bin/bash -x

while [ 1 ]; do sleep 40 ; kubectl get pods | grep nginx | awk '{print $1}' | xargs kubectl delete pod; done

