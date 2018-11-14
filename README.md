### Usage example:

```Shell
$ cd lab # student lab directory
$ docker run  -v `pwd`:`pwd` -w `pwd` -i -t rusdevops/devenv-cpp
$ scripts/tests.cpp
$ mkdir _coverage && find . -name "*.gcov" -exec mv -t _coverage {} \+
$ vim -c "GcovFind" sources/source.cpp
```
