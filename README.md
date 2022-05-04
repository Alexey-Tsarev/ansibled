# Ansibled
This repository contains Ansible playbooks for my purposes.

## Content
### Docker host
In the `debian_11` directory there is an Ansible playbooks for preparing host for Docker.
I use them for [LAMP stack](https://github.com/AlexeySofree/dockered/#lamp).

Roles in the playbooks:
 - `common`: set hostname, set time zone, update all packages
 - `zabbix-agent`: install zabbix-agent, setup server host
 - `docker`: install docker, docker-compose
 - ...

The `debian_11/group_vars/all.yml` file contains main parameters  
(change the `zabbix_server` value or comment if you don't use Zabbix).  
Put your host(s) configuration in the `debian_11/host_vars` directory.

There is an example of a Vagrant host in the `debian_11/host_vars/vagrant-vb.yml` file.  
You may test this playbook using a Vagrant VM.
The latest I used is [Debian 11](https://app.vagrantup.com/debian/boxes/bullseye64).
```
cd debian_11
time ansible-playbook -i vagrant-hv, -vv all.yml
```
or limit "all" by a role/tag.
For instance, apply the `common` role only and override `zabbix_server`:
```
cd debian_11
time ansible-playbook -i vagrant-hv, -e zabbix_server=10.1.1.1 --tags "common" -vv all.yml
```


---
Good luck!  
Alexey Tsarev, Tsarev.Alexey at gmail.com
