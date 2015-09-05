# Database Management

## Context

- Database Fundamentals
  - Introduction
  - Relational Model
- Glossary

## Introduction

Database system has four components:
- Users
- Database application
- Database management system (DBMS)
- Database

## The Relational Model

The characteristics of a relation:
- Rows contain data about entity
- Columns contain data about attributes of the entity
- Cells of the table holds a single value.
- All entries in a column are of the same kind
- Each column has a unique name
- The order of the column is unimportant
- The order of the rows is unimportant
- No two rows may hold identical sets of data values

Example of the **relation structure**:

    TABLE_NAME(Column1, Column2, Column3...., LastColumn)

Equivalent Sets of terms

```shell
    Table    | Row    | Column
    ---------|--------|----------
    File     | Record | Field
    ---------|--------|----------
    Relation | Tuple  | Attribute
```

## Glossary

**.NET Framework (.NET)** Microsoft’s comprehensive application development platform. It includes such components as ADO.NET and ASP.NET.

`<?php and ?>` The symbols used to indicate blocks of PHP code in Web pages.

**A**

**ACID transaction** A transaction that is *atomic*, *consistent*, *isolated*, and *durable*. An atomic transaction is one in which a set of database changes are committed as a unit; either all of them are completed or none of them are. A consistent transaction is one in which all actions are taken against rows in the same logical state. An isolated transaction is one that is protected from changes by other users. A durable transaction is one that, once committed to a database, is permanent regardless of subsequent failure. There are different levels of consistency and isolation. See transaction-level consistency and statement-level consistency. See also transaction isolation level.

**Database schema** A complete logical view of a database. It isa design on which a database and its associated applications are build.

**Active Server Pages (ASP)** A combination of HTML and scripting language statements. Any statement included in <% . . . %> is processed on the server. Used with Internet Information Server (IIS).

**Active Data Objects (ADO)** An implementation of OLE DB that is accessible via object- and non-object-oriented languages. It is used primarily as a scripting-language (JScript, VBScript) interface to OLE DB.

**ADO.NET** A data access technology that is part of Microsoft’s .NET initiative. ADO.NET provides the capabilities of ADO, but with a different object structure. ADO.NET also includes new capabilities for the processing of datasets.

**After-image** A record of a database entity (normally a row or a page) after a change. Used in recovery to perform rollforward.

**American National Standards Institute (ANSI)** The American standards organization that creates and publishes the SQL standards.

**AMP** An abbreviation for Apache, MySQL, and PHP/Pearl/Python. See Apache Web Server and PHP.

**Anomaly** In normalization, an undesirable consequence of a data modification. With an insertion anomaly, facts about two or more different themes must be added to a single row of a relation. With a deletion anomaly, facts about two or more themes are lost when a single row is deleted.

**Apache Web Server** A popular Web server that runs on most operating systems, particularly Windows and Linux.

**Application program interface (API)** The set of objects, methods, and properties that is used to access the functionality of a program such as a DBMS.

**Association relationship** In database design, a table pattern where an intersection table contains additional attributes beyond the attributes that make up the composite primary key.

**Associative entity** Also called an association entity, this is an entity that represents the combination of at least two other objects and that contains data about that combination. It is often used in contracting and assignment applications.

**Asterisk (*)** A wildcard character used in Microsoft Access queries to represent one or more unspecified characters. See SQL percent sign (%) wildcard character.

**Atomic transaction** A group of logically related database operations that are performed as a unit. Either all the operations are performed or none of them are.

**Attribute** (1) A value that represents a characteristic of an entity. (2) A column of a relation. 

**B**

**Before-image** A record of a database entity (normally a row or a page) before a change. Used in recovery to perform rollback.

**Big data** The current term for the enormous datasets created by Web applications, such as search tools (e.g., Google and Bing), and by Web 2.0 social networks, such as Facebook, LinkedIn, and Twitter.

**Bigtable** A nonrelational unstructured data store developed by Google.

**Binary relationship** A relationship between exactly two entities or tables.

**Boyce-Codd Normal Form (BCNF)** A relation in third normal form in which every determinant is a candidate key.

**Business intelligence (BI) systems** Information systems that assist managers and other professionals in analyzing current and past activities and in predicting future events. Two major categories of BI systems are reporting systems and data mining systems.

