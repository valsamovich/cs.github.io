# Install JAVA 8 on Ubuntu & Linux

This article will help you to Install Oracle JAVA 8 (JDK/JRE 8u25) on Ubuntu 14.04 LTS, 12.04 LTS and 10.04 and LinuxMint systems using PPA File. To Install Java 8 in CentOS, Redhat and Fedora read This Article.

## Installing Java 8 on Ubuntu

First you need to add webupd8team Java PPA repository in your system and install Oracle Java 8 using following set of commands:

    $ sudo add-apt-repository ppa:webupd8team/java
    $ sudo apt-get update
    $ sudo apt-get install oracle-java8-installer

Verify Installed Java Version

After successfully installing oracle Java using above step verify installed version using following command:

    samov004@ubuntu-server:~$ java -version
    
    java version "1.8.0_60"
    Java(TM) SE Runtime Environment (build 1.8.0_60-b27)
    Java HotSpot(TM) 64-Bit Server VM (build 25.60-b23, mixed mode)


## Configuring Java Environment

In **Webupd8** ppa repository also providing a package to set environment variables, Install this package using following command.

    $ sudo apt-get install oracle-java8-set-default
    
> References: `https://launchpad.net/~webupd8team/+archive/java`
