# Database Management

A **database** is an organized collection of data (help people kepp trak of thinks). It is the collection of schemes, tables, queries, reports, views and other objects.

A **database management system** (DBMS) is a computer software application that interacts with the user, other applications, and the database itself to capture and analyze data. A general-purpose DBMS is designed to allow the definition, creation, querying, update, and administration of databases. Well-known DBMSs includes: [MySQL](https://www.mysql.com/), [PostgreSQL](http://www.postgresql.org/), [Microsoft SQL Server](http://www.microsoft.com/en-us/server-cloud/products/sql-server/features.aspx), [Oracle](https://www.oracle.com/database/index.html), [Sybase](www.sap.com/Database) and [IBM DB2](http://www-01.ibm.com/software/data/db2/).

## Context

- [Introduction](https://github.com/valerysamovich/engineering/blob/master/docs/tutorials/database.md#introduction)
- [Relational Model](https://github.com/valerysamovich/engineering/blob/master/docs/tutorials/database.md#the-relational-model)
- [Structured Query Language](https://github.com/valerysamovich/engineering/blob/master/docs/tutorials/database.md#structured-query-language) (SQL)
- [Data Modeling and Entity-Relationship Model](https://github.com/valerysamovich/engineering/blob/master/docs/tutorials/database.md#data-modeling-and-ert) (ERT)
- [Glossary](https://github.com/valerysamovich/engineering/blob/master/docs/tutorials/database.md#glossary)

## Introduction

The importance of database processing increases every day because databases are used in information systems everywhere—and increasingly so. The **purpose of a database** is to help people keep track of things. Lists can be used for this purpose, but if a list involves more than one theme modification problems will occur when data are inserted, updated, or deleted.

**Relational databases** store data in the form of tables. Almost always, the tables are designed so that each table stores data about a single theme. Lists that involve multiple themes need to be broken up and stored in multiple tables, one for each theme. When this is done, a column needs to be added to link the tables to each other so that the relationship from a row in one table to a row in another table can be shown.

A **modification problem** is a data corruption or loss that occurs when a table uses one row to store facts about two or more themes. In this case, a deletion of a row can remove facts about two or more themes, leading to a loss in data, or a data change must be made in multiple rows to maintain data consistency. Finally, unless creation of a new row is allowed based on only one theme, it may be impossible to store needed data. Three possible modification problems are: 

1. insert problems — missing data
2. update problems — inconsistent data
3. delete problems — data loss.

[**Structured Query Language**](https://github.com/valerysamovich/engineering/blob/master/docs/tutorials/database.md#structured-query-language) (SQL) is an international language for processing tables in relational databases. You can use SQL to join together and *display data stored in separate tables*, *create new tables*, and *query data from tables* in many ways. You can also use **SQL** to *insert*, *update*, and *delete* data.

The components of a **database system** are:

- Database
- Database management system (DBMS)
- Database applications (one or more)
- Users

A **database** is a *self-describing collection of related records*. A relational database is a self-describing collection of related tables. A database is self-describing because it contains a description of its contents within itself, which is known as metadata. Tables are related by storing linking values of a common column. The contents of a database are:

- User data
- Metadata (structure of the data)
  - names of tables
  - columns
  - indexes (used to improve database performance)
- Supporting structures (such as indexes)
- Application metadata (data that describe application elements)
  - Reports
  - Forms

A **database management system (DBMS)** is a large, complicated program used (or purpose) to create, process, and administer a database. DBMS products are almost always licensed from software vendors. Specific *functions* of a DBMS are summarized below:

- Create database
- Create tables
- Create supporting structures (e.g., indexes)
- Read database data
- Modify(insert, update, or delete) database data
- Maintain database structures
- Enforce rules
- Control concurrency
- Provide security
- Perform backup and recovery

The functions of **database applications** are:

- Create and process forms 
- Process user queries 
- Create and process reports
- Execute specific application logic
- Control the application. 

Users provide data and data changes and read data in forms, queries, and reports.

The term **referential integrity constraint** is a rule that before a possible key value of one table can be placed in a second table as a linking value, the value must exist in the first table before it is used in the second table.

DBMS products for **personal database systems** provide functionality for application development and database management. They hide considerable complexity, but at a cost: Requirements unanticipated by DBMS features cannot be readily implemented:

- Microsoft Access 2013

**Enterprise-class database systems** include multiple applications that might be written in multiple languages. These systems may support hundreds or thousands of users:

- Microsoft SQL Server 2014
- Oracle MySQL 5.6
- Oracle Database Express Edition 11 Release 2

NoSQL refers to nonrelational databases used in Web 2.0 applications such as Facebook and Twitter. NoSQL databases are discussed in Big Data.

## The Relational Model

The **relational model** is the most important standard in database processing today. It was first published by **E. F. Codd** in 1970. Today, it is used for the *design and implementation of almost every commercial database*.

An **entity** is something of importance to a user that needs to be represented in a database. A **relation** is a *two-dimensional table that has the characteristics* listed below:

- Rows contain data about entity.
- Columns contain data about attributes of the entity.
- Cells of the table holds a single value.
- All entries in a column are of the same kind.
- Each column has a unique name.
- The order of the column is unimportant.
- The order of the rows is unimportant.
- No two rows may hold identical sets of data values.

Example of the **relation structure**:

    TABLE_NAME(Column1, Column2, Column3...., LastColumn)

> Relation structures, such as one above, are part of a database schema. A **database schema** is a design on which a database and its associated applications are build.

In the database world in general, the term **table** is used synonymously with the term **relation**. Three sets of terminology are used for relational structures. The terms **table**, **row**, and **column** are used most commonly, but **file**, **record**, and **field** are sometimes used in traditional data processing. Theorists also use the terms **relation**, **tuple**, and **attribute** for the same three constructs. Sometimes these terms are mixed and matched. Strictly speaking, a *relation may not have duplicate rows*; however, sometimes this condition is relaxed because eliminating duplicates can be a time-consuming process.

Table    | Row    | Column
---------|--------|----------
File     | Record | Field
Relation | Tuple  | Attribute

A **key** is one or more columns of a relation that is used to identify a row. A **unique key** identifies a single row; a **nonunique key** identifies several rows. A **composite key** is a key that has two or more attributes. A relation has one primary key, which must be a unique key. A relation may also have additional unique keys, called **candidate keys**. A primary key is used to represent the table in relationships, and many DBMS products use values of the primary key to organize table storage. In addition, an index normally is constructed to provide fast access via primary key values. An **ideal primary key** is *short*, *numeric*, and *never changes*.

A **surrogate key* is a unique numeric value that is appended to a relation to serve as the primary key. Surrogate key values have no meaning to the user and are normally hidden on forms, query results, and reports.

A **foreign key** is an attribute that is placed in a relation to represent a relationship. A foreign key is the primary key of a table that is different from (foreign to) the table in which it is placed. Primary and foreign keys may have different names, but they must use the same data types and sets of values. A **referential integrity constraint** *specifies that the values of a foreign key be present in the primary key*.

A **null value** occurs when no value has been given to an *attribute*. The problem with a **null value** is that its meaning is ambiguous. It can mean that no value is appropriate, that a value is appropriate but has not yet been chosen, or that a value is appropriate and has been chosen but is unknown to the user. It is possible to eliminate null values by requiring attribute values.

A **functional dependency** occurs when the value of one attribute (or set of attributes) determines the value of a second attribute (or set of attributes). The attribute on the left side of a functional dependency is called the determinant. One way to view the purpose of a relation is to say that the relation exists to store instances of functional dependencies. Another way to define a primary (and candidate) key is to say that such a key is an attribute that functionally determines all the other attributes in a relation.

    CookieCost = NumberOfBoxes x 5

> A more general way to express the relationship between `CookieCost` and `NumberOfBoxe`x is to say that `CookieCost` depends upon `NumberOfBoxes`. More formally we can say that CookieCost is **functional dependent** on `NumberOfBoxes`. Such a statement is called a **functional dependency**, where `NumberOfBoxes` is **dererminant**, and can be written as follows:

    NumberOfBoxes -> CookieCost
  
**Normalization** is the process of evaluating a relation and, when necessary, breaking the relation into two or more relations that are better designed and said to be well formed. According to normalization theory, a relation is poorly structured if it has a functional dependency that does not involve the primary key. Specifically, in a well-formed relation, every determinant is a candidate key.

      # Before normalization
      ADVISER_LIST (AdviserID, AdviserName, Department, Phone, Office, StudentNumber, StudentName)
      
      # After normalization
      StudentNumber → (AdviserID, AdviserName, Department, Phone, Office, StudentName)
      ADVISER_LIST (AdviserID, AdviserName, Department, Phone, Office, StudentNumber, StudentName)
                                                                       -------------
A process for normalizing relations into BNCF is shown, and a discussion of multivalued dependencies and 4NF is found. According to this process, relations that have normalization problems are divided into two or more relations that do not have such problems. Foreign keys are established between the old and new relations, and referential integrity constraints are created.

## Structured Query Language

**Structured Query Language** (SQL) is a data sublanguage that has constructs for defining and processing a database. SQL can be embedded into: VBScript (scripting languages), or into programming languages, such as *Java* and *C#*. SQL statements can be processed from a command window. SQL has several components, two of which are discussed here:

- **data definition language (DDL)** is used for creating database tables and other structures.
- **data manipulation language (DML)** is used to query and modify database data. 

SQL was developed by IBM and has been endorsed as a national standard by the American National Standards Institute **(ANSI)**. There have been several versions of SQL. This discussion is based on SQL-92, but later versions exist that have added, in particular, support for Extensible Markup Language **(XML)**. Modern DBMS products provide graphic facilities for accomplishing many of the tasks that SQL does. Use of SQL is mandatory for programmatically creating SQL statements.

> Microsoft Access 2013 uses a variant of SQL known as **ANSI-89 SQL**, or Microsoft Jet SQL, which differs significantly from **SQL-92**. Not all SQL statements written in SQL-92 and later versions run in Access ANSI-89 SQL.

The **SQL CREATE TABLE** statement is used to create relations. Each column is described in three parts: 

- column name, 
- the data type
- optional column constraints. 

Column constraints considered in this chapter are PRIMARY KEY, FOREIGN KEY, NULL, NOT NULL, and UNIQUE. The DEFAULT keyword (not considered a constraint) is also considered. If no column constraint is specified, the column is set to NULL.

Standard data types:

- **Char**
- **VarChar**
- **Integer**
- **Numeric**
- **DateTime** (supplemented by DBMS vendors).

If a primary key has only one column, you can define it by using the primary key constraint. Another way to define a primary key is to use the table constraint. You can use such constraints to define single-column and multicolumn primary keys, and you can also implement referential integrity constraints by defining foreign keys. Foreign key definitions can specify that updates and deletions should cascade.

After the tables and constraints are created, you can add data by using The **SQL INSERT** statement and you can query data by using The **SQL SELECT** statement. The basic format of the SQL SELECT statement is SELECT (column names or the asterisk symbol [*]), **FROM** (table names, separated by commas if there is more than one), **WHERE** (conditions). You can use SELECT to obtain specific columns, specific rows, or both.

    -- Select all from student table 
    SELECT *  FROM tblStudent;
    
    -- Select StudentNum, LastName, FirstName, SSN from student table
    SELECT StudentNum, LastName, FirstName, SSN FROM tblStudent;

Conditions after **WHERE** require single quotes around values for Char and VarChar columns. However, single quotes are not used for Integer and Numeric columns. You can specify compound conditions with **AND** and **OR**. You can use sets of values with **IN** (match any in the set) and NOT IN (not match any in the set). You can use the wildcard symbols _ and % (? and * in Microsoft Access) with LIKE to specify a single unknown character or multiple unknown characters, respectively. You can use **IS NULL** to test for null values.

You can sort results by using the **ORDER BY** command. The five SQL built-in functions are **COUNT, SUM, MAX, MIN, and AVG**. SQL can also perform mathematical calculations. You can create groups by using **GROUP BY**, and you can limit groups by using **HAVING**. If the keywords WHERE and HAVING both occur in an SQL statement, WHERE is applied before HAVING.

You can query multiple tables by using either subqueries or joins. If all the result data come from a single table, then subqueries can be used. If results come from two or more tables, then joins must be used. The **JOIN ... ON** syntax can be used for joins. Rows that do not match the join conditions do not appear in the results. Outer joins can be used to ensure that all rows from a table appear in the results.

You can modify data by using The **SQL UPDATE ... SET** statement and delete data by using The **SQL DELETE** statement. The **SQL UPDATE** and SQL DELETE statements can easily cause disasters, so the commands must be used with great care.

You can remove tables (and their data) from a database by using the **SQL DROP TABLE** statement. You can remove constraints by using the **SQL ALTER TABLE DROP CONSTRAINT** command. You can modify tables and constraints by using The **SQL ALTER TABLE** statement. Finally, you can use the **CHECK** constraint to validate data values.

## Data Modeling and ERT

The process of developing a database system consists of three stages: 

- **Requirements analysis**:
  - interview users
  - document systems requirements
  - construct a data model
  - create prototypes of selected portions of the future system
- **Component design**:
  - transform the data model into a relational database design
- **Implementation**:
  - construct the database
  - fill it with data
  - create queries
  - create forms
  - create reports
  - create application programs.

In addition to creating a data model, you must also determine data-item data types, properties, and limits on data values. You also need to document **business rules** that constrain database activity.

The **entity-relationship (E-R) model** is the most popular tool used to develop a **data model**. With the **E-R model**, entities, which are identifiable things of importance to the users, are defined. All the entities of a given type form an entity class. A particular entity is called an instance. Attributes describe the characteristics of entities, and one or more attributes identify an entity. Identifiers can be unique or nonunique.

Relationships are associations among entities. The E-R model explicitly defines relationships. Each relationship has a name, and there are relationship classes as well as relationship instances. According to the original specification of the E-R model, relationships may have attributes; however, this is not common in contemporary data models.

The degree of a relationship is the number of entities participating in the relationship. Most relationships are binary. The three types of binary relationships are 1:1, 1:N, and N:M. A recursive relationship occurs when an entity has a relationship to itself.

In traditional E-R diagrams, such as the traditional E-R model, entities are shown in rectangles and relationships are shown in diamonds. The maximum cardinality of a relationship is shown inside the diamond. The minimum cardinality is indicated by a hash mark or an oval.

A weak entity is one whose existence depends on another entity; an entity that is not weak is called a strong entity. In this text, we further define a weak entity as an entity that logically depends on another entity. An entity can have a minimum cardinality of one in a relationship with another entity and not necessarily be a weak entity. ID-dependent entities must include the identifier of the entity on which the ID-dependent entity depends as part of the identifier of the ID-dependent entity.

When a data model has one or more attributes that seem to be associated with a relationship between two entities rather than with either of the entities themselves, an associative entity (also called an association entity) must be added to the data model. Each of the original entities will have a 1:N relationship with the associative entity, which will have a composite primary key consisting of the two primary keys of the original entities. The associative entity will be ID-dependent on both of the original entities.

The extended E-R model introduced the concept of subtypes. A subtype entity is a special case of another entity known as its supertype. In some cases, an attribute of the supertype, called a discriminator, indicates which of the subtypes is appropriate for a given instance. Subtypes can be exclusive (the supertype relates to at most one subtype) or inclusive (the supertype can relate to one or more subtypes). The identifier of the subtype is the identifier of the supertype.

This text’s E-R diagrams use the Information Engineering Crow’s Foot E-R model. You should be familiar with diagrams of that style, but you should also realize that when creating a database design no fundamental difference exists between the traditional style and this style. When creating a data model, it is important to document **business rules** that constrain database activity.

After E-R models are completed, they must be evaluated. You can show the data model, or portions of the data model, directly to the users for evaluation. This requires the users to learn how to interpret an E-R diagram. Sometimes, instead of showing users a data model you may create prototypes that demonstrate the consequences of the data model. Such prototypes are easier for users to understand.

## Glossary

**.NET Framework (.NET)** Microsoft’s comprehensive application development platform. It includes such components as ADO.NET and ASP.NET.

`<?php and ?>` The symbols used to indicate blocks of PHP code in Web pages.

## A

**ACID transaction** A transaction that is *atomic*, *consistent*, *isolated*, and *durable*. An atomic transaction is one in which a set of database changes are committed as a unit; either all of them are completed or none of them are. A consistent transaction is one in which all actions are taken against rows in the same logical state. An isolated transaction is one that is protected from changes by other users. A durable transaction is one that, once committed to a database, is permanent regardless of subsequent failure. There are different levels of consistency and isolation. See transaction-level consistency and statement-level consistency. See also transaction isolation level.

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

## B

**Before-image** A record of a database entity (normally a row or a page) before a change. Used in recovery to perform rollback.

**Big data** The current term for the enormous datasets created by Web applications, such as search tools (e.g., Google and Bing), and by Web 2.0 social networks, such as Facebook, LinkedIn, and Twitter.

**Bigtable** A nonrelational unstructured data store developed by Google.

**Binary relationship** A relationship between exactly two entities or tables.

**Boyce-Codd Normal Form (BCNF)** A relation in third normal form in which every determinant is a candidate key.

**Business intelligence (BI) systems** Information systems that assist managers and other professionals in analyzing current and past activities and in predicting future events. Two major categories of BI systems are reporting systems and data mining systems.

**Business rule** A statement of a policy in a business that restricts the ways in which data can be inserted, updated, or deleted in the database.

## C

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

## D

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

## E

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

## F

**Fact table** The central table in a dimensional database. Its attributes are called measures. See also [measure]().

**Field** (1) A logical group of bytes in a record used with file processing. (2) In the context of the relational model, a synonym for [attribute]().

**Fifth normal form (5NF)** A normal form necessary to eliminate an anomaly where a table can be split apart but not correctly joined back together. Also known as Project-Join Normal Form (PJ/NF).

**File data source** An ODBC data source stored in a file that can be emailed or otherwise distributed among users.

**First normal form (1NF)** Any table that fits the definition of a relation.

**Foreign key** An attribute that is a key of one or more relations other than the one in which it appears.

**Form** A structured on-screen presentation of selected data from a database. Forms are used for both data input and data reading. A form is part of a database application. Compare this with a report.

**Fourth normal form (4NF)** A relation in BCNF in which every multivalued dependency is a functional dependency.

**Functional dependency** A relationship between attributes in which one attribute or group of attributes determines the value of another. The expressions X → Y, “X determines Y,” and “Y is functionally dependent on X” mean that given a value of X, we can determine the value of Y.

## H

**HAS-A relationship** A relationship between two entities or objects that are of different logical types; for example, EMPLOYEE HAS-A(n) AUTO. Contrast this with an IS-A relationship.

**Hadoop Distributed File System (HDFS)** or **Hadoop** An open-source file distribution system that provides standard file services to clustered servers so that their file systems can function as one distributed file system.

**HBase** A nonrelational unstructured data store developed as part of the Apache Software Foundation’s Hadoop project. See [Hadoop Distributed File System (HDFS)]().

**HTML documnet tags** The tags in HTML documents that indicate the structure of the document.

**HTML syntax rules** The standards that are used to create HTML documents.

**Http://localhost** For a Web server, a reference to the user’s computer.

**Hypertext Markup Language (HTML)** A standardized set of text tags for formatting text, locating images and other nontext files, and placing links or references to other documents.

**Hypertext Transfer Protocol (HTTP)** A standardized means for using TCP/IP to communicate over the Internet.

## I

**ID-dependent entity** An entity that cannot logically exist without the existence of another entity. APPOINTMENT, for example, cannot exist without CLIENT to make the appointment. To be an ID-dependent entity, the identifier of the entity must contain the identifier of the entity on which it depends. Such entities are a subset of a weak entity. See also [existence-dependent entity](), and [weak entity]().

**Identifier** In an entity, a group of one or more attributes that determine entity instances.

**Identifying relationship** A relationship that is used when the child entity is ID-dependent upon the parent entity.

**IE Crow’s Foot model** Formally known as the Information Engineering (IE) Crow’s Foot model, it is a system of symbology used to construct E-R diagrams in data modeling and database design.

**Implicit lock** A lock that is placed automatically by a DBMS.

**Inconsistent backup** A backup file that contains uncommitted changes.

**Inconsistent read problem** An anomaly that occurs in concurrent processing in which transactions execute a series of reads that are inconsistent with one another. This problem can be prevented by using two-phase locking and other strategies.

**Index.html** A default Web page name provided by most Web servers.

**Inetpub folder** In Windows operating systems, the root folder for the IIS Web server.

**Information** (1) Knowledge derived from data, (2) data presented in a meaningful context, or (3) data processed by summing, ordering, averaging, grouping, comparing, or other similar operations.

**Information Engineering (IE) model** An E-R model developed by James Martin.

**Integrated Definition 1, Extended (IDEF1X)** A version of the entity-relationship model, adopted as a national standard, but difficult to understand and use. Most organizations use a simpler E-R version like the crow’s foot model.

**Integrated Development Environment (IDE)** An application that provides a programmer or application developer with a complete set of development tools in one package.

**Insertion anomaly** In a relation, a condition that exists when, to add a complete row to a table, one must add facts about two or more logically different themes.

**Internet Information Server (IIS)** A Windows Web server product that processes Active Server Pages (ASP).

**Intersection table** A table (also called a relation) used to represent a many-to-many relationship. It contains the keys of the relations in the relationship. When used to represent entities having a many-to-many relationship, it may have nonkey data if the relationship contains data.

**IS-A relationship** A relationship between a supertype and a subtype. For example, EMPLOYEE and ENGINEER have an IS-A relationship.

## J

**Java Database Connectivity (JDBC)** A standard means for accessing DBMS products from Java. With JDBC, the unique API of a DBMS is hidden, and the programmer writes to the standard JDBC interface.

**Java Server Pages (JSP)** A combination of HTML and Java that is compiled into a servlet.

**Join operation** or **Join** A relational algebra operation on two relations, A and B, that produces a third relation, C. A row of A is concatenated with a row of B to form a new row in C if the rows in A and B meet restrictions concerning their values. For example, A1 is an attribute in A, and B1 is an attribute in B. The join of A with B in which (A1 = B1) will result in a relation, C, having the concatenation of rows in A and B in which the value of A1 is equal to the value of B1. In theory, restrictions other than equality are allowed—a join could be made in which A1 < B1. However, such non-equal joins are not used in practice. Also known as inner join.

## K

**Key** (1) A group of one or more attributes that identify a unique row in a relation. Because relations cannot have duplicate rows, every relation must have at least one key that is the composite of all the attributes in the relation. A key is sometimes called a logical key. (2) With some relational DBMS products, an index on a column used to improve access and sorting speed. It is sometimes called a physical key. 

## L

**LAMP** A version of [AMP]() that runs on Linux.

**Lock**,  or **resource locking** To allocate a database resource to a particular transaction in a concurrent-processing system. The size at which the resource can be locked is known as the lock granularity.

**Lock granularity** The detail possible with a lock.

**Log** A file that contains a record of database changes. The log contains before-images and after-images.

**Logical unit of work (LUW)** An equivalent term for transaction. See [Transaction]().

**Logistic regression** A form of supervised data mining that estimates the parameters of an equation to calculate the odds that a given event will occur.

**Lost update problem** Same as concurrent update problem.

## M

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

## N

**N:M** An abbreviation for a many-to-many relationship between the rows of two tables.

**Natural join** A join of a relation A having attribute A1 with relation B having attribute B1, where A1 = B1. The joined relation, C, contains either column A1 or B1 but not both.

**NetBeans** A popular open-source integrated development environment (IDE).

**Nonidentifying relationship** In data modeling, a relationship between two entities such that one is not  ID-dependent on the other. See [Identifying relationship]().

**Nonrepeatable reads** A situation that occurs when a transaction reads data it has previously read and finds modifications or deletions caused by a committed transaction.

**Nonunique identifier** An identifier that determines a group of entity instances. See also [unique identifier]().

**Nonunique key** A key that potentially identifies more than one row.

**Normal form** A rule or set of rules governing the allowed structure of relations. The rules apply to attributes, functional dependencies, multivalued dependencies, domains, and constraints. The most important normal forms are 1NF, 2NF, 3NF, BCNF, 4NF, 5NF, and DK/NF.

**Normalization process** The process of evaluating a relation to determine whether it is in a specified normal form and, if necessary, of converting it to relations in that specified normal form.

**Null value** An attribute value that has never been supplied. Such values are ambiguous and can mean the value is unknown, the value is not appropriate, or the value is known to be blank.

## O

**Object persistence** The storage of object data values.

**Object-oriented DBMS (OODBMS)** A type of DBMS that provides object persistence. OODBMSs have not received commercial acceptance.

**Object-oriented programming (OOP)** A programming methodology that defines objects and the interactions between them to create application programs.

**Object-relational database** A database created by a DBMS that provides a relational model interface as well as structures for object persistence. Oracle Database is the leading object-relational DBMS.

**ODBC conformance level** In ODBC, definitions of the features and functions that are made available through the driver’s application program interface (API). A driver API is a set of functions that the application can call to receive services. There are three conformance levels: Core API, Level 1 API, and Level 2 API.

**ODBC data source** In the ODBC standard, a database and its associated DBMS, operating system, and network platform.

**ODBC Data Source Administrator** The application used to create ODBC data sources.

**ODBC Driver** In ODBC, a program that serves as an interface between the ODBC driver manager and a particular DBMS product. Runs on the client machines in a client-server architecture.

**ODBC Driver Manager** In ODBC, a program that serves as an interface between an application program and an ODBC driver. It determines the required driver, loads it into memory, and coordinates activity between the application and the driver. On Windows systems, it is provided by Microsoft.

**OLAP cube** In OLAP, a set of measures and dimensions arranged, normally, in the format of a table.

**OLAP report** The output of an OLAP analysis in tabular format. For example, this can be a Microsoft Excel PivotTable. See 
[OLAP Cube]().

**OLE DB** The COM-based foundation of data access in the Microsoft world. OLE DB objects support the OLE object standard. ADO is based on OLE DB.

**1:1** An abbreviation for a one-to-one relationship between the rows of two tables.

**1:N** An abbreviation for a one-to-many relationship between the rows of two tables.

*8Online Analytical Processing (OLAP)** A technique for analyzing data values, called measures, against characteristics associated with those data values, called dimensions.

**Online Transaction processing (OLTP) system** An operational database system available for, and dedicated to, transaction processing.

**Open Database Connectivity (ODBC)** A standard means for accessing DBMS products. Using ODBC, the unique API of a DBMS is hidden, and the programmer writes to the standard ODBC interface.

**Operational system** A database system in use for the operations of the enterprise, typically an OLTP system. See 

**Optimistic locking** A locking strategy that assumes no conflict will occur, processes a transaction, and then checks to determine whether conflict did occur. If so, the transaction is aborted. See also [dedlock]() and [pessimistic locking]().

**Outer join** A join in which all the rows of a table appear in the resulting relation, regardless of whether they have a match in the join condition. In a left outer join, all the rows in the left-hand relation appear; in a right outer join, all the rows in the right-hand relation appear.

## P

**Parent** A row, record, or node on the one side of a one-to-many relationship. See also [child]().

**Parent mandatory and child mandatory (M-M)** A relationship where the minimum cardinality of the parent is 1 and the minimum cardinality of the child is 1.

**Parent mandatory and child optional (M-O)** A relationship where the minimum cardinality of the parent is 1 and the minimum cardinality of the child is 0.

**Parent optional and child mandatory (O-M)** A relationship where the minimum cardinality of the parent is 0 and the minimum cardinality of the child is 1.

**Parent optional and child optional (O-O)** A relationship where the minimum cardinality of the parent is 0 and the minimum cardinality of the child is 0.

**Partitioned database** A database in which portions of the database are distributed to two or more computers.

**Personal database system** A DBMS product intended for use by an individual or small workgroup. Such products typically include application development tools such as form and report generators in addition to the DBMS. For example, Microsoft Access 2013.

**Pessimistic locking** A locking strategy that prevents conflict by placing locks before processing database read and write requests.

**Phantom read** A situation that occurs when a transaction reads data it has previously read and then finds new rows that were inserted by a committed transaction.

**PHP: Hypertext Processor** A Web page scripting language used to create dynamic Web pages. It now includes an object-oriented programming component and PHP Data Objects (PDO).

**Pig** A query language for nonrelational unstructured data stores developed as part of the Apache Software Foundation’s Hadoop project. See 

**Primary key** A candidate key selected to be the key of a relation.

**Processing rights and responsibilities** Organizational policies regarding which groups can take which actions on specified data items or other collections of data.

**Properties** Same as attributes.

## Q

**Query by Example (QBE)** A style of query interface, first developed by IBM but now used by other vendors, that enables users to express queries by providing examples of the results they seek.

**Question mark (?) wildcard character** A character used in Microsoft Access 2013 queries to represent a single unspecified character.

## R

**Read committed isolation** A level of transaction isolation that prohibits dirty reads but allows nonrepeatable reads and phantom reads.

**Read uncommitted isolation** A level of transaction isolation that allows dirty reads, nonrepeatable reads, and phantom reads to occur.

**Record**, **Row**, **Tuple** (1) A group of fields pertaining to the same entity; used in file-processing systems. (2) In the relational model, a synonym for row and tuple.

**Recovery via reprocessing** Recovering a database by restoring the last full backup, and then recreating each transaction since the backup.

**Recovery via rollback/rollforward** Recovering a database by restoring the last full backup, and then using data stored in a transaction log to modify the database as needed by either adding transactions (roll forward) or removing erroneous transactions (rollback).

**Recursive relationship** A relationship among entities, objects, or rows of the same type. For example, if CUSTOMERs refer other CUSTOMERs, the relationship is recursive.

**A relationship constraint** on foreign key values. A referential integrity constraint specifies that the values of a foreign key must be a proper subset of the values of the primary key to which it refers.

**Relation** A two-dimensional array that contains single-value entries and no duplicate rows. The meaning of the columns is the same in every row. The order of the rows and columns is immaterial.

**Relational model** A data model in which data are stored in relations and relationships between rows are represented by data values.

**Relational database** A database that consists of relations. In practice, relational databases contain relations with duplicate rows. Most DBMS products include a feature that removes duplicate rows when necessary and appropriate. Such removal is not done as a matter of course because it can be time-consuming and expensive.

**Relational schema** A set of relations with referential integrity constraints.

**Relationship** An association between two entities, objects, or rows of relations.

**Relationship cardinality constraint** A constraint on the number of rows that can participate in a relationship. Minimum cardinality constraints determine the number of rows that must participate; maximum cardinality constraints specify the largest number of rows that can participate.

**Relationship class** An association between entity classes.

**Relationship instance** (1) An association between entity instances, (2) a specific relationship between two tables in a database.

**Repeatable reads isolation** A level of transaction isolation that disallows dirty reads and nonrepeatable reads. Phantom reads can occur.

**Replicated database** A database in which portions of the database are copied to two or more computers.

**Report** A formatted set of information created to meet a user’s need.

**Reporting systems** Business intelligence (BI) systems that process data by filtering, sorting, and making simple calculations. OLAP is a type of reporting system.

**RFM analysis** A type of reporting system in which customers are classified according to how recently (R), how frequently (F), and how much money (M) they spend on their orders.

**Rollback** A process that involves recovering a database in which before-images are applied to the database to return to an earlier checkpoint or other point at which the database is logically consistent.

**Rollforward** A process that involves recovering a database by applying after-images to a saved copy of the database to bring it to a checkpoint or other point at which the database is logically consistent.

**Row** A group of columns in a table. All the columns in a row pertain to the same entity. Also known as tuple or record.

## S

**Schema-valid document** An XML document that conforms to XML Schema.

**Scrollable cursor** A cursor type that enables forward and backward movement through a recordset. Three scrollable cursor types discussed in this text are snapshot, keyset, and dynamic.

**Second normal form (2NF)** A relation in first normal form in which all non-key attributes are dependent on all the keys.

**Serializable isolation level** A level of transaction isolation that disallows dirty reads, nonrepeatable reads, and phantom reads.

**Shared lock** A lock against a data resource in which only one transaction can update the data but many transactions can concurrently read those data.

**SQL AND operator** The SQL operator used to combine conditions in an SQL WHERE clause.

**SQL built-in function** In SQL, any of the functions COUNT, SUM, AVG, MAX, or MIN.

**SQL CREATE TABLE statement** The SQL command used to create a database table.

**SQL CREATE VIEW statement** The SQL command used to create a database view.

**SQL FROM clause** The part of an SQL SELECT statement that specifies conditions used to determine which tables are used in a query.

**SQL GROUP BY clause** The part of an SQL SELECT statement that specifies conditions for grouping rows when determining the query results.

**SQL HAVING clause** The part of an SQL SELECT statement that specifies conditions used to determine which rows are in the groupings in GROUP BY clause.

**SQL OR operator** The SQL operator used to specify alternate conditions in an SQL WHERE clause.

*8SQL ORDER BY clause** The part of an SQL SELECT statement that specifies how the query results should be sorted when they are displayed.

**SQL percent sign (%) wildcard character** The standard SQL wildcard character used to specify multiple characters. Microsoft Access uses an asterisk (*) character instead of the underscore character.

**SQL SELECT clause** The part of an SQL SELECT statement that specifies which columns are in the query results.

**SQL SELECT/FROM/WHERE framework** The basic structure of an SQL query (SQL SELECT clause, SQL FROM clause, SQL WHERE clause, SQL ORDER BY clause, SQL GROUP BY clause, SQL HAVING clause, SQL AND operator, ad SQL OR operator).

**SQL SELECT * statement** A variant of an SQL SELECT query that returns all columns for all tables in the query.

**SQL SELECT ... FOR XML statement** A variant of an SQL SELECT query that returns the query results in XML format.

**SQL underscore (_) wildcard character** The standard SQL wildcard character used to specify a single character. Microsoft Access uses a question mark (?) character instead of the underscore character.

**SQL view** A relation that is constructed from a single SQL SELECT statement. SQL views have at most one multivalued path. The term view in most DBMS products, including Microsoft Access, SQL Server, Oracle Database, and MySQL, means SQL view.

**SQL WHERE clause** The part of an SQL SELECT statement that specifies conditions used to determine which rows are in the query results.

**Star schema** In a dimensional database and as used in an OLAP database, the structure of a central fact table linked to dimension tables.

**Statement-level consistency** A situation in which all rows affected by a single SQL statement are protected from changes made by other users during the execution of the statement. 

**Static cursor** A cursor that takes a snapshot of a relation and processes that snapshot.

**Stored procedure** A collection of SQL statements stored as a file that can be invoked by a single command. Usually, DBMS products provide a language for creating stored procedures that augments SQL with programming language constructs. Oracle provides PL/SQL for this purpose, and SQL Server provides Transact-SQL (T-SQL). With some products, stored procedures can be written in a standard language such as Java. Stored procedures are often stored within the database.

**Strong entity** In the entity-relationship model, any entity whose existence in the database does not depend on the existence of any other entity. 

**Structured Query Language (SQL)** A language for defining the structure and processing of a relational database. It can be used as a stand-alone query language, or it can be embedded in application programs. SQL was developed by IBM and is accepted as a national standard by the American National Standards Institute.

**Subquery** A SELECT statement that appears in the WHERE clause of an SQL statement. Subqueries can be nested within each other.

**Subtype entity** In generalization hierarchies, an entity or object that is a subspecies or subcategory of a higher-level type, called a supertype. For example, ENGINEER is a subtype of EMPLOYEE.

**Surrogate key** A unique, system-supplied identifier used as the primary key of a relation. The values of a surrogate key have no meaning to the users and usually are hidden on forms and reports.

**SUM** In SQL, a function that adds up a set of numbers.

**Supertype entity** In generalization hierarchies, an entity or object that logically contains subtypes. For example, EMPLOYEE is a supertype of ENGINEER, ACCOUNTANT, and MANAGER.

## T

**Table** A database structure of rows and columns to create cells that hold data values. Also known as a relation  in a relational database, although strictly only tables that meet specific conditions can be called relations.

**Ternary relationship** A relationship between three entities.

**Third normal form (3NF)** A relation in second normal form that has no transitive dependencies.

**Three-tier architecture** A Web database processing architecture in which the DBMS and the Web server reside on separate computers.

**Time dimension** A required dimension table in a dimensional database. The time dimension allows the data to be analyzed over time.

**Transaction** (1) A group of actions that is performed on the database atomically; either all actions are committed to the database or none of them are. (2) In the business world, the record of an event. 

**Transaction isolation level** The degree to which a database transaction is protected from actions by other transactions. The 1992 SQL standard specifies four isolation levels: read uncommitted, read committed, repeatable read, and serializable.

**Transaction-level consistency** A situation in which all rows affected by any of the SQL statements in a transaction are protected from changes during the entire transaction. This level of consistency is expensive to enforce and is likely to reduce throughput. It might also prevent a transaction from seeing its own changes. 

**Transactional system** A database dedicated to processing transactions such as product sales and orders. It is designed to make sure that only complete transactions are recorded in the database.

**Transitive dependency** In a relation having at least three attributes, such as R (A, B, C), the situation in which A determines B and B determines C, but B does not determine A.

**Trigger** A special type of stored procedure that is invoked by the DBMS when a specified condition occurs. BEFORE triggers are executed before a specified database action, AFTER triggers are executed after a specified database action, and INSTEAD OF triggers are executed in place of a specified database action. INSTEAD OF triggers are normally used to update data in SQL views.

**Two-phase locking** A procedure in which locks are obtained and released in two phases. During the growing phase, the locks are obtained; during the shrinking phase, the locks are released. After a lock is released, no other lock will be granted that transaction. Such a procedure ensures consistency in database updates in a concurrent-processing environment.

**Two-tier architecture** A Web database processing architecture in which the DBMS and the Web server reside on the same computer.

## U

**Unified Modeling Language (UML)**A set of structures and techniques for modeling and designing object-oriented programs and applications. UML is a methodology and a set of tools for such development. UML incorporates the entity-relationship model for data modeling.

**Unique identifier** An identifier that determines exactly one entity instance. 

**Unique key** A key that identifies a unique row.

**User** A person using an application.

**User data source** An ODBC data source that is available only to the user who created it.

**User group** A group of users.

**WAMP** AMP running on a Windows operating system.

**Weak entity** In the entity-relationship model, an entity whose logical existence in a database depends on the existence of another entity. 

**Web Services** A set of XML standards that enable applications to consume each other’s services using Internet technology.

**World Wide Web Consortium (W3C)** The group that creates, maintains, revises, and publishes standards for the World Wide Web including HTML, XML, and XHMTL.

**wwwroot folder** The root folder or directory of a Web site on a Microsoft IIS Web server.

**XHTML** The Extensible Hypertext Markup Language. A reformulation of HTML to XML standards of well-formed documents.
