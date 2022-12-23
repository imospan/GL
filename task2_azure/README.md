Task:
1. Get test account on Azure
2. Create 2 Linux VMs with webserver (apache or nginx) installed
3. Configure loadbalancer to serve data from these VMs
4. Export resulting infrastructure as an ARM template and commit to your repository.
5. Extra points: Web-server installation should be handled by template
-------------
At first, I tried to start Apache manually by script in CentOS, but then decided to learn how to use cloud-init with Ubuntu. Both script and init included in repo.

I've created and configured resource group as shown below: 
![alt text](https://github.com/imospan/devops_basecamp/blob/main/task2_azure/GL_task_schema.png?raw=true)

Attaching these screens to show that LB is working:

![alt text](https://github.com/imospan/devops_basecamp/blob/main/task2_azure/screen1.png?raw=true)
![alt text](https://github.com/imospan/devops_basecamp/blob/main/task2_azure/screen2.png?raw=true)

Exported templates are added to repo as JSON files.
