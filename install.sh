helm repo add traefik https://helm.traefik.io/traefik
helm repo update
helm uninstall traefik || true
helm upgrade --install \
    traefik traefik/traefik \
    -f values.yaml
kubectl apply -f dashboard.yaml
