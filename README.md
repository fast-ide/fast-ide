### Example of restore to new machine:

```Shell
$ cd devenv-cpp
$ vagrant up
$ vagrant snapshot save default installed_devenv
```

### Example of restore to existed machine

```Shell
$ cd devenv-cpp
$ sudo ./install.sh
$ ./bootstrap.sh
```
