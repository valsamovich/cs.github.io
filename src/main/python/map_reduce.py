def map(key, value):
    for word in value.split():
        emit(word, 1)

# def reduce(key, values):
    count = 0
    for val in values:
        count +=val
    emit(key, count)
