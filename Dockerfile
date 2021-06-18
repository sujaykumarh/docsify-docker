FROM node:lts-alpine

# ##############################################################
# Copyright (c) 2021 Sujaykumar.Hublikar <hello@sujaykumarh.com>
# Licensed under the Apache License, Version 2.0
# ##############################################################

#####
## Docker labels
#####
LABEL maintainer="Sujaykumar.Hublikar <hello@sujaykumarh.com>" \
        name="docsify" \
        copyright="Copyright (c) 2021 Sujaykumar.Hublikar <hello@sujaykumarh.com>." \
        license="Apache License, Version 2.0" \
        description="Docsify run env."

#####
## Default shell profile
#####
COPY custom/profile.sh /etc/profile

#####
## Setup Entrypoint
#####
# Copy Entrypoint
COPY ./docker-entrypoint.sh /usr/bin/custom-docker-entrypoint.sh

# make executable
RUN chmod 755 /usr/bin/custom-docker-entrypoint.sh

#####
## ADD default USER
#####
RUN addgroup -g 1010 app && \
    adduser -D -G app -g app -s /bin/ash app -h /docs

#####
## Default packages
#####
RUN apk add --no-cache \
    figlet

#####
## Install npm packages
#####
RUN npm install --no-optional -g \
    docsify-cli@latest


#####
## Set Working Dir
#####
WORKDIR /docs

#####
## Expose ports
#####
# Default Port of Docsify
EXPOSE 3000/tcp

# Default port of live-server npm
EXPOSE 35729/tcp

#####
## Default Entry Point
#####
ENTRYPOINT [ "/usr/bin/custom-docker-entrypoint.sh" ]

#####
## Set Default Non-Root User
#####
USER app

#####
## Default command
#####
# CMD