A Docker image to run [Streisand](https://github.com/jlund/streisand).

# Quickstart

```
docker run -it --rm -v $HOME/.ssh:/root/.ssh -v $PWD/generated-docs:/streisand/generated-docs bpinto/streisand
```

* Your `$HOME/.ssh/id_rsa.pub` ssh key will be used.

* Generated documentation can be found at `./generated-docs/streisand.html`.
