# GCC Linaro compilation environment Dockerized

Useful for compiling for arm targets.

Developed for its use in [Main_MiSTer](git@github.com:Miguel-T80c/Main_MiSTer.git).

Contains `make`.

Images on [docker hub](https://hub.docker.com/r/theypsilon/gcc-linaro): 
```bash
theypsilon/gcc-linaro:6.5.0 # 667MB
```

When using the image, `/gcc-linaro/bin` will be in your `PATH`.

Expected binaries like `arm-linux-gnueabihf-gcc` are contained in that folder.
