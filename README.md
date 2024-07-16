#### Infrastructure Repository for Tide and Temp Application  
### Repository Overview:
This Terraform configuration sets up a Google Kubernetes Engine (GKE) cluster and its associated node pool using modular architecture. The associated cluster is used to deploy and monitor a Tide and Temp API CLI application via a CI/CD pipeline using Github actions, Argo CD, and Prometheus.

### Files of Note:

The `pushgateway.yaml` defines a deployment and service for Prometheus Pushgateway, allowing metrics to be pushed to Prometheus from jobs that do not last long enough to be scraped.

