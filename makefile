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


