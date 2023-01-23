FROM alpine:3.15

# Install required packages
RUN apk add --update --no-cache bash dos2unix

WORKDIR /usr/scheduler

# Copy files
COPY crontab.* ./
COPY start.sh .
COPY jobs/*.* ./jobs/


# Fix line endings && execute permissions
RUN dos2unix crontab.* \
    && \
    find . -type f -iname "*.sh" -exec chmod +x {} \;

# Run cron on container startup
CMD ["./start.sh"]
