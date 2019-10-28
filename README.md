[![Build Status](https://travis-ci.org/rusdevops/fast-ide.svg?branch=master)](https://travis-ci.org/rusdevops/fast-ide)

### Run

```Shell
docker pull fastide/ubuntu:19.04
docker run -it fastide/ubuntu:19.04 zsh -c "nvim +PlugInstall +qa && zsh"

```

### Deploy

```Shell
docker pull fastide/ubuntu:19.04
docker create -ti --name fastide fastide/ubuntu:19.04 bash
docker cp fastide:/home/developer $HOME/
docker rm -f fastide
```
