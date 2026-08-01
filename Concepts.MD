If you are starting from **zero**, I recommend learning **beyond the exam objectives**. That way you'll not only pass the exam but also become confident in real-world DevOps projects.

> **Note:** The original **EX407 (Red Hat Certified Specialist in Ansible Automation)** was retired. Today, Red Hat's Ansible certification path centers on **EX294 (RHCE)** and specialist exams such as EX374, EX457, and EX467. However, the EX407 objectives remain an excellent roadmap for learning Ansible fundamentals. ([Red Hat][1])

# Complete EX407 Learning Syllabus

---

# Module 1: Linux Fundamentals (Prerequisite)

Before Ansible, you should know Linux.

Topics:

* SSH
* File system
* Permissions
* Users & Groups
* Services
* Process Management
* Package Management
* Networking basics
* Shell commands

Commands

```bash
pwd
ls
cd
mkdir
rm
cp
mv
cat
head
tail
grep
find
chmod
chown
systemctl
dnf
yum
apt
ss
ip
hostnamectl
journalctl
```

---

# Module 2: Install and Configure Ansible

Learn

* Install Ansible
* Configure Control Node
* Managed Nodes
* Password authentication
* SSH Key authentication

Files

```
/etc/ansible/hosts
/etc/ansible/ansible.cfg
~/.ansible.cfg
```

Configuration

```
inventory
remote_user
become
forks
host_key_checking
timeout
```

Practice

* Install Ansible
* Connect 5 servers
* Configure passwordless SSH

---

# Module 3: Inventory

Understand

Static Inventory

```
web1
web2
db1
```

Groups

```
[web]
web1
web2

[db]
db1
```

Nested Groups

```
[prod]
web
db
```

Variables

```
ansible_user
ansible_port
ansible_host
ansible_password
```

Inventory Commands

```
ansible-inventory --list
ansible all --list-hosts
```

---

# Module 4: Ad Hoc Commands

Learn

```bash
ansible all -m ping

ansible all -m command

ansible all -m shell

ansible all -m copy

ansible all -m file

ansible all -m yum

ansible all -m dnf

ansible all -m service

ansible all -m setup
```

Understand

* command
* shell
* raw
* script

Difference between them.

---

# Module 5: Core Components of Ansible

Understand

* Inventory
* Modules
* Tasks
* Plays
* Playbooks
* Variables
* Facts
* Configuration File

This is one of the major exam objectives. ([interfacett.com][2])

---

# Module 6: YAML

Learn YAML syntax.

```
---
name:

hosts:

tasks:

vars:
```

Data Types

* String
* Integer
* Boolean
* List
* Dictionary

Indentation

Comments

Multi-line strings

---

# Module 7: Playbooks

Create

```yaml
---
- name:
  hosts:

  tasks:
```

Understand

* name
* hosts
* become
* vars
* tasks
* handlers

Run

```
ansible-playbook
```

Check

```
--syntax-check

--check

--diff

--limit

--tags

--skip-tags
```

---

# Module 8: Variables

Types

Play Variables

Host Variables

Group Variables

Extra Variables

Facts

Magic Variables

Prompt Variables

Files

```
group_vars/

host_vars/
```

Precedence

Variable Priority

---

# Module 9: Facts

Learn

```
ansible all -m setup
```

Understand

```
ansible_facts
```

Use facts

```
hostname

memory

processor

ip

distribution

kernel
```

---

# Module 10: Modules

Important Modules

```
copy

file

template

yum

dnf

package

service

systemd

user

group

cron

archive

unarchive

git

uri

get_url

lineinfile

replace

blockinfile

command

shell

stat

debug

set_fact

pause

reboot

wait_for
```

Know when to use each.

---

# Module 11: Loops

```
loop

with_items

with_dict

range()

product()
```

Loop over

* Users
* Packages
* Files
* Services

---

# Module 12: Conditionals

```
when
```

