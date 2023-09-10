ping:
	ansible webservers -i inventory.ini -u root -m ping

localcon:
	ansible all --limit localhost -i inventory.ini -u root -m ping

gitInstall:
	ansible-playbook git-install.yml -i inventory.ini

gitDelete:
	ansible-playbook git-delete.yml -i inventory.ini



