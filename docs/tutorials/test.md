Clustering Files

Another strategy to improve database performance is to change the way the data is physically stored. This doesn't change the logical design and no data is physically duplicated. The most common way to reorganize the data is to use clustering. Clustered files store rows from one tables physically close to related rows from another table on the disk. (This is often appropriate for tables in a parent-child relationship - that is, a one to many relationship.) Clustering is usually done when two tables are involved and the data from those two tables must be accessed at the same time. Clustering is not possible if only one table is involved.

Assume we often need to retrieve a report of book borrowers and the books they checked out. We could cluster the checkout records for each borrower. The first figure below shows some sample data without clustering.

Separate or unclustered Borrower and Checkout tables.

Figure 2

With clustering, the rows for each borrower are relocated to be physically close to the borrower row. This is represented in the figure below.

The Borrower and Checkout tables in a clustered environment.

Figure 3

In this configuration you can readily see which books were checked out by which borrower. For example, borrower 12495 has checked out four books (12343299-X, 324333-23-3, 7564321-32, and 7564321-32). The advantage of clustering is that it can speed up table joins. If users of this database often ran queries that reported which books were checked out by which borrowers and those queries ran slow, clustering may be a solution. Creating an index for ID would be the first choice to improve performance but since ID is a primary key in the Borrower table and a foreign key in the Checkout table we can assume those are already indexed and performance problems still exist. The query being used might be the following so you can see the Borrower and the Checkout tables are being joined in the WHERE clause.

1
SELECT ID, LName, FName, ISBN
2
     FROM Borrower, Checkout
3
          WHERE Borrower.ID = Checkout.ID;
Figure 4

The problem with clustering is the two files are now fragmented. That is, the Borrower and Checkout tables are broken apart. This means access to the Borrower and Checkout tables will be slower than if they had not been clustered. This may or may not be a tradeoff the database designer is willing to make. So if it is common to list all rows of one or both tables, those queries may be slower than before. For example, either of these types of queries may now run slow.

1
SELECT * FROM Borrower;
2
SELECT * FROM Checkout;
Figure 5

This is the type of trade off and balancing that must be done during physical design. Clustering speeds up joins between the two tables but slows down listing all rows in either table. Often this is a trade off the DBA will make because it is more common to have a query like that in Figure 4 than it is to have queries like those in Figure 5.

Here is a short simulation (:12 min, .flv) to demonstrate the physical access of rows from a parent table to the related rows in a child table. Note the amount of distance (back and forth movement) the disk read/write head must travel during the operation. Here is a second simulation (:12 min, .flv) of the same situation when the two tables are clustered. The speed of the data access will be much faster in the clustered case because the total distance traveled of the read/write heads will be much shorter. These simulations are from "Reduce I/O with Oracle cluster tables" by Burleson Consulting. (www.dba-oracle.com/oracle_tip_hash_index_cluster_table.htm)
