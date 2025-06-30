# Techeazy DevOps Deployment (EC2 + Terraform + Java 21)

This project deploys a Spring Boot application to an AWS EC2 instance using Terraform.  
The app runs on **port 80** and is automatically built and launched with **Java 21**.

---

## 🔧 Prerequisites

- Terraform installed
- AWS CLI configured with valid credentials
- A key pair in AWS (for SSH if needed)

---

## 🚀 How to Deploy

```bash
# Step 1: Initialize Terraform
terraform init

# Step 2: Preview what Terraform will do
terraform plan

# Step 3: Apply the infrastructure
terraform apply


## How to Access the Application

To access the application, follow these steps:

1. Open a web browser.
2. Enter the following URL in the browser's address bar: `http://<public-ip>`.

