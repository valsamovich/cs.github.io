# Hive

The Apache Hive ™ data warehouse software facilitates querying and managing large datasets residing in distributed storage. Hive provides a mechanism to project structure onto this data and query the data using a SQL-like language called HiveQL. At the same time this language also allows traditional map/reduce programmers to plug in their custom mappers and reducers when it is inconvenient or inefficient to express this logic in HiveQL.

- [Hive](https://hive.apache.org/) official website. 

## Content

- Introduction
- Architecture
- HiveQL
- Tables
- Additional

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

![alt text](/assets/hive-architecture.png "Hive architecture")

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
