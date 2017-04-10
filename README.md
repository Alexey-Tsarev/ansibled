# Ansibled
This repository contains Ansible playbooks for my purposes.

## Content
### Docker host
In the `lamp-centos7` directory there is an Ansible playbooks for preparing host for Docker.  
I use them for LAMP stack:  
https://github.com/AlexeySofree/dockered/#lamp  

Roles in the playbooks:
 - `common`: set hostname, set time zone, update all packages, update kernel to 4.4.x...
 - `zabbix-agent`: install zabbix-agent, setup server host
 - `docker`: install docker, docker-compose

The `lamp-centos7/group_vars/all.yml` file contains main parameters  
(change the `zabbix_server` value or comment if you don't use Zabbix).  
Put your host(s) configuration in the `lamp-centos7/host_vars` directory.

There is an example for Vagrant host in the `lamp-centos7/host_vars/vagrant-win.yml` file.  
You may test this playbook using a Vagrant VM (https://atlas.hashicorp.com/centos/boxes/7) and then run the command:
~~~
cd lamp-centos7; time ansible-playbook docker.yml -vvvv -i hosts --limit=vagrant-win; cd - > /dev/null
~~~


---
Good luck!  
Alexey Tsarev, Tsarev.Alexey at gmail.com
