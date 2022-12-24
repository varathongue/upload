# UDP Upload

Bash script wrapper for X86_64 UDP uploader. This script has been tested on following operating systems, Submit a new issue if you need support your another operating system:

* Ubuntu 20.04
* Ubuntu 22.04



## Package requirements

Make sure to have the following packages installed before you start using the script:

* curl
  * Downloading scripts and assetes
* nmap
  * Translating network subnets into single IPs 
* screen
  * Detaching from the shell and letting it continue running even if the shell is disconnected
* shuff
  * Shuffling through the ip-list to have a random traffic pattern

using Ubuntu operating system : 
```bash
sudo apt install curl nmap screen -y
```
using Fedora operating system : 
```bash
sudo dnf install curl nmap screen -y
```

## Installation 
Create a new directory and run the script inside it:

```bash
mkdir upload
cd upload
bash -c "$(curl -L https://github.com/varathongue/upload/raw/main/install.sh)"
```
If you want to run it quickly right after install: 
```bash
mkdir upload
cd upload
bash -c "$(curl -L https://github.com/varathongue/upload/raw/main/install.sh)" @ run
```

## Usage 
Run the script using the following command : 
```bash
screen -d -S upload -m ./upload.sh
```
to see the progress run: 
```bash
screen -r upload
```
Detach from the screen without closing it by pressing CTRL+A+D. 
Verify the screen session is still running run:
```bash
screen -list
```
you should see something similair to: 
```bash
ubuntu@ubuntu:~/upload$ screen -list
There is a screen on:
	6596.upload	(DATE TIME PM)	(Detached)
1 Socket in /run/screen/S-ubuntu.
```

## Update 
Force update the ip list:

```bash
bash -c "$(curl -L https://github.com/varathongue/upload/raw/main/install.sh)" @ update-list
```

