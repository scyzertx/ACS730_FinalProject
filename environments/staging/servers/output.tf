
output "Staging_DNS_Name" {
  value = module.LB-Staging.LB_DNS_Name
}


output "Staging_Bastion_PublicIP" {
  value = aws_instance.bastion.public_ip
}