**Business rule** A statement of a policy in a business that restricts the ways in which data can be inserted, updated, or deleted in the database.

**C**

**Candidate key** An attribute or a group of attributes that identifies a unique row in a relation. One of the candidate keys is chosen to be the primary key.

**Cardinality** In a binary relationship, the maximum or minimum number of elements allowed on each side of the relationship. The maximum cardinality can be 1:1, 1:N, N:1, or N:M. The minimum cardinality can be optional/optional, optional/mandatory, mandatory/optional, or mandatory/mandatory.

**Cascading deletion** A property of a relationship that indicates that when one row is deleted, related rows should be deleted as well.

**Cascading update** A referential integrity action specifying that when the key of a parent row is updated, the foreign keys of matching child rows should be updated as well.

**Cassandra** A nonrelational unstructured data store from the Apache Software Foundation.

**Checkpoint** The point of synchronization between a database and a transaction log. At the checkpoint, all buffers are written to external storage. (This is the standard definition of checkpoint, but DBMS vendors sometimes use this term in other ways.)

**Child** A row, record, or node on the many side of a one-to-many relationship. See also parent.

**Click-stream data** Data about a customer’s clicking behavior on a Web page; such data are often analyzed by e-commerce companies.

**Column** A logical group of bytes in a row of a relation or a table. The meaning of a column is the same for every row of the relation.

**Commit** A command issued to a DBMS to make database modifications permanent. After the command has been processed, the changes are written to the database and to a log in such a way that they will survive system crashes and other failures. A commit is usually used at the end of an atomic transaction. Contrast this with [rollback]().

**Composite identifier** An identifier of an entity that consists of two or more attributes.

**Composite key** A key of a relation that consists of two or more columns.

**Computed value** A column of a table that is computed from other column values. Values are not stored but are computed when they are to be displayed.

**Concurrent transactions** A condition in which two or more transactions are processed against a database at the same time. In a single-CPU system, the changes are interleaved; in a multi-CPU system, the transactions can be processed simultaneously, and the changes on the database server are interleaved.

**Concurrent update problem** An error condition in which one user’s data changes are overwritten by another user’s data changes. Also called [lost update problem]()

**Confidence** In market basket analysis, the probability of a customer’s buying one product, given that the customer has purchased another product.

**Conformed dimension** In a dimensional database design, a dimension table that has relationships to two or more fact tables.

**Consistency** Two or more concurrent transactions are consistent if the result of their being processed is the same as it would have been had they been processed in some sequential order.

**Consistent** In an ACID transaction, either statement-level or transaction-level consistency. See [ACID transaction](), [consistency](), and [transaction-level consistency]().

**COUNT** In SQL, a function that counts the number of rows in a query result. See [SQL built-in functions]().

**Cube**See [OLAP cube]().

**D**

**Data administration** An enterprisewide function that concerns the effective use and control of an organization’s data assets. A person can perform it, but more often it is performed by a group. Specific functions include setting data standards and policies and providing a forum for conflict resolution. See also [database administration]() and [DBA]()

**Data definition language (DDL)** A language used to describe the structure of a database.

**Data manipulation language (DML)** A language used to describe the processing of a database.

**Data mart** A facility similar to a data warehouse, but with a restricted domain. Often, the data are restricted to particular types, business functions, or business units.

**Data mining application** The use of statistical and mathematical techniques to find patterns in database data.

**Data model** (1) A model of users’ data requirements, usually expressed in terms of the entity-relationship model. It is sometimes called a users’ data model. (2) A language for describing the structure and processing of a database.

**Data sublanguage** A language for defining and processing a database intended to be embedded in programs written in another language—in most cases, a procedural language such as COBOL, C#, or Visual Basic. A data sublanguage is an incomplete programming language because it contains only constructs for data definition and processing.

**Data warehouse** A store of enterprise data that is designed to facilitate management decision making. A data warehouse includes not only data, but also metadata, tools, procedures, training, personnel information, and other resources that make access to the data easier and more relevant to decision makers.

**Data warehouse metadata database** The database used to store the data warehouse metadata.

**Database** A self-describing collection of related records or, for relational databases, of related tables.

**Database administration (DBA)** A function that concerns the effective use and control of a particular database and its related applications.

