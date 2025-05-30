# Task 4: Provisioning Docker Container using Terraform

## 🧾 Task Goal
Use *Terraform* to create and manage a *Docker container* on my local machine.  
This is done using *Infrastructure as Code (IaC)*.

---

## 🔧 Tools Used
- Terraform
- Docker
- Docker provider for Terraform

---

## 📂 Files in This Project
- main.tf – Terraform configuration to create the container
- Execution logs (like terraform plan, apply, and destroy) – optional for review

---

## ✅ What This Setup Does
- Pulls the *nginx:latest* Docker image
- Creates a Docker container named *my-nginx-container*
- Opens *port 8080* on my computer and connects it to *port 80* in the container  
  So I can view NGINX in my browser at: http://localhost:8080

---

## 🚀 Steps to Run This

1. *Start Docker* on your system

2. *Initialize Terraform*
bash
terraform init
`

3. *Check the plan*

bash
terraform plan


4. *Apply and create the container*

bash
terraform apply
# Type 'yes' when asked


5. *Check if the container is running*

bash
docker ps


6. *Check Terraform state*

bash
terraform state list


7. *Destroy the container when done*

bash
terraform destroy
# Type 'yes' to confirm


---

## 📘 What I Learned

* How to use Terraform to set up Docker containers
* Basic commands: init, plan, apply, destroy, and state
* How to write simple Terraform code to manage infrastructure
