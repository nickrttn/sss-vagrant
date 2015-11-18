# Serverside Scripting w/ Vagrant

Instead of using a huge VM image, you could use Vagrant.

Vagrant automatically sets up a small Ubuntu server image with the required software and links a folder on your computer to the VM.

This means you can easily open that folder in your local text editor. Using this, you don't have to dick around with FTP clients.

There's no MySQL yet, but it's coming. You will need some commandline skills for this, but it should be pretty doable. Open a Github issue if you want some more explanation or run into issues.

## Instructions (OS X specific)

**First run**
- Install [Vagrant](https://www.vagrantup.com/downloads.html)
- Open up your Terminal.app or Windows equivalent
- Clone this repository to a convenient location; ` git clone https://github.com/nickrttn/sss-vagrant.git sss-vagrant`
- Execute `vagrant plugin install vagrant-hostsupdater`
- Navigate to the repository you just cloned (`cd sss-vagrant`) and execute `vagrant up` to download and provision the VM. This is going to take a while! The script might ask you some questions.
- Open your browser and navigate to `http://node.dev:3000/hello` to witness your code in all its glory.
- Open the app folder in your favorite text editor and edit away.

**Regular use**
- In Terminal.app, navigate to the folder you downloaded earlier (`cd ???/sss-vagrant`)
- Execute `vagrant up`. Your VM will then be started and `node.dev` will be available in the browser.
- When you are done, execute `vagrant halt`. This will stop the running VM.

### Installing new packages

If you've added new npm packages to your `package.json` you can install them by navigating to your project folder (`sss-vagrant`) and executing `vagrant ssh`. Note: this only works when the You will then find yourself logged into the VM. Navigate into the app folder `cd /home/vagrant/app` and execute `npm install`. Your new packages will be installed.

## Background

I use [`forever`](https://github.com/foreverjs/forever) for running the code. Forever wraps node in a headless process (don't worry, you don't have to get this), watches for code changes (using the `--watch` option) and loads them automatically. It itself is written in Node.js

## Warning

I have not tested this on Windows.

## To Do

- use port 80
- always start `forever` on start