**Database administrator (DBA)** A person or group responsible for establishing policies and procedures to control and protect a database. They work within guidelines set by data administration to control the database structure, manage data changes, and maintain DBMS programs.

**Database backup** A copy of database files that can be used to restore a database to some previous, consistent state.

**Database design** A graphical display of tables (files) and their relationships. The tables are shown in rectangles, and the relationships are shown using lines. A many relationship is shown with a crow’s foot on the end of the line, an optional relationship is depicted by an oval, and a mandatory relationship is shown with hash marks.

**Database management system (DBMS)** A set of programs used to define, administer, and process a database and its applications.

**Database schema** A complete logical view of a database.

**Deadlock** A condition that can occur during concurrent processing in which each of two (or more) transactions is waiting to access data that the other transaction has locked. It also is called the [deadly embrace]().

**Deadly embrace** See [deadlock]()

**Decision support system (DSS)** One or more applications designed to help managers make decisions.

**Degree** In the entity-relationship model, the number of entities participating in a relationship.

**Deletion anomaly** In a relation, the situation in which the removal of one row of a table deletes facts about two or more themes.

**Denormalization** The process of intentionally designing a relation that is not normalized. Denormalization is done to improve performance or security.

**Determinant** One or more attributes that functionally determine another attribute or attributes. In the functional dependency (A, B) → D, C, the attributes (A, B) are the determinant.

**Dimension table** In a star schema dimensional database, the tables that connect to the central fact table. Dimension tables hold attributes used in the organizing queries in analyses such as those of OLAP cubes.

**Dimensional database** A database design that is used for data warehouses and is designed for efficient queries and analysis. It contains a central fact table connected to one or more dimension tables.

**Dirty read** A read of data that have been changed but not yet committed to a database. Such changes may later be rolled back and removed from the database.

**Discriminator** In the entity-relationship model, an attribute of a supertype entity that determines which subtype pertains to the supertype.

**Distributed database** A database that is stored and processed on two or more computers.

**Distributed two-phase locking** A sophisticated form of record locking that must be used when database transactions are processed on two or more machines.

**Document type declaration (DTD)** A set of markup elements that defines the structure of an XML document.

**Domain** (1) The set of all possible values an attribute can have. (2) A description of the format (data type, length) and the semantics (meaning) of an attribute.

**Domain key/normal form (DK/NF)** A relation in which all constraints are logical consequences of domains and keys. In this text, this definition has been simplified to a relation in which the determinants of all functional dependencies are candidate keys.

**Drill down** User-directed disaggregation of data used to break higher-level totals into components.

**Durable** In an ACID transaction, the database changes are permanent. See [ACID transaction]().

**Dynamo** A nonrelational unstructured data store developed by [Amazon.com]().

**Dynamic cursor** A fully featured cursor. All inserts, updates, deletions, and changes in row order are visible to a dynamic cursor.

**E**

**Enterprise-class database system** A DBMS product capable of supporting the operating requirement of large organizations.

**Enterprise data warehouse (EDW) architecture** A data warehouse architecture that links specialized data marts to a central data warehouse for data consistency and efficient operations.

**Entity** Something of importance to a user that needs to be represented in a database. In the entity-relationship model, entities are restricted to things that can be represented by a single table. See also [strong entity]() and [weak entity]().

**Entity class** A set of entities of the same type; two examples are EMPLOYEE and DEPARTMENT.

**Entity instance** A particular occurrence of an entity; for example, Employee 100 (an EMPLOYEE) and Accounting Department (a DEPARTMENT).

**Entity-relationship diagram (E-R diagram)** A graphic used to represent entities and their relationships. Entities are normally shown in squares or rectangles, and relationships are shown in diamonds. The cardinality of the relationship is shown inside the diamond.

**Entity-relationship model (E-R model)** The constructs and conventions used to create a model of users’ data. The things in the users’ world are represented by entities, and the associations among those things are represented by relationships. The results are usually documented in an entity-relationship diagram. See also [dat model]().

**Exclusive lock** A lock on a data resource that no other transaction can read or update.

**Explicit lock** A lock requested by a command from an application program.

**Export** A function of a DBMS that writes a file of data in bulk. The file is intended to be read by another DBMS or program.

