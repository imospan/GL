Task 5: Configure Ansible playbook and roles ([link](https://github.com/yurnov/IaC_Ansible_basecamp/blob/master/08-homework.md))
-----------------
Firstly, I've launched 4 instances on AWS (1 main and 3 nodes).
![instances](https://user-images.githubusercontent.com/106439773/211191231-4d921bd5-f74e-47b2-8499-dcee1c68adec.png)
Then I've installed Ansible with ```sudo apt install ansible``` on main and cofigured [ansible.cfg](https://github.com/imospan/devops_basecamp/blob/main/task5_ansible/ansible.cfg), [inventory](https://github.com/imospan/devops_basecamp/blob/main/task5_ansible/inventory.txt) file, my [playbook](https://github.com/imospan/devops_basecamp/blob/main/task5_ansible/playbook.yml) and roles for this task: [creating file](https://github.com/imospan/devops_basecamp/blob/main/task5_ansible/roles/create_file/tasks/main.yml) and [fetching distro](https://github.com/imospan/devops_basecamp/blob/main/task5_ansible/roles/distro_version/tasks/main.yml).


The result of playbook's run can be seen on a screen:
![ans_final](https://user-images.githubusercontent.com/106439773/211191398-0dd64fe1-d70b-4c08-b9d4-46c21c3f04f7.png)
