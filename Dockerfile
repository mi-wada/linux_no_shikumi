FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    binutils \
    build-essential \
    golang \
    sysstat \
    python3-matplotlib \
    python3-pil \
    fonts-takao \
    fio \
    qemu-kvm \
    virt-manager \
    libvirt-clients \
    virtinst \
    jq \
    docker.io \
    containerd \
    libvirt-daemon-system \
    strace \
    psmisc

RUN adduser `id -un` libvirt
RUN adduser `id -un` libvirt-qemu
RUN adduser `id -un` kvm

COPY ./linux-in-practice-2nd /linux-in-practice-2nd

WORKDIR /linux-in-practice-2nd
