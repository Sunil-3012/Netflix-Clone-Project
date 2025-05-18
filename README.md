# 🎬 Netflix Clone CI/CD DevSecOps Project

This project is a full DevSecOps implementation of a **Netflix Clone** using modern CI/CD practices, infrastructure as code, container orchestration, and robust monitoring and security tools.

## 🚀 Project Overview

This Netflix Clone application is automatically built, tested, containerized, scanned for vulnerabilities, and deployed on an AWS Elastic Kubernetes Service (EKS) cluster using a Jenkins-based CI/CD pipeline. Security and monitoring tools like SonarQube, Trivy, Prometheus, and Grafana are integrated for end-to-end observability and security compliance.

---

## 🧰 Tech Stack

### Infrastructure & DevOps
- **AWS EC2** – Base infrastructure
- **Terraform** – Infrastructure provisioning (EKS)
- **Jenkins** – CI/CD pipeline orchestration
- **Docker** – Containerization
- **Kubernetes (EKS)** – Container orchestration

### Security & Quality
- **SonarQube** – Static Code Analysis
- **Trivy** – Vulnerability scanning for containers and file systems

### Monitoring & Logging
- **Prometheus + Node Exporter** – Metrics collection and scraping
- **Grafana** – Visualization dashboard for metrics

---

## 🧪 Jenkins Pipelines

### 🔧 Pipeline 1 – EKS Cluster Provisioning

This pipeline sets up the Kubernetes infrastructure using Terraform:

**Stages**:
1. Checkout from Git
2. Terraform Version Check
3. Terraform Init
4. Terraform Validate
5. Terraform Plan
6. Terraform Apply

![](https://github.com/Sunil-3012/Netflix-Clone-Project/blob/main/images/eksjob.png)

---

### 📦 Pipeline 2 – CI/CD + DevSecOps

This pipeline builds, analyzes, secures, and deploys the Netflix Clone to EKS:

**Stages**:
1. Tool Install (JDK, etc.)
2. Clean Workspace
3. Checkout Code from Git
4. SonarQube Analysis
5. SonarQube Quality Gate Check
6. Install Dependencies
7. Trivy File System Scan
8. Docker Build and Push
9. Trivy Docker Image Scan
10. Deploy to Container
11. Deploy to Kubernetes



---

## 🛡️ Security Measures

- ✅ **Static Code Analysis**: Performed via SonarQube in the Jenkins pipeline.
- ✅ **File System & Container Scanning**: Using **Trivy** for vulnerabilities.
- ✅ **Infrastructure as Code Security**: Terraform plans reviewed before apply.
![](https://github.com/Sunil-3012/Netflix-Clone-Project/blob/main/images/sonarqube.png)

---

## 🖥️ Infrastructure Details

| Component | EC2 Instance | 
|----------|---------------|
| **t2.large** | Jenkins, Docker, Trivy, SonarQube (in Docker), Terraform |
| **t2.medium** | Prometheus, Grafana, Node Exporter |

---

## 📊 Monitoring Stack

- **Prometheus** collects metrics from Kubernetes nodes and the application.
- **Node Exporter** installed on EC2 instances to export system-level metrics.
- **Grafana** visualizes application health, container metrics, and node stats.
![](https://github.com/Sunil-3012/Netflix-Clone-Project/blob/main/images/grafana.png)
---

## 🌐 Deployment Architecture

```plaintext
                +---------------------+
                |   Developer Push    |
                +---------+-----------+
                          |
                          v
                +---------------------+
                |       Jenkins       |
                +---------+-----------+
                          |
        +-----------------+------------------+
        |                                    |
        v                                    v
+---------------+                 +------------------+
|  Terraform    |                 |  CI/CD Pipeline  |
|  (EKS Setup)  |                 |  App Build/Test  |
+------+--------+                 +--------+---------+
       |                                 |
       v                                 v
+--------------+               +----------------------+
|    EKS       | <-------------|  Dockerized App Pods |
|  Cluster     |               +----------+-----------+
+------+-------+                          |
       |                                  v
       |                      +------------------------+
       |                      |   Prometheus + Grafana |
       |                      +------------------------+
       v
Load Balancer (NLB/ALB)
       |
       v
Netflix Clone Website
```
## Final Product
![](https://github.com/Sunil-3012/Netflix-Clone-Project/blob/main/images/website-1.png)
![](https://github.com/Sunil-3012/Netflix-Clone-Project/blob/main/images/website-2.png)
## 🚧 Future Improvements

- Integrate **ArgoCD** for GitOps-style CD.
- Use **Istio** or **Linkerd** for service mesh and traffic management.
- Add **log aggregation** with **ELK Stack** or **Loki**.

---

## 🤝 Contributions

Feel free to fork the repo and submit pull requests! Contributions are welcome to improve functionality, security, or pipeline performance.

---


## 📬 Contact

For questions, suggestions, or collaboration inquiries:

📧 [gangupamu.sunil30@gmail.com]  
🔗 [[LinkedIn](https://www.linkedin.com/in/sunil-gangupamu-16487b227/)]  





