# GCC ARM compilation environment Dockerized

Useful for compiling for arm targets.

Developed for its use in [Main_MiSTer](https://github.com/MiSTer-devel/Main_MiSTer).

Contains `make`.

Images on [gcc-arm docker hub](https://hub.docker.com/r/theypsilon/gcc-arm):
```bash
theypsilon/gcc-arm:10.2-2020.11 # 574MB
```

Images on [gcc-linaro docker hub](https://hub.docker.com/r/theypsilon/gcc-linaro):
```bash
theypsilon/gcc-linaro:6.5.0 # 667MB
theypsilon/gcc-linaro:7.5.0 # 697MB
```

When using the image, the toolchain binaries will be in your `PATH`.

Expected binaries like `arm-none-linux-gnueabihf-gcc` are contained in that folder.

### License

Copyright © 2020-2021, [José Manuel Barroso Galindo](https://github.com/theypsilon).
Released under the [MIT License](LICENSE).
