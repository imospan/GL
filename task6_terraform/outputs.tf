output "AWS_public_IP" {
  value = module.aws.aws_public_ip
}

output "Azure_public_IP" {
  value = module.azure.azure_public_ip
}
