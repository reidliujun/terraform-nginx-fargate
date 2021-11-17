#Terraform project to launch a new EKS cluster

### Requirements
- terraform
- awscli
- kubectl

### Run
```
terraform init
terraform apply
```

### Get kubeconfig locally
```
aws eks --region eu-central-1 update-kubeconfig --name complete-QX0OJw8X
```

### Run the dummy nginx with alb
```
kubectl apply -f k8s-nginx.yaml
```