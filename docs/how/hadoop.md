# How to install Installing CDH 5 with YARN?

The **Cloudera distribution of Apache Hadoop** and other related open-source projects, including Cloudera Impala and Cloudera Search. CDH also provides security and integration with numerous hardware and software solutions.

- [Cloudera Documentation Set](http://www.cloudera.com/content/cloudera/en/documentation/core/latest/topics/introduction.html)

## VirtualBox

[**VirtualBox**](https://www.virtualbox.org/) is a powerful x86 and AMD64/Intel64 virtualization product for enterprise as well as home use.

- [Download VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- Run the VirtualBox installer, which will place VirtualBox into your Applications folder.

## Ubuntu Server

Label       | Bootable flag | Size       | Mount point
------------|---------------|------------|------------
boot( MBR)  | yes           | 2GB        | /boot
swap        | n/a           | 8GB        | n/a
root        | no            | remainder  | /
tmp         | no            | 8GB        | /tmp

Hard Disk = 64GB --remainder

> Note: [Cloning a VM in Virtual Box](https://www.youtube.com/watch?v=Qy1cdF2mtoU) 

## Java

This article will help you to Install Oracle JAVA 8 (JDK/JRE 8u25) on Ubuntu 14.04 LTS, 12.04 LTS and 10.04 and LinuxMint systems using PPA File. To Install Java 8 in CentOS, Redhat and Fedora read This Article.

**Add webupd8team Java PPA repository** in your system and **install Oracle Java 8** using following set of commands:

    $ sudo add-apt-repository ppa:webupd8team/java
    $ sudo apt-get update
    $ sudo apt-get install oracle-java8-installer

Using step below **verify** installed version using following command:

    samov004@ubuntu-server:~$ java -version
    
    java version "1.8.0_60"
    Java(TM) SE Runtime Environment (build 1.8.0_60-b27)
    Java HotSpot(TM) 64-Bit Server VM (build 25.60-b23, mixed mode)

In **Webupd8** ppa repository also providing a package to **set environment variables**, Install this package using following command.

    $ sudo apt-get install oracle-java8-set-default
    
> References: [`https://launchpad.net/~webupd8team/+archive/java`](
https://launchpad.net/~webupd8team/+archive/java)

## CDH5 and YARN

- [Installing CDH 5 with YARN on a Single Linux Node in Pseudo-distributed mode](http://www.cloudera.com/content/cloudera/en/documentation/core/latest/topics/cdh_qs_yarn_pseudo.html)
