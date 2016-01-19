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

Streaming




