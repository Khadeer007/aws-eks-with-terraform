# aws-eks-with-terraform
Create and Deploy AWS EKS Cluster with Terraform.
Amazon EKS (Elastic Kubernetes Service) is a managed container service to run and scale Kubernetes applications in the cloud or on-premises.

HashiCorp Terraform is an Infrastructure as Code (IaC) tool that lets you define both cloud and on-prem resources in human-readable configuration files that you can version, reuse, and share.

Prerequisite
   AWS Account
   Terraform

1. Terraform Initial Setup Configuration
Create an AWS provider. It allows to interact with the AWS resources, such as VPC, EKS, S3, EC2, and many others.


2. Network Infrastructure Setup
     Setting up the VPC, Subnets, Security Groups, etc.



   Create AWS VPC (Virtual Private Cloud).
   Create two public and two private Subnets in different availability zones.
   Create Internet Gateway to provide internet access for services within VPC.
   Create NAT Gateway in public subnets. It is used in private subnets to allow services to connect to the internet.
   Create Routing Tables and associate subnets with them. Add required routing rules.
   Create Security Groups and associate subnets with them. Add required routing rules.

3. EKS Cluster Setup
      Create EKS cluster. Kubernetes clusters managed by Amazon EKS make calls to other AWS services on your behalf to manage the resources that you use with the service. For example, EKS will create an Auto Scaling Groups for each instance group if you use managed nodes.

4. Setting up the IAM Roles and Policies for EKS: EKS requires a few IAM Roles with relevant Policies to be pre-defined to operate correctly.
    IAM Role: Create Role with the needed permissions that Amazon EKS will use to create AWS resources for Kubernetes clusters and interact with AWS APIs.
    IAM Policy: Attach the trusted Policy (AmazonEKSClusterPolicy) which will allow Amazon EKS to assume and use this role.
    
5. Node Groups (Managed) Setup
   Create a Node Group(s) to run application workload.

   IAM Role: Similar to the EKS cluster, before you create worker node group, you must create IAM role with needed permissions for the node group to communicate with other AWS services.
   IAM Policy: Attach the trusted Policy (AmazonEKSWorkerNodePolicy) which will allow amazon EC2 to assume and use this role. Also, attach the AWS managed permission Policy (AmazonEKS_CNI_Policy, AmazonEC2ContainerRegistryReadOnly)    

6. Terraform Variables
   Create IAM user with administrator access to the AWS account, and get access key and secret key for authentication.
   
7. Set Terraform variables values as per your requirements
8. Define Terraform data sources
9. Define Terraform output that required to connect with EKS cluster such as endpoint, certificate
 
 
Terraform Execution: Infrastructure Resources Provisioning
  1. terraform init: command is used to initialize a working directory containing Terraform configuration files.
  2. terraform plan: command creates an execution plan, which lets you preview the changes that Terraform plans to make to your infrastructure.
  3. terraform apply: command executes the actions proposed in a Terraform plan to create or update infrastructure.
  
  
  
