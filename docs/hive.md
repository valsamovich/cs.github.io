# Hive

The Apache Hive ™ data warehouse software facilitates querying and managing large datasets residing in distributed storage. Hive provides a mechanism to project structure onto this data and query the data using a SQL-like language called HiveQL. At the same time this language also allows traditional map/reduce programmers to plug in their custom mappers and reducers when it is inconvenient or inefficient to express this logic in HiveQL.

- [Hive](https://hive.apache.org/) official website.
- [Hive](http://archive.cloudera.com/cdh4/cdh/4/hive/language_manual/cli.html) command line options.
- [Cheat Sheet](http://hortonworks.com/wp-content/uploads/downloads/2013/08/Hortonworks.CheatSheet.SQLtoHive.pdf) SQL to Hive.
- [Video](https://www.youtube.com/watch?v=Pn7Sp2-hUXE) tutorial.

## Content

- [Introduction](https://github.com/valerysamovich/engineering/blob/master/docs/tutorials/hive.md#introduction)
- [Architecture](https://github.com/valerysamovich/engineering/blob/master/docs/tutorials/hive.md#architecture)
- [HiveQL](https://github.com/valerysamovich/engineering/blob/master/docs/tutorials/hive.md#hiveql)
- [Tables](https://github.com/valerysamovich/engineering/blob/master/docs/tutorials/hive.md#tables)
- [Commands](https://github.com/valerysamovich/engineering/blob/master/docs/tutorials/hive.md#commands)
- [Summary](https://github.com/valerysamovich/engineering/blob/master/docs/tutorials/hive.md#summary)

## Introduction

Hive is a data warehouse system layer build on top of Hadoop. It's allows to define a structure for unstructured Big Data. It's simplifies analysis and queries with an SQL-like scripting language called **HiveQL** (Hive Query Language). 
    
            DATA SERVICES
    ------------------------------
    | FLUME | PIG | HIVE |       |
    --------|------------| HBASE |
    | SQOOP |  HCATALOG  |       |
    ------------------------------
    |     HADOOP CORE - HDFS     |
    ------------------------------

- **Hive** is not relational database. It's use a database to store metadata.
- **Hive** designed for on-line transaction processing. Runs on Hadoop.
- **Hive** is not suited for real-time queries and row-level updates. Best used for batch jobs.

## Architecture

![alt text](/img/hive-architecture.png "Hive architecture")

Pig and Hive work well together!

## HiveQL

1. HiveQL is similar to other SQLs
  - Uses familiar relational database concepts
  - Based on the SQL-92 specification
2. Supports multi-table inserts via your code
  - Accesses "Big Data" via tables 
3. Converts SQL queries into MapReduce jobs
  - User does not need to know MapReduce
4. Supports plugging custom MapReduce scripts into queries

The **Hive** shell is tarted using the hive executable:

    $ hive
    hive>

Use the `-f` flag to specify a file that contains a hive script:

    $ hive -f query.hive

## Table

1. A **Hive Table** consists of:
  - Data (typically a file or group of files in HDFS)
  - Schemn (in the form data store in relational database)
2. Schema and data are separate
  - A schema can be defined for existing data
  - Data can be added or removed independenlty
  - Hive can be "pointed" at existing data
3. Schema must be define if existing data in HDFS that you weant to use in **Hive**

> Each row is comma delimited text. ***HiveQL** statements are terminated with a semicolon
    
    hive> CREATE TABLE myTable (name string, age int)
        ROW FORMAT DELIMITE
        FIELDS TERMINATED BY ';'
        STORED AS TEXTFILE

## Commands

- SQL to Hive [Cheat Sheet](http://hortonworks.com/wp-content/uploads/downloads/2013/08/Hortonworks.CheatSheet.SQLtoHive.pdf) SQL to Hive.
- Hive Function [Cheat Sheet](http://www.qubole.com/resources/cheatsheet/hive-function-cheat-sheet/).
- If abode don't work click [magic](http://lmgtfy.com/?q=+Hive+cheat+sheet).

## Summary

- Hive works with Hadoop to allow you to query and manage large-scale data using a familiar SQL-like interface.
- Hive provides CLI access to the shell and Microsoft HD Insight provides console access.
- Hive tables consist of data and schema; data and schema are separated for maximum flexibility.
- Hive query language supports familiar SQL operations including joins, subqueries, order by, sort by, and so on.
