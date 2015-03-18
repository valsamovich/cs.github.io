engineering
===========

Collection of commands for Unix (Command Line), Git, Markdown, Zend Server, ItelliJ, Eclipse, Java, Web Services, Design Patterns, and etc. Glossary of software engineering, programming and etc.

- [Unix](https://github.com/valerysamovich/engineering/blob/master/unix.md)
- [Git](https://github.com/valerysamovich/engineering/blob/master/git.md)
- [Markdown](https://github.com/valerysamovich/engineering/blob/master/markdown.md)

Zend
----

> **Zend Server** refers to a **PHP application server** product line offered by Zend Technologies, released in early 2009 with production support available for Windows, Linux, OS X and IBM i. Default location - `/usr/local/zend/bin/zendctl.sh restart`

Command                     | Description         
----------------------------|---------------------
`$ sudo zendctl.sh start`   | Start Zend Server   
`$ sudo zendctl.sh restart` | Restart Zend Server 
`$ sudo zendctl.sh stop`    | Stop Zend Server    

Java 
----

Setting JAVA_HOME path from CMD (Programmaticly).

Command                       | Description
------------------------------|-----------------------------------------------------------------------------
`echo %JAVA_HOME%`            | Validate `JAVA_HOME`
`setx -m JAVA_HOME "<PATH>"`  | Set `JAVA_HOME`. `<PATH>` - example: `"C:\Program Files\Java\jdk1.7.0_71"`
`%PATH%`                      | Validate `PATH`
`setx -m PATH "%PATH%;<PATH>` | Set `PATH`. `PATH` - example: `"C:\Program Files\Java\jdk1.7.0_71\bin"`

**Note:** Run the Command Prompt as Administrator. When you change an environment variable by using the Windows setx command, you must close and reopen the Command Prompt window for the change to take effect.

In computer **programming**, a [**declaration**](http://en.wikipedia.org/wiki/Declaration_%28computer_programming%29) specifies properties of an identifier: it declares what a word (identifier) means. **Declarations** are most commonly used for functions, variables, constants, and classes, but can also be used for other entities such as enumerations and type definitions.

In computer science, an [**implementation**](http://en.wikipedia.org/wiki/Implementation) is a realization of a technical specification or algorithm as a **program**, software component, or other computer system through computer **programming** and deployment. Many implementations may exist for a given specification or standard.

IntelliJ IDEA and Eclipse Shortcuts
-----------------------------------

> In computer programming, [**Eclipse**](https://eclipse.org/home/index.php) is an integrated development environment (IDE). It contains a base workspace and an extensible plug-in system for customizing the environment. Written mostly in Java. Eclipse may be used to develop applications in other programming languages: Ada, ABAP, C, C++, COBOL, Fortran, Haskell, JavaScript, Lasso, Natural, Perl, PHP, Prolog, Python, R, Ruby (including Ruby on Rails framework), Scala, Clojure, Groovy, Scheme, and Erlang.

> [**IntelliJ IDEA**](https://www.jetbrains.com/idea/) is a Java IDE by [JetBrains](http://en.wikipedia.org/wiki/JetBrains).

Eclipse            |    IntelliJ IDEA         |    Description
-------------------|--------------------------|------------------------------------------
`F4`               | `ctrl+h`                 | show the type hierarchy
`crl+alt+g`        | `ctrl+alt+F7`            | find usages
`ctrl+shift+u`     | `ctrl+f7`                | finds the usages in the same file
`alt+shift+r`      | `shift+F6`               | rename
`ctrl+shift+r`     | `ctrl+shift+N`           | find file `/` open resource
`ctrl+shift+x, j`  | `ctrl+shift+F10`         | run (java program)
`ctrl+shift+o`     | `ctrl+alt+o`             | organize imports
`ctrl+o`           | `ctrl+F12`               | show current file structure `/` outline
`ctrl+shift+m`     | `ctrl+alt+V`             | create local variable refactoring
`syso ctrl+space`  | `sout ctrj+j`            | `System.out.println(“”)`
`main Ctrl+Space`  | `psvm`                   | To create main() method
`alt + up/down`    | `ctrl + shift + up/down` | move lines
`ctrl + d`         | `ctrl + y`               | delete current line
`???`              | `alt + h`                | show subversion history
`ctrl + h`         | `ctrl + shift + f`       | search (find in path)
`ctrl + 1`         | `ctrl + alt + v`         | introduce local variable
`alt + shift + s`  | `alt + insert`           | generate getters / setters
`ctrl + shift + f` | `ctrl + alt + l`         | format code
`ctrl + y`         | `ctrl + shift + z`       | redo
`ctrl + shift + c` | `ctrl + /`               | comment out lines
`ctrl + alt + h`   | `ctrl + alt + h` (same!) | show call
`none ?`           | `ctrl + alt + f7`        | to jump to one of the callers of a method
`ctrl + shift + i` | `alt + f8`               | evaluate expression (in debugger)
`F3`               | `ctrl + b`               | go to declaration (e.g. go to method)

Web Services
------------
> A [**Web server**](http://www.w3schools.com/webservices/default.asp) is a program that, using the client/server model and the World Wide Web's Hypertext Transfer Protocol ( HTTP ), serves the files that form Web pages to Web users (whose computers contain HTTP clients that forward their requests).

- Web services are application components
- Web services communicate using open protocols
- Web services are self-contained and self-describing
- Web services can be discovered using UDDI
- Web services can be used by other applications
- HTTP and XML is the basis for Web services

The [**Web Services Description Language (WSDL)**](http://www.w3schools.com/webservices/ws_wsdl_intro.asp) is an XML-based language used to describe the services a business offers and to provide a way for individuals and other businesses to access those services electronically.

- WSDL stands for Web Services Description Language
- WSDL is written in XML
- WSDL is an XML document
- WSDL is used to describe Web services
- WSDL is also used to locate Web services
- WSDL is a W3C recommendation

The WSDL Document Structure with example

Element	     | Description
-------------|--------------------------------------------------------------------
`<types>`	   | A container for data type definitions used by the web service
`<message>`	 | A typed definition of the data being communicated
`<portType>` | A set of operations supported by one or more endpoints
`<binding>`	 | A protocol and data format specification for a particular port type

```
<definitions>
  <types>
    data type definitions........
  </types>
  <message>
    definition of the data being communicated....
  </message>
  <portType>
    set of operations......
  </portType>
  <binding>
    protocol and data format specification....
  </binding>
</definitions>
```
**UDDI (Universal Description, Discovery, and Integration)** is an XML-based registry for businesses worldwide to list themselves on the Internet. Its ultimate goal is to streamline online transactions by enabling companies to find one another on the Web and make their systems interoperable for e-commerce.

- UDDI stands for Universal Description, Discovery and Integration
- UDDI is a directory service where companies can search for Web services.
- UDDI is described in WSDL
- UDDI communicates via SOAP

The [**Resource Description Framework (RDF)**](http://www.w3schools.com/webservices/ws_rdf_intro.asp) is a family of World Wide Web Consortium (W3C) specifications originally designed as a metadata data model.

- RDF stands for Resource Description Framework
- RDF is a framework for describing resources on the web
- RDF is designed to be read and understood by computers
- RDF is not designed for being displayed to people
- RDF is written in XML
- RDF is a part of the W3C's Semantic Web Activity
- RDF is a W3C Recommendation

SOAP
----

[**SOAP**](http://www.w3schools.com/webservices/ws_soap_intro.asp), originally an acronym for **Simple Object Access protocol**, is a protocol specification for exchanging structured information in the implementation of web services in computer networks.

- SOAP stands for Simple Object Access Protocol
- SOAP is a communication protocol
- SOAP is for communication between applications
- SOAP is a format for sending messages
- SOAP communicates via Internet
- SOAP is platform independent
- SOAP is language independent
- SOAP is based on XML
- SOAP is simple and extensible
- SOAP allows you to get around firewalls
- SOAP is a W3C recommendation

SOAP Building Blocks with Skeleton SOAP Message example

Element	          | Required | Description
------------------|----------|--------------------------------------------------------------------------------------
`<soap:Envelope>` | Yes      | An Envelope element that identifies the XML document as a SOAP message
`<soap:Header>`	  | No       | A Header element that contains header information (like authentication, payment, etc)
`<soap:Body>`     | Yes      | A Body element that contains call and response actual SOAP message information
`<soap:Fault>`	  | No       | The SOAP Fault element holds errors and status information for a SOAP message.

```
<?xml version="1.0"?>
<soap:Envelope
  xmlns:soap="http://www.w3.org/2001/12/soap-envelope"
  soap:encodingStyle="http://www.w3.org/2001/12/soap-encoding">
  <soap:Header>
    ...
  </soap:Header>
  <soap:Body>
    ...
    <soap:Fault>
      ...
    </soap:Fault>
  </soap:Body>
</soap:Envelope>
```

REST
----

**REST** stands for **Representational State Transfer**. (It is sometimes spelled "ReST".) It relies on a stateless, client-server, cacheable communications protocol -- and in virtually all cases, the HTTP protocol is used. REST is an architecture style for designing networked applications.

- REST is an Architecture style or design pattern
- Stateless, client-server, cacheable communications protocol
- REST uses HTTP requests to GET, PUT, POST, DELETE data
  - **GET** Requests data from a specified resource
  - **PUT**	Uploads a representation of the specified URI
  - **POST** Submits (update) data to be processed to a specified resource
  - **DELETE** Deletes the specified resource
- REST is lightweight
- REST uses nouns as URI, verbs as HTTP methods

In computing, a [**Uniform Resource Identifier (URI)**](http://en.wikipedia.org/wiki/Uniform_resource_identifier) is a string of characters used to identify a name of a resource. Such identification enables interaction with representations of the resource over a network, typically the World Wide Web, using specific protocols.

```
http://www.example.com/v1/hr/employees/19328389
```

- [**URI Scheme**](http://en.wikipedia.org/wiki/URI_scheme)
- [**HTTP status codes**](http://en.wikipedia.org/wiki/List_of_HTTP_status_codes)


Design Pattern
--------------

In **software engineering**, a [**design pattern**](http://en.wikipedia.org/wiki/Software_design_pattern) is a general reusable solution to a commonly occurring problem within a given context in software design (solution to a common software problem). A **design pattern** is not a finished design that can be transformed directly into source or machine code.

In software engineering, the [**singleton pattern**](http://en.wikipedia.org/wiki/Singleton_pattern) is a design pattern that restricts the instantiation of a class to one object. This is useful when exactly one object is needed to coordinate actions across the system.

The [**observer pattern**](http://en.wikipedia.org/wiki/Observer_pattern) is a software design pattern in which an object, called the subject, maintains a list of its dependents, called observers, and notifies them automatically of any state changes, usually by calling one of their methods.

In class-based programming, the [**factory method pattern**](http://en.wikipedia.org/wiki/Factory_method_pattern) is a creational pattern which uses factory methods to deal with the problem of creating objects without specifying the exact class of object that will be created.

In software engineering, the [**adapter pattern**](http://en.wikipedia.org/wiki/Adapter_pattern) is a software design pattern that allows the interface of an existing class to be used from another interface. It is often used to make existing classes work with others without modifying their source code.

Glossary
--------

In computer networks, a **proxy server** is a server (a computer system or an application) that acts as an intermediary for requests from clients seeking resources from other **servers**.
