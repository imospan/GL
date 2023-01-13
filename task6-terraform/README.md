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

First of all, you need to download and configure VS Code \link\, create a SSH key-pair\\ and credentials for AWS\\ an MS Azure.
Then you can copy .tf files and modules to your folder, edit your credenetials and run:
```
terraform init
terraform plan
terraform apply
```
After deploying infrastracture, you'll be able to see public IP's in outputs.
