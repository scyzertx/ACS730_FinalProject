terraform {
  backend "s3" {
    bucket = "acs730project-bucket-staging"    // Bucket where to SAVE Terraform State
    key    = "staging-servers/terraform.tfstate" // Object name in the bucket to SAVE Terraform State
    region = "us-east-1"                     // Region where bucket is created
  }
}