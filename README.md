# Mongo-Express DevOps Project

## Project Overview
This project demonstrates a full DevOps workflow for a Mongo-Express application using Docker, Nginx, and GitHub Actions CI/CD. 
The app is containerized and includes:
- Backend app (`app`) built with Node.js & Express
- MongoDB database (`mongo`)
- Nginx as a reverse proxy
- CI/CD pipeline to build, test, and deploy Docker images to Docker Hub

## Features
- Health check endpoint (`/health`) returns `{status: "ok"}`
- Automated Docker image build and push on merge to master
- Secure secrets management with GitHub Secrets
- Verified running containers for local testing

## Prerequisites
- Git installed
- Docker Desktop or Docker CLI
- Node.js installed (for local testing)

## Installation & Running
1. Clone the repository:
```bash
git clone <https://github.com/FaizaAslam013/Devops-Mids-Exam>
cd <repo-folder>
```

2. Copy `.env.example` to `.env` and fill in required secrets:

```bash
cp .env.example .env
```

3. Build and run containers:

```bash
docker compose up --build
```

4. Verify services:

* Health endpoint: `http://localhost:8080/health` → returns `{status: "ok"}`
* Running containers: `docker ps` → should show `app`, `mongo`, `nginx`

## CI/CD Pipeline

* Triggered only on **merge to master**
* Steps:

  1. Build Docker image
  2. Run tests
  3. Push Docker image to Docker Hub with timestamped tag
* Secrets used:

  * `DOCKERHUB_USERNAME`
  * `DOCKERHUB_TOKEN`
  * `ME_CONFIG_SITE_SESSIONSECRET`

## Contribution

* **Faiza Aslam**: App code, router, tests
* **Mamoona Ghania**: Docker-compose, Nginx configuration
* **Noor fatima**: CI/CD workflow, secret management,deployment
