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
Setup
----------------------
First of all, you'll need to download and configure [Terraform](https://developer.hashicorp.com/terraform/downloads), [VS Code](https://code.visualstudio.com/download) and create your [SSH key-pair](https://adamtheautomator.com/add-ssh-key-to-vs-code/).\
Then, get AWS credentials in IAM via AWS console as described [here](https://docs.aws.amazon.com/general/latest/gr/aws-sec-cred-types.html).\
I'd recommend you to use your access keys as [environment variables](https://registry.terraform.io/providers/hashicorp/aws/2.34.0/docs#environment-variables) as an easy and safe way to make Terraform able to deploy your EC2 instance.\
To use MS Azure credentials you will need [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli). How to authenticate using it can be read [here](https://developer.hashicorp.com/terraform/tutorials/azure-get-started/azure-build).
_________________
Deployment
---------------
Now you can copy .tf files and modules to your directory, edit your credenetials and run:
```
terraform init
terraform plan
terraform apply -auto-approve
```
After deploying infrastracture, you'll be able to see public IP's in outputs.
![vsc](https://user-images.githubusercontent.com/106439773/212533992-977087fd-00d7-4589-a99c-c01cf96e7fb4.png)

Links and screens with deployed Grafana, login is available on port 80:\
http://54.87.131.90

![aws_graf](https://user-images.githubusercontent.com/106439773/212534154-89a449fa-e550-4289-989f-fe22b419fa68.png)\
http://172.174.4.42

![azure_graf](https://user-images.githubusercontent.com/106439773/212534548-3db40282-fec0-4822-9637-bc3592596b71.png)

Both nodes can be accessed with one key using commands:
```
ssh -i ~/.ssh/id_rsa ubuntu@54.87.131.90
ssh -i ~/.ssh/id_rsa ubuntu@172.174.4.42
```
Use ```terraform destroy``` to kill your nodes when finished.
