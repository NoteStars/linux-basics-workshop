## Troubleshooting

## Commands
`vagrant up` - Create and start the virtual machine. Starts an Ubuntu 24.04 environment.
`vagrant status` Check the VM's current status.
`vagrant ssh` Connect to the Ubuntu virtual machine.
`exit` Disconnect from the virtual machine.
`vagrant halt` Shutdown the virtual machine.
`vagrant destroy` - Delete the virtual machine. 

### Permission and Ownership Issues

TL;DR Check if you ran the script on `0-setup` correctly.
People who are on **Linux** -> uses file ownership and permissions to control who can access, modify, and execute files.

If you encounter a Permission denied error or Vagrant cannot access its .vagrant directory, inspect your directory permissions before attempting to fix them.
```bash
whoami
ls -la
ls -ld .
```

If files are incorrectly owned by root, you may restore ownership with:
```bash
sudo chown -R "$USER:$(id -gn)" ~/linux-basics-workshop
```

Important!
Avoid running Git or Vagrant commands with **sudo** unless explicitly required.
