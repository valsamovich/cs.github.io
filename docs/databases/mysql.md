# MySQL

**MySQL** is an open-source relational database management system (RDBMS).

## Install (for Mac)

1. **Download MySQL.** Go to the downloads page at [mysql.com](http://dev.mysql.com/downloads/). Under the section "MySQL Community Server" click on the "Download" link. Download the DMG Archive, not the compressed TAR Archive.
2. **Access the installers.** Go the the directory where the .dmg file was downloaded to and mount the .dmg file by double clicking it. The .dmg contains the MySQL and MySQL Startup installer packages.
3. **Install MySQL.** Double-clicking on mysql*.pkg icon starts an installer wizard that takes you through a few intuitive installation steps. Once you click through the wizard and accept a license agreement you should see the "install succeeded" page.
4. **Verify Install.** Fire up the Terminal and type in: `cd /usr/local`. Verify that there are items: `/usr/local/mysql-VERSION`
5. **Restart your computer.** When the computer reboots, it will startup the database server allowing you to connect to it.
6. **Use MySQL.** Type in: `/usr/local/mysql/bin/mysql -u root -p` The last part of the command tells it you want to start it up as the root user and that you'd like to be prompted for a password. MySQL command prompt shoud appear: `mysql>`

Connecting to the **MySQL** Server

    mysql -u [username] -p[password] -h [hostname] [database] 

    -u: username
    -p: password (**no space after**)
    -h: host
    last one is name of the database that you wanted to connect.

Using MySQL client (e.g CLI, Query Browser) to check MySQL version:
    
    SELECT version();
    SELECT @@version;

Reset MySQL root(generated default password) password:

    SET PASSWORD = PASSWORD('[new-password]');

Create database:

    create database [database-name];
