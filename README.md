#### This Terraform configuration sets up a Google Kubernetes Engine (GKE) cluster and its associated node pool using modular architecture.
The associated cluster is used to deploy a National Weather Service Forecast application via a CI/CD pipeline using Github actions and Argo CD.

It does so by leveraging GitHub Actions for continuous integration (CI) and Argo CD for continuous deployment (CD) to a Kubernetes cluster. The use of GitHub Actions automates the building of Docker images upon code changes in the main branch and pushes these images to Docker Hub. Additionally, it updates Kubernetes manifest files in a separate repository, ensuring the deployment specifications are always up-to-date with the latest image version.
