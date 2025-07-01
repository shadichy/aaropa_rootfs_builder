FROM ghcr.io/shadichy/aaropa_rootfs_base:latest

COPY template /
COPY packages /

RUN apt update && apt upgrade -y

# Install additional apt utils 
RUN apt install -y apt-transport-https ca-certificates

# Re-run apt update after install apt utils
RUN apt update

# Install package list
RUN grep -Ev '^#' /pkglist.cfg | xargs apt install -y --no-install-recommends --no-install-suggests

# Clean up cache & files
RUN apt clean && rm -rf /var/lib/apt/lists/*
RUN rm /*.cfg