Examples

```
when: ansible_os_family=="RedHat"
```

Operators

```
==

!=

>

<

in

not in

and

or
```

---

# Module 13: Registers ( variables from running commands )

Capture Output

```
register:
```

Use

```
stdout

stderr

rc
```

---

# Module 14: Handlers

Learn

```
notify

handlers
```

Example

Restart nginx only if configuration changes.

---

# Module 15: Templates (Jinja2)

One of the most important topics.

Create

```
config.j2
```

Variables

```
{{ }}

{% %}
```

Conditions

Loops

Filters

Generate

```
nginx.conf

httpd.conf

app.properties
```

---

# Module 16: Roles

Understand

```
ansible-galaxy init
```

Directory Structure

```
tasks/

handlers/

templates/

files/

vars/

defaults/

meta/
```

Create

```
common

nginx

mysql

backend
```

---

# Module 17: Ansible Galaxy

Commands

```
ansible-galaxy install

ansible-galaxy init

ansible-galaxy list
```

Install Community Roles

Use requirements.yml

---

# Module 18: Tags

```
tags:

--tags

--skip-tags
```

---

# Module 19: Blocks

```
block

rescue

always
```

Error Handling

---

# Module 20: Vault

Encrypt

```
ansible-vault create

edit

encrypt

decrypt

view

rekey
```

Run

```
--ask-vault-pass

--vault-password-file
```

This is an important exam topic. ([interfacett.com][2])

---

# Module 21: Parallelism

Understand

```
forks

serial

throttle
```

---

# Module 22: Includes

```
import_tasks

include_tasks

import_role

include_role
```

---

# Module 23: Error Handling

```
ignore_errors

failed_when

changed_when

until

retries

delay
```

---

# Module 24: Shell Scripts with Ansible

Create shell scripts

Run ad hoc commands

```
#!/bin/bash

ansible all -m ping
```

---

# Module 25: Best Practices

Project Structure

```
inventory/

group_vars/

host_vars/

roles/

templates/

playbooks/

files/
```

Naming Convention

Idempotency

Reusable Roles

Documentation

---

# Module 26: Real-world Labs

Build these from scratch:

* Install Apache
* Install Nginx
* Install MySQL
* Install NodeJS
* Deploy React frontend
* Deploy Java application
* Deploy Python application
* Configure SSH
* Create users
* Configure sudo
* Deploy Docker
* Update Linux servers
* Reboot servers
* Configure Cron jobs
* Configure Firewall
* Install Git
* Install Java
* Deploy a three-tier application

---

# Module 27: Exam Practice

Practice these daily:

* Write playbooks without notes.
* Configure inventories.
* Use variables, facts, templates, and roles.
* Secure secrets with Vault.
* Troubleshoot failed playbooks.
* Complete tasks within a time limit.

---

# Skills You Must Master

By the end, you should be able to:

* ✅ Install and configure Ansible
* ✅ Build inventories
* ✅ Run ad hoc commands
* ✅ Write playbooks from scratch
* ✅ Manage variables and facts
* ✅ Use Jinja2 templates
* ✅ Create reusable roles
* ✅ Install roles from Ansible Galaxy
* ✅ Protect secrets with Ansible Vault
* ✅ Automate complete Linux server deployments
* ✅ Troubleshoot and debug Ansible automation

## Recommended learning order

1. Linux Fundamentals
2. YAML
3. Install Ansible
4. Inventory
5. Ad Hoc Commands
6. Playbooks
7. Variables & Facts
8. Modules
9. Loops & Conditionals
10. Handlers
11. Templates (Jinja2)
12. Roles
13. Ansible Galaxy
14. Vault
15. Error Handling
16. Real-world Projects
17. Mock Exam Practice

Since you've already been learning **Linux, AWS, DevOps, and Ansible playbooks**, this sequence should fit well with your current progress and help you build toward RHCE/Ansible automation certifications.
