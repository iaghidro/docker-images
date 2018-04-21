#FROM 203258348872.dkr.ecr.us-west-1.amazonaws.com/base
FROM rfolds/base:latest

# Set user
USER root

COPY ./container-scripts/ /container-scripts/wallet-apps

# Run provisioning script
RUN /container-scripts/wallet-apps/createWalletApps.sh
