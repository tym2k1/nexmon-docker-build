# Build

Since we are on x86 but we want our docker container to run in arm64,
we need emulation via QEMU.
Therefore, first run once:
```sh
docker run --rm --privileged multiarch/qemu-user-static --reset -p yes
```

Now, preferrably use `buildx` as we are cross-compiling to create the image:
```sh
docker buildx build --platform=linux/arm64 -t nexmon_dev --load .
```

Start the container:
```sh
docker run --platform=linux/arm64 --name=raspberry_os -d nexmon_dev tail -f /dev/null
```

Finally, lets get a shell inside the container:
```sh
docker exec -it raspberry_os /bin/sh
```
