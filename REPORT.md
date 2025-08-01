# DevOps Case Study 2

## Tools Used
- **Git & GitHub** – Version control and code collaboration
- **Docker** – Containerization of Node.js app
- **Jenkins** – CI/CD automation
- **Ansible** – Deployment automation on localhost
- **Terraform** – *(Not used due to AWS suspension)*
However, I followed all other steps locally and simulated what Terraform would have done — by deploying on my Ubuntu machine instead of a cloud instance.

##  Step-by-Step Workflow

### 1. **Create a GitHub Repository**
- A repo named `devops-case-study-2` was created and initialized with `README.md`
- .<img width="1920" height="1080" alt="Screenshot 2025-07-28 172444" src="https://github.com/user-attachments/assets/bd8bbf76-73a9-4920-99ea-dc965a4bfbdc" />

### 2. **Add Node.js Application**
- Basic Node.js app (`index.js`) returning a "Hello from Dockerized Node.js!" message.
<img width="1920" height="1080" alt="Screenshot 2025-07-28 194248" src="https://github.com/user-attachments/assets/fe718928-07b5-40e2-8632-4212937c887e" />

### 3. **Dockerize the Application**
- Created a `Dockerfile` to build the image.
- Tagged with Git commit hash and `latest`.
  <img width="1920" height="1080" alt="Screenshot (721)" src="https://github.com/user-attachments/assets/eede89fd-9f4a-438e-bcb4-17890e8df589" />

  ### 4. **Write Jenkinsfile**
- Defined `Checkout`, `Build & Push`, and `Ansible Deploy` stages.
- DockerHub credentials injected using Jenkins credentials.
<img width="1920" height="1080" alt="Screenshot (722)" src="https://github.com/user-attachments/assets/7e07ee6f-eabb-417f-9335-5673216119b6" />

### 5. **Create Ansible Playbook**
- Defined tasks to pull Docker image and run it on `localhost`.
<img width="1920" height="1080" alt="Screenshot (723)" src="https://github.com/user-attachments/assets/48146c31-c1d5-4862-8744-ea68f74a11cf" />
<img width="1920" height="1080" alt="Screenshot (724)" src="https://github.com/user-attachments/assets/9d064254-62b8-4f4f-835d-1bd2cbf47e14" />

### 6. **Configure Jenkins**
- Installed Git, Docker, and Ansible on Jenkins host.
- Created a Freestyle/Pipeline job with GitHub webhook.

### 7. **Run Jenkins Pipeline**
- Triggered pipeline on push to `develop` branch.
- Verified success of Docker build, push, and container run.
<img width="1920" height="1080" alt="Screenshot 2025-07-28 192115" src="https://github.com/user-attachments/assets/e9f83001-376b-44a5-bfb3-7e6bedcce2f1" />
<img width="1920" height="1080" alt="Screenshot 2025-07-28 192125" src="https://github.com/user-attachments/assets/580a4f31-103d-4089-9829-b41b316dea16" />
<img width="1920" height="1080" alt="Screenshot 2025-07-28 192132" src="https://github.com/user-attachments/assets/9ef3769f-d5fe-4371-9939-c911ebc6079a" />
<img width="1920" height="1080" alt="Screenshot 2025-07-28 192139" src="https://github.com/user-attachments/assets/33dba492-ae20-47e9-ad77-e0e23e34a4c2" />
<img width="1920" height="1080" alt="Screenshot 2025-07-28 192146" src="https://github.com/user-attachments/assets/7fc81ce5-e133-424a-ac96-5510f0e84a01" />
<img width="1920" height="1080" alt="Screenshot 2025-07-28 192153" src="https://github.com/user-attachments/assets/b9546a83-fa8d-4593-8b52-a539030f960e" />
<img width="1920" height="1080" alt="Screenshot 2025-07-28 192202" src="https://github.com/user-attachments/assets/2307f8ba-6a7e-496d-9832-a2e082c97f2a" />
<img width="1920" height="1080" alt="Screenshot 2025-07-28 192210" src="https://github.com/user-attachments/assets/cb9c739e-e3e5-4afc-a5d1-e33aecb9076c" />

### Final Outcomes

- End-to-end automation from code commit to container deployment
- CI/CD integrated without cloud dependency
- Secure DockerHub credential management via Jenkins
- Clear modular structure and portable setup






