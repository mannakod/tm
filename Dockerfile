FROM ubuntu:latest

# Update package index
RUN apt-get update

# Install Apache2
RUN apt-get install -y apache2
RUN apt install curl -y
# Set the ServerName in the main Apache2 configuration file
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

# Expose port 80
EXPOSE 80

# Start Apache2 in the foreground
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
RUN curl http://localhost:80
