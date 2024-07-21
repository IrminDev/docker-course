# Start from the Ubuntu image
FROM ubuntu:22.04

# Use /usr/src/app as our workdir. The following instructions will be executed in this location.
WORKDIR /usr/src/app

# Copy the script.sh file from this location to /usr/src/app/ creating /usr/src/app/script.sh.
COPY script.sh .

RUN chmod +x script.sh

# Update the package list and install curl
RUN apt-get update && apt-get install -y curl

# When running Docker, the command will be ./script.sh
ENTRYPOINT ["./script.sh"]

CMD ["helsinki.fi"]
