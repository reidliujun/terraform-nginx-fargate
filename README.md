# Terraform project to run a dummy nginx website with ECS fargate

This project will create the following resources
- A new VPC
    - 2 private subnets + 2 public subnets
    - Internet Gateway
- A new ECS cluster
    - ECS task to run Fargate with nginx Fargate
    - ECS service 
- An ALB and a target group
- Security groups needed (whitelisting IPs for the ALB)
- IAM needed

The project will output the DNS of the ALB.