**Extended entity-relationship (E-R) model** A set of constructs and conventions used to create data models. The things in the users’ world are represented by entities, and the associations among those things are represented by relationships. The results are usually documented in an entity-relationship (E-R) diagram.

**Extensible Markup Language (XML)** A markup language whose tags can be extended by document designers.

**Extract, transform, and load (ETL) system** The portion of a data warehouse that converts operation data to data warehouse data.

**F**

**Fact table** The central table in a dimensional database. Its attributes are called measures. See also [measure]().

**Field** (1) A logical group of bytes in a record used with file processing. (2) In the context of the relational model, a synonym for [attribute]().

**Fifth normal form (5NF)** A normal form necessary to eliminate an anomaly where a table can be split apart but not correctly joined back together. Also known as Project-Join Normal Form (PJ/NF).

**File data source** An ODBC data source stored in a file that can be emailed or otherwise distributed among users.

**First normal form (1NF)** Any table that fits the definition of a relation.

**Foreign key** An attribute that is a key of one or more relations other than the one in which it appears.

**Form** A structured on-screen presentation of selected data from a database. Forms are used for both data input and data reading. A form is part of a database application. Compare this with a report.

**Fourth normal form (4NF)** A relation in BCNF in which every multivalued dependency is a functional dependency.

**Functional dependency** A relationship between attributes in which one attribute or group of attributes determines the value of another. The expressions X → Y, “X determines Y,” and “Y is functionally dependent on X” mean that given a value of X, we can determine the value of Y.

**H**

**HAS-A relationship** A relationship between two entities or objects that are of different logical types; for example, EMPLOYEE HAS-A(n) AUTO. Contrast this with an IS-A relationship.

**Hadoop Distributed File System (HDFS)** or **Hadoop** An open-source file distribution system that provides standard file services to clustered servers so that their file systems can function as one distributed file system.

**HBase** A nonrelational unstructured data store developed as part of the Apache Software Foundation’s Hadoop project. See [Hadoop Distributed File System (HDFS)]().

**HTML documnet tags** The tags in HTML documents that indicate the structure of the document.

**HTML syntax rules** The standards that are used to create HTML documents.

**Http://localhost** For a Web server, a reference to the user’s computer.

**Hypertext Markup Language (HTML)** A standardized set of text tags for formatting text, locating images and other nontext files, and placing links or references to other documents.

**Hypertext Transfer Protocol (HTTP)** A standardized means for using TCP/IP to communicate over the Internet.

**I**

**ID-dependent entity** An entity that cannot logically exist without the existence of another entity. APPOINTMENT, for example, cannot exist without CLIENT to make the appointment. To be an ID-dependent entity, the identifier of the entity must contain the identifier of the entity on which it depends. Such entities are a subset of a weak entity. See also [existence-dependent entity](), and [weak entity]().

**Identifier** In an entity, a group of one or more attributes that determine entity instances. See also [nonunique identifier](), and [unique identifier]().

**Identifying relationship** A relationship that is used when the child entity is ID-dependent upon the parent entity.

**IE Crow’s Foot model** Formally known as the Information Engineering (IE) Crow’s Foot model, it is a system of symbology used to construct E-R diagrams in data modeling and database design.

**Implicit lock** A lock that is placed automatically by a DBMS.

**Inconsistent backup** A backup file that contains uncommitted changes.

**Inconsistent read problem** An anomaly that occurs in concurrent processing in which transactions execute a series of reads that are inconsistent with one another. This problem can be prevented by using two-phase locking and other strategies.

**Index.html** A default Web page name provided by most Web servers.

**Inetpub folder** In Windows operating systems, the root folder for the IIS Web server.

**Information** (1) Knowledge derived from data, (2) data presented in a meaningful context, or (3) data processed by summing, ordering, averaging, grouping, comparing, or other similar operations.

**Information Engineering (IE) model** An E-R model developed by James Martin.

**Inner join** See [join]().

**Integrated Definition 1, Extended (IDEF1X)** A version of the entity-relationship model, adopted as a national standard, but difficult to understand and use. Most organizations use a simpler E-R version like the crow’s foot model.

**Integrated Development Environment (IDE)** An application that provides a programmer or application developer with a complete set of development tools in one package.

**Insertion anomaly** In a relation, a condition that exists when, to add a complete row to a table, one must add facts about two or more logically different themes.

