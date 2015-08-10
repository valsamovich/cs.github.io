# How to use SSH?

**SSH** is one essential tool to master as a system administrator. **SSH**, or Securev *Shell*, is a protocol used to securely log into remote systems. It is the most common way to access remote Linux an Unix-like servers, such as VPS instances.

## BasicSyntax

The tool on Linux for connecting to a remote system using **SSH** is called, unsurprisingly , `ssh`. The most basic form of the command is:

    ssh [remote_host]

The remote_host in this example is the IP address or domain name that you are trying to connect to. This command assumes that your username on the remote system is the same as your username on your local system. If your username is different on the remote system, you can specify it by using this syntax:

    ssh [remote_username]@[remote_host]

Once you have connected to the server, you will probably be asked to verify your identity by providing a password. To exit back into your local session, simply type:

    exit

## How Does SSH Work?

**SSH** works by connecting a client program to an `ssh server`. In the above commands, ssh is the client program. The `ssh` server is already running on the remote_host that we specified.

In your VPS, the sshd server should already be running. If this is not the case, click on the *Console Access* button from your droplet page:

> Image

You will be presented with a login screen:

> Image

Log in with your credentials. The process needed to start an ssh server depends on the distribution of Linux that you are using. On Ubuntu, you can start the ssh server on the VPS by typing:

    sudo service ssh start

That should start the sshd server and you can then log in remotely.

Read more: https://www.digitalocean.com/community/tutorials/how-to-use-ssh-to-connect-to-a-remote-server-in-ubuntu










