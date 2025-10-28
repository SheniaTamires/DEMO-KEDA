#!/usr/bin/env bash
set -euo pipefail
kind create cluster --name keda-demo --wait 90s || true
kubectl cluster-info

# KEDA
helm repo add kedacore https://kedacore.github.io/charts
helm repo update
helm install keda kedacore/keda -n keda --create-namespace

# HTTP Add-on
helm install keda-http kedacore/keda-add-ons-http -n keda

# Namespace app
kubectl apply -f k8s/ns.yaml
