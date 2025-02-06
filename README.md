# Prerequisites for Deploying the Infrastructure
Before running Terraform and deploying your application, ensure you complete the following setup steps.
## 1. Create an S3 Bucket for Terraform State
Terraform requires a remote backend to store state files. Run the following command to create an S3 bucket for Terraform state management:
```bash
aws s3api create-bucket --bucket my-terraform-state-bucket --region us-east-1
```
## 2. Create a DynamoDB Table for State Locking
To prevent multiple users from modifying the Terraform state simultaneously, create a DynamoDB table for state locking:
```bash
aws dynamodb create-table --table-name terraform-locks \
--attribute-definitions AttributeName=LockID,AttributeType=S \
--key-schema AttributeName=LockID,KeyType=HASH \
--billing-mode PAY_PER_REQUEST
```
## 3. Create an ECR Repository for Docker Images
Amazon Elastic Container Registry (ECR) is required to store the container images for the deployment. Run the following command to create an ECR repository:
```bash
aws ecr create-repository --repository-name eks-repository --region us-east-1
```
## Next Steps
Once these prerequisites are set up, proceed with the Terraform deployment by running:
```bash
terraform init
terraform plan
terraform apply -auto-approve
```
Ensure your AWS credentials are properly configured before executing these commands.


