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

### B

**Before-image** A record of a database entity (normally a row or a page) before a change. Used in recovery to perform rollback.

**Big data** The current term for the enormous datasets created by Web applications, such as search tools (e.g., Google and Bing), and by Web 2.0 social networks, such as Facebook, LinkedIn, and Twitter.

**Bigtable** A nonrelational unstructured data store developed by Google.

**Binary relationship** A relationship between exactly two entities or tables.

**Boyce-Codd Normal Form (BCNF)** A relation in third normal form in which every determinant is a candidate key.

**Business intelligence (BI) systems** Information systems that assist managers and other professionals in analyzing current and past activities and in predicting future events. Two major categories of BI systems are reporting systems and data mining systems.

**Business rule** A statement of a policy in a business that restricts the ways in which data can be inserted, updated, or deleted in the database.

### C

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

### D

**Data administration** An enterprisewide function that concerns the effective use and control of an organization’s data assets. A person can perform it, but more often it is performed by a group. Specific functions include setting data standards and policies and providing a forum for conflict resolution. See also [database administration]() and [DBA]()

**Data definition language (DDL)** A language used to describe the structure of a database.
