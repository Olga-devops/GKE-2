GKE with custom node-pool and .tfvars wich you can deploy in different regions
-

To be able to use following terraform code please follow the documentation.

Requirements :

- Terraform >= 0.12.24 
- provider.google: version = "~> 2.20" 
- google service account (.json format)
- google buckets (will be used for the backend for each region)

Your cluster.tfvars should look like this
```
google_project_id = "google-project-111111"
region = "us-central1"
cluster_version = "1.16"
cluster_node_count = "1"
google_credentials = "service-account.json"
cluster_network = "default"
subnetwork = "default"
cluster_name = "gke-cluster-name"
machine_type = "n1-standard-2"
deployment_environment = "dev"
google_bucket_name = "cluster-bucket"
```
After you finish with defining all required variables go ahead and run 
`source set-env.sh configurations/us-central1/cluster.tfvars`
It will create a backend for environment you specified after that run
`terraform apply -var-file $DATAFILE`
It will create GKE in us-central1. Do same steps to create GKE in other regions
