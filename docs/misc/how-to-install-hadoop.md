# How to install Installing CDH 5 with YARN?

The **Cloudera distribution of Apache Hadoop** and other related open-source projects, including Cloudera Impala and Cloudera Search. CDH also provides security and integration with numerous hardware and software solutions.

- [Cloudera Documentation Set](http://www.cloudera.com/content/cloudera/en/documentation/core/latest/topics/introduction.html)
- [Installing CDH 5 with YARN on a Single Linux Node in Pseudo-distributed mode](http://www.cloudera.com/content/cloudera/en/documentation/core/latest/topics/cdh_qs_yarn_pseudo.html)

## VirtualBox

[**VirtualBox**](https://www.virtualbox.org/) is a powerful x86 and AMD64/Intel64 virtualization product for enterprise as well as home use.

- [Download VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- Run the VirtualBox installer, which will place VirtualBox into your Applications folder.

## Ubuntu Server

Open VirtualBox and click **New**. Follow creation steps:

- Name and Operating system: **Ubuntu Server**
- Memory Size: **4096**
- Hard disk: **Create a virtual disc now**
    - Hard disc file type: **VDI (Virtual Disc Image)**
- Storage on physical hard drive: **Fixed size**
- File location and size: **64.00GB**

Start  **new** created VirtualBox:

- Hard Disk = 64GB --remainder
- No automatic updates
- open SSHserver
- GRUB Boot loader **yes**
- No proxy

Partition(all primary) | Label | Bootable flag | Size       | Mount point
-----------------------|-------|---------------|------------|------------
boot(MBR)              | boot  | yes           | 2GB        | /boot  
tmp                    | n/a   | no            | 8GB        | /tmp
swap use as:swap area  | n/a   | n/a           | 8GB        | n/a 
root                   | no    | remainder     | rest of..  | /

VirtualBox network settings - **Bridge adapter**

## Java

Install Oracle JAVA 8 (JDK/JRE 8u25) on Ubuntu 14.04 LTS, 12.04 LTS and 10.04 and LinuxMint systems using PPA File.

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

## CDH5 and YARN


