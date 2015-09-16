#!/usr/bin/env bash

# Example how to execute [name].ddl.sql or [name].dml.sql
hive --database [database-name] -f "[name].ddl.sql"

# Example of SQL statement execution form bash file.
# Important: Query must be in 1 one!
SQL = "INSERT INTO TABLE [table-name] [column-name], [column-name];"
hive --datavase [database_name] -e "${SQL}"

# Example for day variable
YESTERDAYS_DATE=$(date -d "Yesterday" +"%Y-%m-%d")