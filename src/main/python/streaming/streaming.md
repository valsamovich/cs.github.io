# Hadoop Streaming in Python

This example describes steps about how to write MapReduce produce programs in Python and test it using Hadoop streaming. This is one of the popular methods of writing MR code in non-java languages.

## Map

File `mapper.py` help to create map for every word in `word_count.txt`

    cat word_input.txt | python mapper.py
    
Output:

    cat     1
    lion    1
    deer    1
    Tiger   1
    lion    1
    Elephant        1
    lion    1
    cat     1

## Reducer

File `reducer.py` help to compute the cout and print the result

    cat word_input.txt | python mapper.py | sort -k1,1 | python reducer.py 

Result:

    Elephant        1
    Tiger   1
    cat     2
    deer    1
    lion    3
    

