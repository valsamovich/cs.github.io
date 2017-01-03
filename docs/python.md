# Python

[**Python**](https://www.python.org/) is a widely used general-purpose, high-level programming language. Its design philosophy emphasizes code readability, and its syntax allows programmers to express concepts in fewer lines of code than would be not possible in languages such as C++ or Java. The language provides constructs intended to enable clear programs on both a small and large scale.

- Official [website](https://www.python.org/)
- [Codecademy](https://www.codecademy.com/en/tracks/python) tutorial
- [Tutorialpoint](http://www.tutorialspoint.com/python/) tutorial
- [Regex](http://pythex.org/) for Python
- To validate syntax without compiling: `python -m py_compile [fime-name].py`.
- [Escape Characters](http://www.tutorialspoint.com/python/python_strings.htm).
- [Style Guide](https://www.python.org/dev/peps/pep-0008/) for Python Code.

## Access by index

The string "PYTHON" has six characters, numbered 0 to 5, as shown below. So if you wanted "Y", you could just type "PYTHON"[1] (always start counting from 0!):

    +---+---+---+---+---+---+
    | P | Y | T | H | O | N |
    +---+---+---+---+---+---+
      0   1   2   3   4   5

## Modules

Preview Python modules

    #!/usr/local/bin/python2.7

    import pip
    
    installed_packages = pip.get_installed_distributions()
    installed_packages_list = sorted(["%s==%s" % (i.key, i.version)
                                      for i in installed_packages])
    print(installed_packages_list)
    
Preview modules via command line **bash**
    
    # view all modules
    pip list
    
    # preview specific modules
    pip list | grep "matplotlib*\|numpy*"

Need a Python library published at the Python Package Index

    pip install [library-name]

## Comprehensions 

Its' convenient way to work with iterables. Comprehensions let skip the for loop and start creating lists, dicts, and sets straight from your iterables. Comprehensions also let emulate functional programming aspects like map() and filter() in a more accessible way.
    
    # Without comprehensions
    nums = range(5, 20)
    halves = []
    for num in nums:
        halves.append(num/2)
    
    # With comprehensions
    halves = [num/2 for num in nums]

## Streaming

- Classic [example](https://github.com/valerysamovich/engineering/tree/master/src/main/python/streaming) with `world count`

## Regex

    import re
    word = 'fubar'
    regexp = re.compile(r'ba[r|z|d]')
    if regexp.search(word) is not None:
        print 'matched'

## Structure

Filesystem structure of a Python project.

- Do:
 - name the directory something related to your project. For example, if your project is named "Twisted", name the top-level directory for its source files Twisted. When you do releases, you should include a version number suffix: Twisted-2.5.
 - create a directory Twisted/bin and put your executables there, if you have any. Don't give them a .py extension, even if they are Python source files. Don't put any code in them except an import of and call to a main function defined somewhere else in your projects. (Slight wrinkle: since on Windows, the interpreter is selected by the file extension, your Windows users actually do want the .py extension. So, when you package for Windows, you may want to add it. Unfortunately there's no easy distutils trick that I know of to automate this process. Considering that on POSIX the .py extension is a only a wart, whereas on Windows the lack is an actual bug, if your userbase includes Windows users, you may want to opt to just have the .py extension everywhere.)
 - If your project is expressable as a single Python source file, then put it into the directory and name it something related to your project. For example, Twisted/twisted.py. If you need multiple source files, create a package instead (Twisted/twisted/, with an empty Twisted/twisted/__init__.py) and place your source files in it. For example, Twisted/twisted/internet.py.
 - put your unit tests in a sub-package of your package (note - this means that the single Python source file option above was a trick - you always need at least one other file for your unit tests). For example, Twisted/twisted/test/. Of course, make it a package with Twisted/twisted/test/__init__.py. Place tests in files like Twisted/twisted/test/test_internet.py.
add Twisted/README and Twisted/setup.py to explain and install your software, respectively, if you're feeling nice.
- Don't:
 - put your source in a directory called src or lib. This makes it hard to run without installing.
put your tests outside of your Python package. This makes it hard to run the tests against an installed version.
create a package that only has a __init__.py and then put all your code into __init__.py. Just make a module instead of a package, it's simpler.
 - try to come up with magical hacks to make Python able to import your module or package without having the user add the directory containing it to their import path (either via PYTHONPATH or some other mechanism). You will not correctly handle all cases and users will get angry at you when your software doesn't work in their environment.

[Example](http://as.ynchrono.us/2007/12/filesystem-structure-of-python-project_21.html):

    [python-app]
        |-- .gitignore
        |-- README.md
        |-- pom.xml
        |-- setup.cfg
        |-- setup.py
        `-- assets (optional)
                `-- nexus-logo.png
                `-- jenkins-logo.png
                `-- feed/process.png
        `-- package-descriptor
        |       `-- descriptor.xml
        `-- [python-app]
           `-- resources
           `-- test
                `-- test_main.py
           `-- __init__.py
           `-- main.py

[Open Sourcing a Python Project the Right Way](https://www.jeffknupp.com/blog/2013/08/16/open-sourcing-a-python-project-the-right-way/)

## CLI arguments

To accept argumnets:

    #!/usr/local/bin/python2.7
    import sys
    print sys.argv[1]
    
Result:
    
    # it's gonna printed everything what is accepted
    [value]

## Basic Authorization

    import json
    import requests
    from requests.auth import HTTPBasicAuth

    r = requests.post('http://localhost:8080/dataconsistency/facts/new',
                      headers={'Content-Type': 'application/json'},
                      auth=HTTPBasicAuth('username', 'secret'), data=json.dumps({
            'processId': 1,
            'metricId': 1,
            'lobId': 1,
            'factDate': '2016-10-25',
            'factValue': 200
        }))

    print r

## test1.py

    def some_func():
        print 'in test 1, unproductive'
    
    if __name__ == '__main__':
        # test1.py executed as script
        # do something
        some_func()

service.py

    import test1

    def service_func():
        print 'service func'
    
    if __name__ == '__main__':
        # service.py executed as script
        # do something
        service_func()
        test1.some_func()

## `pyspark`

**PySpark Structure**
 - Parse CLI args & configure Spark App
 - Read in data
 - Raw data into features
 - Fancy Maths with Spark
 - Write out data

Basic **project structure**:

    project/
        setup.py
        project/
            __init__.py
            data_io.py      # Read in data & Write out data
            featurize.py    # Raw data into features
            model.py
        bin/  
        docs/
        tests/
            __init__.py
            project_tests.py
            resources/
                data_source_sample.csv

**RDDs**

    sc.textFile("hdfs://...", 4)
        .map(to_series)
        .filter(has_outlier)
        .count()

**Code**
 - Make as many simple and small functions as possible. Keep it simple.
 - Make it static
 
**Logs**: `yarn logs <app_id>`

Simple **PySpark** example for count. 

    from pyspark import SparkContext, SparkConf

    conf = SparkConf().setAppName("count")
    sc = SparkContext(conf=conf)

    data = [1, 2, 3, 4, 5]
    distData = sc.parallelize(data)
    count = distData.reduce(lambda a, b: a + b)
    print count
 
To run on cluster from terminal: `spark-submit --master yarn --deploy-mode cluster [file].py`
