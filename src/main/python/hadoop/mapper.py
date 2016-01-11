#!/usr/bin/env python

import sys

for line in sys.stdin:
    # remove leading and trailing whitespaces
    line = line.strip()
    words = line.split()

    for word in words:
        print '%s\t%s' % (word, 1)
