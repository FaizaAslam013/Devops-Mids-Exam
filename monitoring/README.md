# Step 7 – Monitoring & Observability (Grafana + Prometheus)

## Goal
Integrate monitoring and observability for application and infrastructure
using Prometheus and Grafana.

## Tools Used
- Kubernetes (Minikube)
- Helm
- Prometheus (node-exporter & Kubernetes metrics)
- Grafana

## Implementation
- Created a dedicated `monitoring` directory for this step.
- Created Kubernetes namespace `monitoring`.
- Installed `kube-prometheus-stack` using Helm.
- Prometheus collects CPU and memory metrics via node-exporter.
- Grafana visualizes metrics using built-in dashboards.

## Dashboards Verified (Screenshots Included)
1. Grafana Overview  
2. Kubernetes / Compute Resources / Cluster (CPU & Memory)  
3. Kubernetes / Compute Resources / Namespace (monitoring)  
4. Prometheus Overview  
5. Monitoring Pods Status (kubectl)

## Result
Prometheus successfully collects metrics and Grafana visualizes
CPU, memory, and namespace-level performance, fulfilling the
Step 7 monitoring requirement.
