# System Configurations Files

The config is now using ansible :

To deploy it, simply run :

`ansible-playbook -i inventory --ask-vault-pass --ask-become-pass playbooks/desktop.yml`

or 

`ansible-playbook -i inventory --ask-vault-pass --ask-become-pass --skip-tags "chat" playbooks/laptop.yml`
