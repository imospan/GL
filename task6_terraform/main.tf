#Path to AWS module
module "aws" {
  source = "./modules/aws"
}

#Path to Azure module
module "azure" {
  source = "./modules/azure"
}