**Internet Information Server (IIS)** A Windows Web server product that processes Active Server Pages (ASP).

**Intersection table** A table (also called a relation) used to represent a many-to-many relationship. It contains the keys of the relations in the relationship. When used to represent entities having a many-to-many relationship, it may have nonkey data if the relationship contains data.

**IS-A relationship** A relationship between a supertype and a subtype. For example, EMPLOYEE and ENGINEER have an IS-A relationship.

**J**

**Java Database Connectivity (JDBC)** A standard means for accessing DBMS products from Java. With JDBC, the unique API of a DBMS is hidden, and the programmer writes to the standard JDBC interface.

**Java Server Pages (JSP)** A combination of HTML and Java that is compiled into a servlet.

**Join operation** or **Natural join** A relational algebra operation on two relations, A and B, that produces a third relation, C. A row of A is concatenated with a row of B to form a new row in C if the rows in A and B meet restrictions concerning their values. For example, A1 is an attribute in A, and B1 is an attribute in B. The join of A with B in which (A1 = B1) will result in a relation, C, having the concatenation of rows in A and B in which the value of A1 is equal to the value of B1. In theory, restrictions other than equality are allowed—a join could be made in which A1 < B1. However, such non-equal joins are not used in practice. Also known as inner join.

**K**

**Key** (1) A group of one or more attributes that identify a unique row in a relation. Because relations cannot have duplicate rows, every relation must have at least one key that is the composite of all the attributes in the relation. A key is sometimes called a logical key. (2) With some relational DBMS products, an index on a column used to improve access and sorting speed. It is sometimes called a physical key. 

**L**

**LAMP** A version of [AMP]() that runs on Linux.

**Lock** To allocate a database resource to a particular transaction in a concurrent-processing system. The size at which the resource can be locked is known as the lock granularity.

**Lock granularity** The detail possible with a lock.

**Log** A file that contains a record of database changes. The log contains before-images and after-images.

**Logical unit of work (LUW)** An equivalent term for transaction. See [Transaction]().

**Logistic regression** A form of supervised data mining that estimates the parameters of an equation to calculate the odds that a given event will occur.

**Lost update problem** Same as concurrent update problem.

**M**

**MapReduce** A big data processing technique that breaks a data analysis into many parallel processes (the Map function) and then combines the results of these processes into one final result (the Reduce function).

**MAX** In SQL, a function that determines the largest value in a set of numbers. See [SQL built-in functions]().

**Maximum cardinality** (1) The maximum number of values that an attribute can have within a semantic object. (2) In a relationship between tables, the maximum number of rows to which a row of one table can relate in the other table.

**Measure** In OLAP, a data value that is summed, averaged, or processed in some simple arithmetic manner.

**Metadate** Data concerning the structure of data in a database stored in the data dictionary. Metadata are used to describe tables, columns, constraints, indexes, and so forth. See also [application metadata]().

**MIN** In SQL, a function that determines the smallest value in a set of numbers. See 

**Minimum cardinality** In a relationship between tables, the minimum number of rows to which a row of one table can relate in the other table.

**Modification anomaly** A situation that exists when the storing of one row in a table records facts about two themes or the deletion of a row removes facts about two themes, or when a data change must be made in multiple rows for consistency.

**Multiple-tier driver** In ODBC, a two-part driver, usually for a client-server database system. One part of the driver resides on the client and interfaces with the application; the second part resides on the server and interfaces with the DBMS.

**Multivalued dependency** A condition in a relation with three or more attributes in which independent attributes appear to have relationships they do not have. Formally, in a relation R (A, B, C), having key (A, B, C) where A is matched with multiple values of B (or of C or of both), B does not determine C, and C does not determine B. An example is the relation EMPLOYEE (EmpNumber, EmpSkill, DependentName), where an employee can have multiple values of EmpSkill and DependentName. EmpSkill and DependentName do not have any relationship, but they do appear to in the relation.

**N**

**N:M** An abbreviation for a many-to-many relationship between the rows of two tables.

**Natural join** A join of a relation A having attribute A1 with relation B having attribute B1, where A1 = B1. The joined relation, C, contains either column A1 or B1 but not both.

**NetBeans** A popular open-source integrated development environment (IDE).








**Transaction isolation level** or **Isolation level** 
