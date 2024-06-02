FROM frolvlad/alpine-glibc

#install curl
RUN apk add --no-cache curl

# Download the latest production build
RUN curl https://github.com/Lilypad-Tech/lilypad/releases/download/v2.0.0-d63d8b5/lilypad-linux-amd64 -Lo lilypad

# Make Lilypad executable and install it
RUN chmod +x lilypad
RUN mv lilypad /usr/local/bin/lilypad

# ENTRYPOINT ["lilypad"]
