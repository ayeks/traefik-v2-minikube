helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo add stable https://charts.helm.sh/stable
helm repo update
helm upgrade prometheus prometheus-community/prometheus -f ./prometheus/values.yaml --install
kubectl apply -f prometheus/ingressroute.yaml
