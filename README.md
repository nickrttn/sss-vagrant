# Serverside Scripting w/ Vagrant

Instead of using a huge VM image, you could use Vagrant.

Vagrant automatically sets up a small Ubuntu server image with the required software and links a folder on your computer to the VM. This way you can open that folder easily on your host machine and run the code in a virtual machine.

This version does not supply MySQL, yet, but it's on its way.

## Instructions (OS X specific)

- Install [Vagrant](https://www.vagrantup.com/downloads.html)
- Open up your Terminal.app
- Clone this repository; `https://github.com/nickrttn/sss-vagrant.git`
- Execute `vagrant plugin install vagrant-hostsupdater`
- Navigate to the repository you just cloned and execute `vagrant up` to download and provision the VM.
- Open your browser and navigate to `http://node.dev` to witness your code in all its glory.
