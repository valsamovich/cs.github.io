# A Short History of Databases

The first electronic storage of data was done in file systems. Previously we saw some of the problems that eventually developed. Due to growth in the amount of data stored and the increase in number of people needing access to that data, specialized software systems were developed to address data storage. This specialized software was called a database management system (DBMS). Historically, DBMSs have been categorized based on the data storage model used. There are five primary models:

- hierarchical models,
- network models,
- relational models,
- object-oriented models,
- NoSQL models.

## Hierarchical Models

Data in a hierarchical database is stored in a hierarchy or tree-like model. Actually it is better visualized as an upside down tree. The data radiates out from a common "root node" as shown in the figure. This root is the parent of all other nodes. A node can have any number of child nodes but each child node has only one parent node.

We can model student data using a hierarchical structure. Assume a student takes courses. Each student can take one or more courses. The best known hierarchical database was created by IBM in the mid 1960s for the Apollo moon missions. It was named Information Management System or IMS. This database is still available today.

The primary problem with the hierarchical data model is the complexity involved when making changes either to the database or the application software that uses the database.

## Network Models

Charles Bachman is generally credited with creating the network model of data storage. This model is similar to the hierarchical model except the network model allows multiple parent nodes for a child node instead of a single parent node. The model was standardized in 1969. Network databases were able to model the "real world" more closely than hierarchical databases. However they never gained wide spread acceptance for two reasons. First, IBM - the dominant technology company at the time - never adopted the network model choosing instead to add some network model features to its hierarchical database. The second reason was the development of the relational database.

## Relational Models

These types of databases are the focus of this course and will be covered in detail.

## Object-Oriented Models

Object-oriented databases have not achieved the level of success or market share in the business world that relational databases have enjoyed. This is primarily due to two factors. First, there is no standard language with which to add, manipulate, and retrieve data for these products. The Structured Query Language (SQL) exists for these purposes with respect to relational databases but no equivalent to SQL exists for object-oriented databases. Second, most of the major relational database vendors (Oracle, IBM, Microsoft) have been adding object-oriented features to their relational database product.

Object-oriented databases grew from the use of object-oriented programming languages like SmallTalk, C++, and Java. These languages create and manipulate electronic models of real world objects and it became necessary to store and manage these objects just like non object-oriented data.

The Object Query Language (OQL) is the latest attempt by a standards group (Object Data Management Group - ODMG) to create a common query language for object-oriented databases. The effort started in 1991 and the third revision of the standard was published in 2000. The ODMG was dissolved in 2001. To date you will still find a wide variety of "standards" in use with respect to object-oriented databases.

The primary advantages of OO databases compared to relational databases are:

- Data access will be faster compared to a relational database in many situations due to the way associated data is stored.
- OO databases more closely match the storage model used by OO programming languages.
- OO databases are made to store more complex types like audio, video, and web data.

## NoSQL Models

NoSQL databases were first developed in the late 1990s. These databases are not built using the relational model. NoSQL databases were developed in response to the difficulty of scaling up relational databases. Companies such as Google, Facebook, eBay, and Amazon store extremely large amounts of data. This data is often unstructured and doesn't exhibit relationships common in relational databases. Relational databases generally scale "up" by using larger, more powerful (and more expensive) servers. NoSQL databases scale "out" by using more servers and these servers are usually low cost inexpensive machines.

There are different interpretations of the explicit meaning of NoSQL is. One interpretation is literally that the database doesn't use the Structured Query Language (SQL). This is true for all the products in this category. Another interpretation is that NoSQL stands for "not only SQL" indicating a business may need a different type of database for large data storage. A relational database would still be used where appropriate.

NoSQL databases fall into several categories based on how they store data. These categories are document stores, key-value stores, column family stores, and graph databases. It is not important to know the details of each type for this course. It is only important to know there are different types of NoSql databases and the type depends on how the data is stored.

Specific products in this category include:

- Dynamo - a key-value NoSQL database created by Amazon.com
- Cassandra - a column oriented NoSQL database created by Facebook (and subsequently open-sourced)
- BigTable - column oriented NoSQL database created by Google
- CouchDB and MongoDB - document oriented NoSQL databases that are are open source.
