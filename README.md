

  # DevOps Mid Exam – Cloud Native Application

This project demonstrates the design and implementation of a complete cloud-native DevOps stack using modern DevOps tools.  
The application is based on an open-source Node.js project (mongo-express) integrated with MongoDB and Redis.

---

## Project Objectives
- Containerize an application with database and cache
- Automate infrastructure provisioning using Terraform
- Deploy and manage the application using Kubernetes
- Automate configuration using Ansible
- Implement CI/CD pipeline
- Integrate monitoring and observability
- Deliver a production-ready DevOps stack

---

## Technology Stack
- Application: Node.js (mongo-express)
- Database: MongoDB
- Cache: Redis
- Containerization: Docker, Docker Compose
- Infrastructure as Code: Terraform
- Configuration Management: Ansible
- Orchestration: Kubernetes (Minikube / EKS)
- CI/CD: GitHub Actions
- Monitoring: Prometheus, Grafana
- Cloud Provider: AWS

---

## Running the Application Locally (Docker Compose)

### Prerequisites
- Docker
- Docker Compose

### Steps
bash
cp .env.example .env
docker compose up -d

**The application is accessible at:**

http://localhost:8080

**Infrastructure Setup and Teardown (Terraform)
Setup**
cd infra
terraform init
terraform apply

**Teardown**
terraform destroy


Terraform provisions AWS infrastructure including networking resources and compute services.

**Kubernetes Deployment**
**Deployment Steps**
kubectl apply -f k8s/
kubectl get pods -n dev
kubectl get svc -n dev


The application, database, and cache are deployed as separate Kubernetes resources and communicate using Kubernetes services.

**CI/CD Pipeline**

A fully automated CI/CD pipeline is implemented using GitHub Actions.
The pipeline includes:

1. Build and test

2.Linting and quality checks

3.Docker image build and push

4.Deployment to Kubernetes

5.Smoke testing

**Monitoring and Observability**

Monitoring is implemented using Prometheus and Grafana to collect and visualize system and application metrics.

## Contribution

* **Faiza Aslam**:step 1,  step 5, step 8 
* **Mamoona Ghania**: step 2 , step 4 ,step 5 
* **Noor fatima**: step 6, step 7
