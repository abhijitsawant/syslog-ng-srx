FROM balabit/syslog-ng:latest

# Create directory for logs
RUN mkdir -p /var/log/flowdb/collector-b
VOLUME ["/var/log/flowdb/collector-b"]

# Copy syslog-ng config
COPY syslog-ng.conf /etc/syslog-ng/syslog-ng.conf

EXPOSE 514/udp
