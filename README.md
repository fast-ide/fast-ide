### Usage example:

```Shell
# run developer environment
$ sudo docker run --rm -i -t -w /home/developer rusdevops/devenv-cpp
# clone student lab repository
$ git clone --recursive https://github.com/bmstu-iu8-34-cpp-2018/lab-04-stack-orangejohny 
$ cd $(basename $_ .git)
# run tests with coverage
$ scripts/tests.sh && gcovr -r .
# aggregate coverage file
$ mkdir _coverage && find . -name "*.gcov" -exec mv -t _coverage {} \+
# start collaborative code review
$ vim -c "GcovFind" include/stack.hpp
$ exit
```

[![asciicast](https://asciinema.org/a/211861.svg)](https://asciinema.org/a/211861)
