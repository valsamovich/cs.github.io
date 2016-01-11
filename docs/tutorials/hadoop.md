# Hadoop

The Apache **Hadoop** software library is a framework that allows for the distributed processing or computing of large data sets across clusters of computers using simple programming models. It is designed to scale up from single servers to thousands of machines, each offering local computation and storage. Rather than rely on hardware to deliver high-availability, the library itself is designed to detect and handle failures at the application layer, so delivering a highly-available service on top of a cluster of computers, each of which may be prone to failures.

![alt text](/assets/hadoop-logo.png "Hadoop logo")

- [Apache Hadoop](http://hadoop.apache.org/) official website
- [Apache Hadoop shell commands](http://hadoop.apache.org/docs/current/hadoop-project-dist/hadoop-common/FileSystemShell.html)

## Content:

- [Fundamentals](https://github.com/valerysamovich/engineering/blob/master/docs/tutorials/hadoop.md#fundamentals)
- [History](https://github.com/valerysamovich/engineering/blob/master/docs/tutorials/hadoop.md#Hhistory)
- [Architecture](https://github.com/valerysamovich/engineering/blob/master/docs/tutorials/hadoop.md#architecture)
- [HDFS](https://github.com/valerysamovich/engineering/blob/master/docs/tutorials/hadoop.md#hdfs)
- [MapReduce](https://github.com/valerysamovich/engineering/blob/master/docs/tutorials/hadoop.md#mapreduce)
- [Example](https://github.com/valerysamovich/engineering/blob/master/docs/tutorials/hadoop.md#example)

## Fundamentals

[**Big Data**](https://en.wikipedia.org/wiki/Big_data) is data sets that are too large to be analyzed on single mashine, no matter how beefy that mashine is.

**Scale** comes from a variaty of factors:

- Quanity (volume) e.g. terabytes or petabytes.
- Speed (velosity) e.g. streaming incoming data.
- Handling (variety) e.g. many types of data.

**Machine Learning** (ML) focuses on learning by example, and the more examples you have, the better the learner. Many modern applications are powered by ML algorithms that use Big Data to avoid tricky things like smoothing or sample error.

**V's of Big Data** is a problems with distributed computing:

- Volume
- Velocity
- Variety
- Veracity

## History

- **2002** The Apache Nutch Project. 
  - Open source web crawler and search engine.
- **2003** The Google File System.
  - Stores data computation locally.
  - Distributed file system.
  - Managment with single master server
  - Low-cost, commodity storage modes.
- **2004** MapReduce
  - Simplified Data Processing on Large Clusters.
- **2005** Reimplement MapReduce and GFS(HDFS) in open-source to power Nutch.
- **2008** Apache elevates Hadoop to a top-level project.

## Architecture

**Concepts:**

- Minimize the amount of network traffic.
- Duplicate data to provide data safety.
- Master progrms allocate work and manage jobs.
- Each task only operates on a single block of data.
- Jobs, nodes, and disks are failure tolerant via redundancy.
  - *Redundancy keeps data and computation safe.*

**Components:**

- **HDFS** (Hadoop Destributed file system), a distributed file system manages data accross the cluster and makes it avalable for processing.
- **YARN** (Yet Another Resource Negotiator), a recource manager that manages and schedules computational assets and an application deplyment framework for runnig processing jobs.
- **Node** is a individual machine which run YARN and HDFS 
  - **Master node** (NameNode) run global managment processes.
  - **Worker nodes** (DataNode ) run local data and appication processes.
- **Cluster** is a set of machines that run YARN and HDFS. Cluster can have a single node or many thousands, the cluster sclaes linearly - every node bring more capacity and performance.

## HDFS

**HDFS** is a distributed file system. HDFS provides redundant storage of extremely large data sets by keeping data in a cluster of cheap unreliable, but cost effective computers. By spreading data accross a cluster, HDFS ensures that data is made local to computational processess. 

- **HDFS** is a software layer on top of a native file system** susch as ext4 or xfs. 
- Interface to **HDFS** is similar to poxis-complient** such as Unix or Linux.
- **HDFS** performs best with a modest number of large files.
- HDFS is optimized for large, streaming reads of files.
- HDFS is a **worm storage**, write once, read many.
- All files are split into blocks, usually either 64 or 128MB. Its' configurable.

Note that metadata associated with the files is stored in the memory of the NameNode. When a client application wants to read a file it requests metadata from the NameNode to locate blocks, then communicates directly with the DataNodes to read the data.

## MapReduce

MapReduce isa a functional programming paradigm:

    Map => Reduce
    Input x => Function f => Output f(x)

- On Haddop, Map Reduce is the first and primary methodology fo cluster computing.
- Simple, powerfull, and flexible enough to implement many analytical algorithms in parallel.
- MapReduce API is in Java, but Hadoop Streaming enables MapReduce in any Unix-pipe compatible language.

A **MapReduce** job is composed of many Map and Reduce tasks that operate on data that is stored locally, thus minimizing network traffic.

    |      | Map          |      | Map          |      |
    |      |     \        |      |     \        |      |
    |      |      Reduce  |      |      Reduce  |      |
    |      |     /      \ |      |     /      \ |      |
    | HDFS | Map          | HDFS | Map          | HDFS |
    |      |     \      / |      |     \      / |      |
    |      |      Reduce  |      |      Reduce  |      |
    |      |     /        |      |     /        |      |
    |      | Map          |      | Map          |      |

A **Job** is a full program, the complete execution of Map and Reduce functions across all input data. A **Job** is composed of many tasks, the execution of a singlr attempt at Map or Reduce on a block of data. Tasks are presided over by thr NodeManager.

A **Map** function takes as input a list and operates singly upon each individual element in the list, e.g. mapping a function to each item in a list:

          Input list  [l][l][l][l][l][l][l]
    Mapping function   |  |  |  |  |  |  |
         Output list  [l][l][l][l][l][l][l]

A **Reducer** also takes a list as input, but then combines the values in the list to a single output value. Hadoop **Reducers** receive that list of values on a per-key basis via the key/value pairs the Mapper output:

           Input list  [l][l][l][l][l][l][l]
    Reducing function   \________|________/
         Output value           [v]

> The gurantee that a Reducer receives all values for a singlr key requires a **shuffle and sort** between **Map** and **Reduce**.

![alt text](/assets/hadoop-shuffling.png "Hadoop shuffling")

## Example

This section is demonstrate the data flow in a MapReduce algorithm with canonical WordCount example by Python. **Goal** is to get from text woard and count.

**Functions:**

    # emit is a function that performs Hadoop IO
    def map(key, value):
        for word in value.split():
            emit(word, 1)
 
    # def reduce(key, values):
        count = 0
        for val in values:
            count +=val
        emit(key, count)

**Input:**

    # Intput to WordCount Mappers
    (31416, "the cat in the hat ran fast")
    (27183, "the fast cat wears no heat")

**Output:**

    # Output Mapper 1
    ("the", 1), ("cat", 1), ("in", 1), ("the", 1), 
    ("hat", 1),  ("ran", 1),  ("fast", 1)
    
    # Output Mapper 2
    ("the", 1), ("fast", 1), ("cat", 1),
    ("wears", 1), ("no", 1), ("hat", 1)

**Input for Reducer**  and shuffle/sort:

    # Input to WordCount Reducers
    # This data was computed by shuffle/sort
    ("cat", [1, 1])
    ("fast", [1, 1])
    ("hat", [1, 1])
    ("in", [1])
    ("no", [1])
    ("ran", [1])
    ("the", [1, 1, 1])
    ("wears", [1])

**Output by Reducer**

    # Output by all WordCount reducers
    ("cat", 2)
    ("fast", 2)
    ("hat", 2)
    ("in", 1)
    ("no", 1)
    ("ran", 1)
    ("the", 3)
    ("wears", 1)
