FROM dtcooper/raspberrypi-os:bookworm

ENV WORKDIR_PATH=/work
ENV DEBIAN_FRONTEND=nointeractive

WORKDIR $WORKDIR_PATH

SHELL ["/bin/bash", "-c"]
