# Data Engineering

**Quote:** "*Data engineers* are the designers, builders and managers of the information or **"big data"** infrastructure. They develop the architecture that helps analyze and process data in the way the organization needs it. And they make sure those systems are performing smoothly.

In computing, **Extract, Transform and Load** (ETL) refers to a process in database usage and especially in data warehousing that: Extracts data from homogeneous or heterogeneous data sources. Transforms the data for storing it in proper format or structure for querying and analysis purpose.

## `scp`

`scp` allows files to be copied to, from, or between different hosts. It uses ssh for data transfer and provides the same authentication and same level of security as `ssh`.

    scp <file> <env>:~/<directory>/     # Secure copy of the local to remote host  
    scp serde.sh PROD01:~/samovich/     # Example

    scp scp <env>:~/<directory>/<file>      # Secure copy from remote to local host
    scp scp PROD01:~/files/serde.ddl.sql .  # Example

## gzip

`gzip` is a file format and a software application used for file compression and decompression. 

    # to zip file(s) or directorie(s) 
    tar -zcvf [filename].gz [fileOrDirectory1] [fileOrDirectly2] [fileOrDirectoryN]
    
    # to unzip file(s) or directorie(s)
    tar -zxvf [filename].gz

## Hive

The Apache Hive ™ data warehouse software facilitates querying and managing large datasets residing in distributed storage. Use the -f flag to specify a file that contains a hive script.
    
    # Enable header
    set hive.cli.print.header=true;
    
    # Execute the hive script
    $ hive -f query.hive
    
    # Use database
    use [database-name];
    
    # Add new parittions: ALTER TABLE [table-name] ADD PARTITION([patition-name]="[fragmnet]");
    ALTER TABLE simba_merchandise_revenue ADD PARTITION(fiscal_year_week="2016-02");
    
    # show table ddl statement
    Show create table [table-name];
    
    # Show talbe partitions
    show partitions [table-name];
    
## Java

Run .jar via command line(**FQCN** stands for Fully-Qualified Class Name):

    java [first-argument] [second-argument] -classpath [jar-location] [FQCN]
    java -Dinput=/Users/samov004/Downloads/test.xls -Doutput=/Users/samov004/Downloads/result.csv -classpath cima-data-utils-1.0-SNAPSHOT.jar com.disney.cima.converters.ConvertXLStoCSV

## Bash
    
    # Execute script 30 times from 22 to 52, by passing different value
    for I in {[number-from]..[number-to]}; do bash [script-name].sh $I; done
    for I in {22..52}; do bash simba.main.sh $I; done
    
    # Other types of loops
    for I in {1..10}; do echo $I; done 
    for I in 1 2 3 4 5 6 7 8 9 10; do echo $I; done
    for I in $(seq 1 10); do echo $I; done
    for ((I=1; I <= 10 ; I++)); do echo $I; done

    # Strip first line in file(.txt, .csv)
    tail -n+2 /path/to/file > /path/to/output
    
    # Merge multiply files into one(.csv, .txt):
    cat *.txt > merged.txt
    
    # Regex vs. String
    REGEX='<a href="(getfile.php\?c=.+)">'
    FILE='[&nbsp;<a href="getfile.php?c=QscKp9kdGS&g=HkCsp">download</a>&nbsp;]</span><br />'
    
    if [[ ${FILE} =~ ${REGEX} ]]; then
        echo The regex matches!
        echo $BASH_REMATCH
        echo ${BASH_REMATCH[1]}
    fi

