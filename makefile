ping:
	ansible webservers -i inventory.ini -u root -m ping

localcon:
	ansible all --limit localhost -i inventory.ini -u root -m ping

gitInstall:
	ansible-playbook git-install.yml -i inventory.ini -u root

gitDelete:
	ansible-playbook git-delete.yml -i inventory.ini -u root

usersCreate:
	ansible-playbook tags.yml -i inventory.ini -t users -u root

nginx:
	ansible-playbook nginx.yml -i inventory.ini -u root

inventoryVar:
	ansible-playbook inventoryVar.yml -i inventory.ini -u root

userGitConfig:
	ansible-playbook loops.yml -i inventory.ini -u root

filters:
	ansible-playbook filters.yml -i inventory.ini -u root

register:
	ansible-playbook register.yml -i inventory.ini -u root

import:
	ansible-playbook Import/main.yml -i inventory.ini -u root

roles:
	ansible-playbook Roles/main.yml -i inventory.ini -u root
