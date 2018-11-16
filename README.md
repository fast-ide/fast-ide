### Usage example:

```Shell
# run developer environment
$ _ docker run --rm --cap-add=SYS_PTRACE --security-opt seccomp=unconfined -w /home/developer -it rusdevops/devenv-cpp
# clone student lab repository
$ git clone --recursive https://github.com/bmstu-iu8-34-cpp-2018/lab-04-stack-orangejohny 
$ cd $(basename $_ .git) && ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .
# run tests with coverage
$ scripts/coverage.sh
# start collaborative codereview
$ vim -c "GcovFind" include/stack.hpp
$ exit
```

[![asciicast](https://asciinema.org/a/211861.svg)](https://asciinema.org/a/211861)
