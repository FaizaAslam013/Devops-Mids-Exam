

# DevOps Project Report



## Technologies Used

Docker and Docker Compose were used to containerize the application and manage local services.  
Terraform was used to provision cloud infrastructure on AWS using Infrastructure as Code principles.  
Ansible was used for automated configuration management.  
Kubernetes was used to orchestrate and manage containerized workloads.  
GitHub Actions was used to implement a CI/CD pipeline.  
Prometheus and Grafana were used to implement monitoring and observability.

---

## Architecture Overview

The system architecture consists of:
- User accessing the application through a web interface
- Nginx acting as a reverse proxy
- Application container (mongo-express)
- MongoDB database with persistent storage
- Redis cache service
- Kubernetes cluster managing all workloads
- AWS infrastructure hosting the environment

---

## CI/CD Pipeline Overview

The CI/CD pipeline follows these stages:
1. Source code checkout
2. Dependency installation
3. Testing and linting
4. Docker image build and push
5. Infrastructure and application deployment
6. Post-deployment smoke testing

This ensures automated and reliable delivery of application changes.

---

## Secret Management Strategy

Secrets are managed using environment variables.  
Sensitive information is stored in `.env` files which are ignored using `.gitignore`.  
A `.env.example` file is committed to provide a template without exposing real secrets.  
No secrets are hardcoded in source code or configuration files.

---

## Monitoring Strategy

Prometheus is used to collect metrics from nodes and services.  
Grafana is used to visualize system metrics such as CPU usage, memory usage, and application performance.  
This setup enables effective monitoring and observability of the deployed system.

---

## Lessons Learned

- Understanding Docker containerization and networking
- Applying Infrastructure as Code concepts using Terraform
- Automating server configuration using Ansible
- Deploying and managing applications using Kubernetes
- Building CI/CD pipelines with GitHub Actions
- Implementing monitoring using Prometheus and Grafana
