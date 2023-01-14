terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure AWS provider. 
#Use keys as environment variables or uncomment and enter your own.
provider "aws" {
  region = "us-east-1"
  #access_key = [your_key]
  #secret_key = [your_key]
}

# Configure Azure provider.
#Use keys as environment variables or uncomment and enter your own.export ARM_CLIENT_ID=55f48348-7cc6-4970-af43-6224003fe231

provider "azurerm" {
  features {}
  #subscription_id = ""
  #client_id       = ""
  #client_secret   = ""
  #tenant_id       = ""
}
