# Hadoop Streaming in Python

This example describes steps about how to write MapReduce produce programs in Python and test it using Hadoop streaming. This is one of the popular methods of writing MR code in non-java languages.

## MapReduce

File `mapper.py` help to create map for every word in `word_count.txt`

    cat word_input.txt | python mapper.py
    
Output:

    cat     1
    mouse   1
    lion    1
    deer    1
    Tiger   1
    lion    1
    Elephant        1
    lion    1
    Bear    1


File `reducer.py` help to compute the cout and print the result

    cat word_input.txt | python mapper.py | sort -k1,1 | python reducer.py 

Result:

    Bear    1
    Elephant        1
    Tiger   1
    cat     1
    deer    1
    lion    3
    mouse   1    

