
#!/usr/bin/bash
CLUSTERS_NAME="local1"
if kind get clusters | grep -qi ${CLUSTERS_NAME};then
    echo "${CLUSTERS_NAME} already exists..Skipping creation"
else
    echo "Creating Cluster ... "
    kind create cluster --config ~/tech/Kubernetes/kind2.yml --name local1
fi
kubectl apply -f ~/tech/Kubernetes/deployment.yml
kubectl apply -f ~/tech/Kubernetes/Service.yml
kubectl get pods
sleep 5
mesheryctl system start
kubectl get pods -n meshery
sleep 5
kubectl port-forward -n meshery svc/meshery 9081:9081

