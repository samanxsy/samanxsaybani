# My Portfolio Terminal
Welcome to my portfolio repository!

[![Terraform CI](https://github.com/samanxsy/portfolio-terminal/actions/workflows/terraformCICD.yml/badge.svg)](https://github.com/samanxsy/portfolio-terminal/actions/workflows/terraformCICD.yml)
[![portfolio CD](https://github.com/samanxsy/portfolio-terminal/actions/workflows/portfolio-CD.yml/badge.svg)](https://github.com/samanxsy/portfolio-terminal/actions/workflows/portfolio-CD.yml)

## Table of Contents
- About
- Features
- Serverless frontend with Amazon S3
- Infrastructure as Code with Terraform
- Continuous Integration and Deployment with GitHub Actions
- License


### About
This repository houses the source code and the infrastructure of my portfolio, and it's designed to resemble a Linux terminal. You can use the terminal interface to connect to my various online profiles and portfolios.  

The code is hosted and served by an Amazon S3 bucket and it's infrastructure is managed as code Terraform. New updates and versions of the code are managed by GitHub Actions CI/CD pipeline

### Features
- Amazon S3 static web hosting
- Infrastructure managed as code using Terraform
- Remote state management with Terraform Cloud
- Continuous Integration and Deployment using GitHub Actions
- Reusable S3 module (For Web Hosting purposes)

### Serverless frontend with Amazon S3
To host the code for this portfolio interface, I leveraged Amazon S3 static website hosting abilities to ensure a scale-able and cloud-native solution  
( xx So I'll be safe in case of an insane demand for my portfolio xx)

### Infrastructure as Code with Terraform
I manage the infrastructure for this project using Terraform, enabling easy and consistent provisioning and management of AWS resources. The Terraform State is managed and stored in Terraform Cloud

### Continuous Integration and Deployment with GitHub Actions
I've implemented a CI/CD pipeline using GitHub Actions to automate the deployment process of the code and its infrastructure. GitHub Actions automates the testing, building, and deployment of changes, ensuring that updates to my portfolio are delivered to S3 seamlessly

### Portfolio Interface
[Click here to check out my Portfolio!](https://samanxsaybani.s3.eu-central-1.amazonaws.com/index.html)

### License
This project is licensed under the **[MIT License](https://opensource.org/license/mit/)**
