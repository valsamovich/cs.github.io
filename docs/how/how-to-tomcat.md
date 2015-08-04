# Apache Tomcat 

**Apache Tomcat™** is an open source software implementation of the Java Servlet, JavaServer Pages, Java Expression Language and Java WebSocket technologies. The Java Servlet, JavaServer Pages, Java Expression Language and Java WebSocket specifications are developed under the *Java Community Process*.

- [Apache tomcat](http://tomcat.apache.org/)

## Run

This commands must be executed inside `bin` folder of Apache Tomcat. If permissiond are denied, run this command first inside `bin` folder `sudo chmod 777 *`

Command                      | Description         
-----------------------------|---------------------
`$ sudo ./catalina.sh start` | Start Apache Tomcat 
`$ sudo ./catalina.sh stop`  | Stop Apache Tomcat

To validate the status of the tomcat `ps -ef | grep tomcat`
