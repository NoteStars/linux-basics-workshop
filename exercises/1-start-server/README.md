## Troubleshooting

## Commands
* `vagrant up` - Create and start the virtual machine. Starts an Ubuntu 24.04 environment.
* `vagrant status` Check the VM's current status.
* `vagrant ssh` Connect to the Ubuntu virtual machine.
* `exit` Disconnect from the virtual machine.
* `vagrant halt` Shutdown the virtual machine.
* `vagrant destroy` - Delete the virtual machine. 

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

### Your Challenge 
* Make a new directory: Make a new directory called `my-server`.
* Change the directory into my-server.
* Print the current directory. 
* Create a new sub-folder called `subfolder-1`, `subfolder-2` and `subfolder-3`
* List the directory and change the directory into `subfolder-1`
* Go back up a parent directory.
* Create a file named `hello.txt` and put it into `subfolder-2`
* Edit the file named `hello.txt` and put "Hello World!"
* Once you saved the text file and exited out, display the contents of the file using `cat`.
* Copy the file and name the new file `goodbye.txt`
* Remove the file named `hello.txt`
* Go back to the home directory. 
