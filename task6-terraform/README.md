Task 6: Terraform
--------------
Requirements:
-	Create two terraform modules for provisioning one AWS and one Azure instance;
-	Use variables.
-	Provision one SSH public key for created instances;
-	Make your instances available to everyone on the web;
-	Add public IP of instances to Output Values;
-	Install Grafana to your instances;
-	Create a beautiful repository structure and clear readme file with information about your project.
-	Add terraform apply output to the last section of your readme.
_____________________

First of all, you'll need to download and configure [VS Code](https://code.visualstudio.com/download) and create your [SSH key-pair](https://adamtheautomator.com/add-ssh-key-to-vs-code/).\
Get credentials for AWS as described [here](https://docs.aws.amazon.com/general/latest/gr/aws-sec-cred-types.html).\
I'd recommend you to use access keys as [environment variables](https://registry.terraform.io/providers/hashicorp/aws/2.34.0/docs)\
How to get credentials for MS Azure can be read [here](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/azure_cli).\
_________________
Then you can copy .tf files and modules to your folder, edit your credenetials and run:
```
terraform init
terraform plan
terraform apply -auto-approve
```
After deploying infrastracture, you'll be able to see public IP's in outputs.

Use ```terraform destroy``` to kill your nodes.
