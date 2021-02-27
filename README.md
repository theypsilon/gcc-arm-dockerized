# GCC Linaro compilation environment Dockerized

Useful for compiling for arm targets.

Developed for its use in [Main_MiSTer](https://github.com/Miguel-T80c/Main_MiSTer).

Contains `make`.

Images on [docker hub](https://hub.docker.com/r/theypsilon/gcc-linaro): 
```bash
theypsilon/gcc-linaro:6.5.0 # 667MB
theypsilon/gcc-linaro:7.5.0 # 697MB
```

When using the image, `/gcc-linaro/bin` will be in your `PATH`.

Expected binaries like `arm-linux-gnueabihf-gcc` are contained in that folder.

### License

Copyright © 2020, [José Manuel Barroso Galindo](https://github.com/theypsilon).
Released under the [MIT License](LICENSE).
