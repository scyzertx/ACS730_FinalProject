# ACS730_FinalProject
FinalProject: Two-Tier web application automation with Terraform.

For the implementation of the project implement following steps:
#####################################################################
Create 3 buckets  each for staging , dev and prod environment  
- acs730project-bucket-dev
- acs730project-bucket-staging
- acs730project-bucket-prod
Note: Change in bucket name must be update the bucket name in config.tf file of all environments netwoork. 
ACS730_FinalProject/environments/<env-name>/network/config.tf
 
Create folder in each bucket as
  - dev-images/
  - staging-images/
  - prod-images/
  After creating folder upload image in each folder with name 
  - dev-image.jpeg
  - staging-image.jpeg
  - prod-image.jpeg
Note: Change in image name must be update in config.tf file of all environments netwoork. 
ACS730_FinalProject/environments/<env-name>/network/config.tf

Now clone the project form prod to local environment

  git clone https://github.com/scyzertx/ACS730_FinalProject.git
 
After this create 3 ssh key pairs for each  environment with key name: sshkey_Dev // sshkey_Prod // sshkey_Staging in the environment
 Assign the path properly after creating the ssh key pair.
  
Update the cloud 9 public and private ip as well as system ip ACS730_FinalProject/modules/globalvars/output.tf

######################################################################################
 Deploy the infrastructure in sequential order
 - terraform init
 - terraform plan
 - terraform apply --auto-approve
  
  Network and servers
  ACS730_FinalProject/environments/dev/network/
  ACS730_FinalProject/environments/dev/servers/
  ACS730_FinalProject/environments/staging/network/
  ACS730_FinalProject/environments/staging/servers/
  ACS730_FinalProject/environments/prod/network/
  ACS730_FinalProject/environments/prod/network/
  
  This will create Bastion Public IP address and URl for DNS name 
  Use the DNS name from load balancer in webbrowser to load website from each environment
  
 ##########################################################################
 Destroy the configuration
  terraform destroy --auto-approve
  in each network and servers
  ACS730_FinalProject/environments/dev/network/
  ACS730_FinalProject/environments/dev/servers/
  ACS730_FinalProject/environments/staging/network/
  ACS730_FinalProject/environments/staging/servers/
  ACS730_FinalProject/environments/prod/network/
  ACS730_FinalProject/environments/prod/network/
