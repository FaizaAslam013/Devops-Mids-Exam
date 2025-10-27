# DevOps Final Exam Report
## Project: Mongo-Express DevOps Pipeline

---

## 1. Technologies Used
- **Node.js & Express.js**: Backend application
- **MongoDB**: Database
- **Docker & Docker Compose**: Containerization
- **Nginx**: Reverse proxy
- **GitHub Actions**: CI/CD automation
- **GitHub Secrets**: Secure secret management
- **Jest**: Testing framework

---

## 2. Pipeline Design
The CI/CD pipeline follows these stages:

1. **Build Stage**: Docker image for the app is built
2. **Test Stage**: Health endpoint tests are executed
3. **Deploy Stage** (master branch only):
   - Login to Docker Hub using GitHub Secrets
   - Push Docker image with timestamped tag

**Pipeline Flow Diagram**

---

## 3. Secret Management Strategy
- Secrets are never stored in the repo; managed using **GitHub Secrets**
  - `DOCKERHUB_USERNAME` → Docker Hub login
  - `DOCKERHUB_TOKEN` → Docker Hub authentication
  - `ME_CONFIG_SITE_SESSIONSECRET` → App session security
- Accessed securely in CI/CD workflow using `${{ secrets.NAME }}`

---

## 4. Testing Process
- `/health` endpoint: returns `{status: "ok"}`
- Automated Jest tests: `test/health.test.js`
- CI pipeline will fail if tests fail → ensures only validated images are deployed

---

## 5. Lessons Learned
- Clear **team collaboration** prevents conflicts and ensures smooth CI/CD
- **CI/CD pipeline** automates testing and deployment, ensuring reliability
- **Secrets management** is critical for security; GitHub Secrets is safe and convenient
- **Containerization** ensures the app works consistently across environments
- **Documentation** is essential for reproducibility and submission

---

## 6. Submission Proof
All screenshots stored in `screenshots/` folder:
1. **Pipeline Passing** → GitHub Actions green checkmark
2. **Running Containers** → Terminal or Docker Desktop showing `app`, `mongo`, `nginx`
3. **Health Endpoint** → Browser showing `{status: "ok"}`
4. **Docker Hub Image** → Timestamped Docker image tag
5. **PRs and Contributions** → GitHub showing merged PRs

---

## 7. Final Compliance Summary
> All members completed assigned tasks and merged their branches into `master`.  
> The CI/CD pipeline successfully built, tested, and deployed Docker images to Docker Hub.  
> Screenshots and documentation confirm full compliance with exam requirements.

