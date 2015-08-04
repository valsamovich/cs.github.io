# Web Servers

A **web server** is an information technology that processes requests via HTTP, the basic network protocol used to distribute information on the World Wide Web. The term can refer either to the entire computer system, an appliance, or specifically to the software that accepts and supervises the HTTP requests.

## Context

- [Apache HTTP](https://github.com/valerysamovich/engineering/blob/master/docs/how/servers.md#apache-http)
- [Apache Tomcat](https://github.com/valerysamovich/engineering/blob/master/docs/how/servers.md#apache-tomcat)
- [Zend](https://github.com/valerysamovich/engineering/blob/master/docs/how/servers.md#zend) 

## Apache HTTP

The **Apache HTTP Server** Project is an effort to develop and maintain an open-source HTTP server for modern operating systems including UNIX and Windows NT. The goal of this project is to provide a secure, efficient and extensible server that provides HTTP services in sync with the current HTTP standards.

- [ Apache HTTP Server](http://httpd.apache.org/)

Command                             | Description         
------------------------------------|---------------------
`$ sudo apachectl start`            | Start Apache HTTP   
`$ sudo apachectl stop `            | Stop Apache HTTP
`$ sudo apachectl graceful-stop`    | Graceful Stop
`$ sudo apachectl restart `         | Restart Apache HTTP
`$ sudo apachectl graceful-restart` | Graceful restart

The use of **graceful** in stopping and restarting allows a less abrupt halt to proceedings allowing any existing webserving to complete before the process is terminated. To find the **Apache** version:

    httpd -v

## Apache Tomcat

**Apache Tomcat™** is an open source software implementation of the Java Servlet, JavaServer Pages, Java Expression Language and Java WebSocket technologies. The Java Servlet, JavaServer Pages, Java Expression Language and Java WebSocket specifications are developed under the *Java Community Process*.

- [Apache Tomcat™](http://tomcat.apache.org/)

This commands must be executed inside `bin` folder of Apache Tomcat. If permissiond are denied, run this command first inside `bin` folder `sudo chmod 777 *`

Command                      | Description         
-----------------------------|---------------------
`$ sudo ./catalina.sh start` | Start Apache Tomcat 
`$ sudo ./catalina.sh stop`  | Stop Apache Tomcat

- Validate the status of the tomcat in terminal `ps -ef | grep tomcat`
- Validate the status of the tomcat in browser `http://localhost:8080/`

## Zend

**Zend Server** refers to a **PHP application server** product line offered by Zend Technologies, released in early 2009 with production support available for Windows, Linux, OS X and IBM i. Default location - `/usr/local/zend/bin/zendctl.sh restart`

Command                     | Description         
----------------------------|---------------------
`$ sudo zendctl.sh start`   | Start Zend Server   
`$ sudo zendctl.sh restart` | Restart Zend Server 
`$ sudo zendctl.sh stop`    | Stop Zend Server    

