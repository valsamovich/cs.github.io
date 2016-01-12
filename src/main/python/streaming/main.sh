#!/usr/bin/env bash

#!/usr/bin/env bash

# Computes the path where this bash script is running from
JOB_DIRECTORY="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

hadoop jar ${HADOOP_STREAMING} \
    -Dmapred.reduce.tasks=1 \
    -files \
    /home/WDPRO-CUSTANALYTICS-PROD/samov/mapper.py \
    /home/WDPRO-CUSTANALYTICS-PROD/samov/reducer.py \
    -mapper "python mapper.py" \
    -reducer "python reducer.py" \
    -input /data/WDPRO-CUSTANALYTICS-PROD/test-process/input \
    -output /data/WDPRO-CUSTANALYTICS-PROD/test-process/output