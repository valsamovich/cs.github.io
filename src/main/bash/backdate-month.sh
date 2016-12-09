#!/usr/bin/env bash

# ENVIRONMENT=$1
# scp -p target/*.tar.gz ${ENVIRONMENT}

YEARS=(2015 2016)
MONTHS=(01 02 03 04 05 06 07 08 09 10 11 12)
DATES=(01 28 29 30 31)

for YEAR in ${YEARS[@]}; do
    # process 2015
    if [ ${YEAR} -eq ${YEARS[0]} ]; then
        for MONTH in ${MONTHS[@]}; do
            if [ ${MONTH} -eq ${MONTHS[0]} ] \
            || [ ${MONTH} -eq ${MONTHS[2]} ] \
            || [ ${MONTH} -eq ${MONTHS[4]} ] \
            || [ ${MONTH} -eq ${MONTHS[6]} ] \
            || [ ${MONTH} -eq ${MONTHS[7]} ] \
            || [ ${MONTH} -eq ${MONTHS[9]} ] \
            || [ ${MONTH} -eq ${MONTHS[11]} ]; then
                echo "PYTHONPATH=lib_python_wdprgms python2.7 main.py -start_date ${YEAR}-${MONTH}-${DATES[0]} -end_date ${YEAR}-${MONTH}-${DATES[4]} -odb incubating -sdb incubating -sp /data/hive/warehouse/incubating.db"
            elif [ ${MONTH} -eq ${MONTHS[1]} ]; then
                echo "PYTHONPATH=lib_python_wdprgms python2.7 main.py -start_date ${YEAR}-${MONTH}-${DATES[0]} -end_date ${YEAR}-${MONTH}-${DATES[1]} -odb incubating -sdb incubating -sp /data/hive/warehouse/incubating.db"
            else
                echo "PYTHONPATH=lib_python_wdprgms python2.7 main.py -start_date ${YEAR}-${MONTH}-${DATES[0]} -end_date ${YEAR}-${MONTH}-${DATES[3]} -odb incubating -sdb incubating -sp /data/hive/warehouse/incubating.db"
            fi
        done
    fi
    # process 2016
done
