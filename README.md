GKE with custom node-pool and .tfvars wich you can deploy in different regions
-

To be able to use following terraform code please follow the documentation.

Requirements :

- Terraform >= 0.12.24 
- provider.google: version = "~> 2.20" 
- google service account (.json format)
- google buckets (will be used for the backend for each region)
