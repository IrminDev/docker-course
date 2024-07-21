FROM ubuntu:22.04

WORKDIR /mydir

RUN apt-get update && apt-get install -y curl python3
RUN curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp
RUN chmod a+rx /usr/local/bin/yt-dlp

ENTRYPOINT ["yt-dlp"]

# The command to run when the container starts
CMD ["https://www.youtube.com/watch?v=dcGKVnEbi8E"] 