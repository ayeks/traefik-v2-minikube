helm repo add traefik https://helm.traefik.io/traefik
helm repo update
helm install \
    --set="additionalArguments={--log.level=DEBUG}" \
    traefik traefik/traefik \
    -f values.yaml
kubectl apply -f dashboard.yaml