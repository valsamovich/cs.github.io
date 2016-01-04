#!/usr/bin/env bash

feed-main(){
    # Example of file execution
    python process.py
    
    # Example how to execute [name].ddl.sql or [name].dml.sql
    hive --database [database-name] -f "[name].ddl.sql"
    
    # Example of SQL statement execution form bash file.
    SQL = "INSERT INTO TABLE [table-name] [column-name], [column-name];"
    hive --datavase [database_name] -e "${SQL}"
    
    # Store date and time
    COMPLETION_TIME=`date`

    # Display message about completion
    echo "Process completed at ${COMPLETION_TIME}"
}

feed-main
