# Python 2

A Python Flask application packaged in Habitat

## Build

```shell
$ cd ~/repo
$ hab studio enter
[STUDIO] build .
```

## Export / Run in Docker

Make sure you've got a `.hart` in `./results`

```shell
$ cd ~/repo
$ hab studio enter
[STUDIO] hab pkg export docker ./results/YOUR_BUILT_PACKAGE.hart
[STUDIO] exit
$ docker run YOUR_ORIGIN/YOUR_PACKAGE_NAME
```
