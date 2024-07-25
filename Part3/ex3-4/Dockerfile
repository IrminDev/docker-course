FROM docker

COPY ./builder.sh /builder.sh

# Run the builder.sh file
RUN chmod +x /builder.sh

# Run the builder.sh file
ENTRYPOINT ["/builder.sh"]