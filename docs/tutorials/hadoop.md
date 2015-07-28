# Hadoop

The Apache **Hadoop** software library is a framework that allows for the distributed processing or computing of large data sets across clusters of computers using simple programming models. It is designed to scale up from single servers to thousands of machines, each offering local computation and storage. Rather than rely on hardware to deliver high-availability, the library itself is designed to detect and handle failures at the application layer, so delivering a highly-available service on top of a cluster of computers, each of which may be prone to failures.

- [Apache Hadoop](http://hadoop.apache.org/)

## Fundamentals

[**Big Data**](https://en.wikipedia.org/wiki/Big_data) is data sets that are too large to be analyzed on single mashine, no matter how beefy that mashine is.

**Scale** comes from a variaty of factors:

- Quanity (volume) e.g. terabytes or petabytes.
- Speed (velosity) e.g. streaming incoming data.
- Handling (variety) e.g. many types of data.

**Machine Learning** (ML) focuses on learning by example, and the more examples you have, the better the learner. Many modern applications are powered by ML algorithms that use Big Data to avoid tricky things like smoothing or sample error.

**V's of Big Data** is a probllems with distributed computing:

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

- **HDFS**(Haddop Destributed file system), a distributed file system manages data accross the cluster and makes it avalable for processing.
- **YARN**(Yet Another Resource Negotiator), a recource manager that manages and schedules computational assets and an application deplyment framework for runnig processing jobs.
- **Node** is a individual machine which run YARN and HDFS 
  - **Master node** run global managment processes.
  - **Worker nodes** run local data and appication processes.
- **Cluster** is a set of machines that run YARN and HDFS. Cluster can have a single node or many thousands, the cluster sclaes linearly - every node bring more capacity and performance.

## HDFS

**HDFS**is a distributed file system. HDFS provides redundant storage of extremely large data sets by keeping data in a cluster of cheap unreliable, but cost effective computers. By spreading data accross a cluster, HDFS ensures that data is made local to computational processess. 





