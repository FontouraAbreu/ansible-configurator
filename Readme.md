# Ansible Configurator

This is a simple tool to help me configure my personal Linux environment.

The ideia is to have a simple way to configure my environment in a new machine.

## How to use

1. Clone this repository
2. Run the `install-ansible.sh` script
3. Execute the `ansible-playbook` command to configure your environment

```bash
ansible-playbook playbook.yml
```

## Structure

This project will follow the `roles` structure from Ansible where each **role** will be responsible for a specific configuration or package installation.

the `ansible` directory should contain the following structure:

```
ansible
├── roles
│   ├── core
│   │   ├── tasks
│   │   │   └── main.yml
│   │   │   └── install_git.yml
│   │   │   └── config_git.yml
│   │   │   └── <other core tasks>.yml
│   ├── miscelaneous
│   │   ├── tasks
│   │   │   └── main.yml
│   │   │   └── <other miscelaneous tasks>.yml
│   ├── <other roles>
├── playbooks
│   ├── sites.yml
├── Inventory
│   ├── hosts
```

If you want to add a new core installation or configuration, you should create a new task in the `core/tasks` directory and include it in the `core/tasks/main.yml` file.

The same applies to the other roles.

## What will be installed

- git
- snap
- vscode
- docker
- docker compose
- spotify
- terminator
- pip
