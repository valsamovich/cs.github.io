# Web Services

A [**Web server**](http://www.w3schools.com/webservices/default.asp) is a program that, using the client/server model and the World Wide Web's Hypertext Transfer Protocol ( HTTP ), serves the files that form Web pages to Web users (whose computers contain HTTP clients that forward their requests).

"**A Web service is a software system designed to support interoperable machine-to-machine interaction over a network.**' - *W3C, Web Services Glossary*

          SOAP (WSDL+UDDI)
                   \         HTTP                       (Arbitrary WS)
                    \         /                          SOAP 
                     Protocols                          /    \              Service Broker
                         |                             /      \                    |
    Components -|--------|--------|-------- Web Services      SOA --------|--------|--------|-------- Blocks
                |                 |         (XML & HTTP)      /           |                 |
               DATA           Frameworks                \    /     Service Provider  Service Requester
              /    \         /         \                 REST   
            XML   JSON   Jersey      Apache CXF         (REST-compliant WS)
                     
- **Specifications**
  - Web services are application components
  - Web services communicate using open protocols
  - Web services are self-contained and self-describing
  - Web services can be discovered using UDDI
  - Web services can be used by other applications
  - HTTP and XML is the basis for Web services

**Service-Oriented Architecture** (SOA) is an approach used to create an architecture based upon the use of services. Services (such as **RESTful Web services**) carry out some small function, such as producing data, validating a customer, or providing simple analytical services.

## Components

**Frontend programming APIs**
  - Java API for RESTful Services [(JAX-RS)](https://jax-rs-spec.java.net/) - interfaces & annotations (`javax.ws.rs.*`)
  - Java API for XML Web Services [(JAX-WS)](https://jax-ws.java.net/)

**REST API Implementation libraries** or framework to help implement interfaces & annotations.
  - [ApacheCXF](http://cxf.apache.org/)
    - Oen-Source web services framework
    - Contains support ofr JAX-WS & Jax_RS
    - Provides integration with Spring Framework
    - Support Java Specification Requermentes (JSR)
  - [RESTEasy](http://resteasy.jboss.org/) 
  - [Restlet](https://restlet.com/)
  - [Jersey](https://jersey.java.net/)

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

## SOAP

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

## REST

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

Architecture of the **REST Service**

- **REST layer** `/webservice` 
  - `"/URL..."` with/without JAX RX-Annotations - knows how to communicate with it's client --> `UI/Front-end layer`
  - This layer receives the incoming HTTP request and converts the request into a data model that is handed down to the Service Layer. It also takes any response from the Service layer and sends it back to the client via Apache CXF.
- **Service layer** `/core layer`
  - BR - Business Rules/BL - Business Logic (Validations, combine, etc) 
  - This is where the heavy lifting is done. Business rules, validations, transactions and calls to the DAO layer happens here.
- **DAO/DAE layer** `commands`
  - Data Access Object of Backend/Opposite of the *REST* layer
  - This layer is responsible for accessing the data used by the service layer. This is where calls to relational databases, NoSQL stores and other backend services are made.

Example of the [REST Service with Spring](https://github.com/valerysamovich/blueprint)




        
