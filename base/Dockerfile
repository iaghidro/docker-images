FROM ubuntu:16.04

# Set user
USER root

ENV DEBIAN_FRONTEND noninteractive

# Copy scripts
COPY ./container-scripts/ /container-scripts/base

# Run provisioning script
RUN /container-scripts/base/createBase.sh
