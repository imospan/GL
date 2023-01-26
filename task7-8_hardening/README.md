Task 7-8. Security hardening:
==========
Create and run a script (Ansible playbook) to harden users’ passwords by rejecting the ones that contain a username. Enforce this rule for ‘root’ as well.
------------------
I have provisioned 3 AWS EC2 instances (one main and 2 nodes), run ```sudo apt update``` and ```sudo apt install ansible``` on the main one.\
Then I've created ansible [config](https://github.com/imospan/devops_basecamp/blob/main/task7-8_hardening/ansible.cfg), [inventory](https://github.com/imospan/devops_basecamp/blob/main/task7-8_hardening/hosts.txt), [role](https://github.com/imospan/devops_basecamp/blob/main/task7-8_hardening/roles/pam-pwd-hardening/tasks/main.yml), [vars](https://github.com/imospan/devops_basecamp/blob/main/task7-8_hardening/group_vars/all.yml) and [playbook](https://github.com/imospan/devops_basecamp/blob/main/task7-8_hardening/playbook.yml) files.\
After checking with ```ansible -i hosts.txt all -m ping``` that connection was established, I've played ansible playbook:

![playbook](https://user-images.githubusercontent.com/106439773/214890131-6b1bc045-6991-4eb2-8805-2c59f090c64a.png)\
After PAM configuration on my nodes I've tried to change password to `ubuntu, ubuntu123, root, qwerty, 12345` etc:
<p align="center">
<img src="https://user-images.githubusercontent.com/106439773/214890700-f715def5-19f3-4df8-afe1-c0c11f660b80.png">
</p>
And same for root user on other node. As we can see, password security hardening script was successful:
<p align="center">
<img src="https://user-images.githubusercontent.com/106439773/214890788-2cddad34-3931-4800-a083-902c3bb122e6.png">
</p>
