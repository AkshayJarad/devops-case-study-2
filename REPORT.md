# DevOps Case Study 2

## Tools Used
- **Git & GitHub** – Version control and code collaboration
- **Docker** – Containerization of Node.js app
- **Jenkins** – CI/CD automation
- **Ansible** – Deployment automation on localhost
- **Terraform** – *(Not used due to AWS suspension)*
However, I followed all other steps locally and simulated what Terraform would have done — by deploying on my Ubuntu machine instead of a cloud instance.

-------------------------------------------------------------------------------------------------------

## Project Structure

devops-case-study-2/
├── src/ # Node.js app (index.js)
├── ansible/ # Ansible inventory and playbook
├── scripts/ # Shell scripts for Docker build & cleanup
├── Dockerfile # Docker image definition
├── Jenkinsfile # Pipeline definition
└── README.md

-------------------------------------------------------------------------------------------------------

## CI/CD Workflow Summary

1. **Developer pushes code** to `develop` branch on GitHub.
2. **Jenkins** fetches code, builds Docker image, tags with commit hash & `latest`.
3. **DockerHub** receives the pushed image.
4. **Ansible** pulls the `latest` Docker image and deploys to `localhost`.

## Pipeline Stages
- **Checkout**
- **Build & Push Docker Image**<img width="1920" height="1080" alt="Screenshot 2025-07-28 192210" src="https://github.com/user-attachments/assets/4583b1fa-89fe-4cd6-b2e9-e8ee47c7a778" />

- **Ansible Deployment**

##  Deployment Target
- Localhost (Ubuntu) using Ansible

## Credentials
- DockerHub credentials managed via Jenkins’ Credential Store.

## Outcome
- Fully automated pipeline on local system without using cloud resources.
