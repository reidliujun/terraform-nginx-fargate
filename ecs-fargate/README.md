# Terraform project to run a dummy nginx website with ECS fargate

### This project will create the following resources
- A new VPC
    - 2 private subnets + 2 public subnets
    - Internet Gateway
- A new ECS cluster
    - ECS task to run Fargate with official nginx docker image
    - ECS service 
- An ALB and a target group
- Security groups needed (whitelisting IPs for the ALB)
- IAM needed

The project will output the DNS of the ALB.

### To run the project, put the AWS secrets and keys in `version.tf`
```
terraform init
terraform apply
```

### To clean up the resources, run
```
terraform destroy
```

### Pros and Cons of the solution

#### Pros of using AWS ECS Fargate
- No need to maintain servers
- Scaling is easy with just Fargate configuration
- Price is based on usage which is very friendly for a small project with little usage

### Cons of using AWS ECS Fargate
- Less visibility as there is no such traditional server/container to log into to see what is actually happening on the container. Typical use case would be to tune the memory usage of an application/docker image in production.
- Can be expensive with a mature project in practise compare to other solutions such as EKS
- Fargate is required to have a requested CPU/Memory to run due to billing, which has less flexibility compared to other solution such as EKS(CPU usage can be over the request if the node still has available computing power)
