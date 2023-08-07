#!/bin/bash
(
  echo "Deployments:"
  kubectl get deployment --all-namespaces -o custom-columns="NAMESPACE:.metadata.namespace,NAME:.metadata.name,CPU_REQUEST:.spec.template.spec.containers[0].resources.requests.cpu" | awk '$3 ~ /^[0-9]+[mkMG]?$/{print $1, $2, $3}'

  echo "StatefulSets:"
  kubectl get statefulset --all-namespaces -o custom-columns="NAMESPACE:.metadata.namespace,NAME:.metadata.name,CPU_REQUEST:.spec.template.spec.containers[0].resources.requests.cpu" | awk '$3 ~ /^[0-9]+[mkMG]?$/{print $1, $2, $3}'

  echo "DaemonSets:"
  kubectl get daemonset --all-namespaces -o custom-columns="NAMESPACE:.metadata.namespace,NAME:.metadata.name,CPU_REQUEST:.spec.template.spec.containers[0].resources.requests.cpu" | awk '$3 ~ /^[0-9]+[mkMG]?$/{print $1, $2, $3}'
)
