FROM tomsik68/xampp

# Install necessary packages
RUN apt-get update && apt-get install -y \
  ca-certificates \
  curl \
  sudo \
  php-cli \
  unzip \
  git \
  php-zip \
  php-curl \
  php-intl \
  php-xml \
  php-mbstring \
  php-dom

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /opt/lampp/htdocs

# Create the "sparcdashboard" folder
RUN composer create-project codeigniter4/appstarter sparcdashboard

# Copy your project files
COPY . /opt/lampp/htdocs/sparcdashboard

# Set Apache DocumentRoot
RUN sed -i 's|DocumentRoot "/opt/lampp/htdocs"|DocumentRoot "/opt/lampp/htdocs/sparcdashboard/public"|' /opt/lampp/etc/httpd.conf \
  && sed -i 's|<Directory "/opt/lampp/htdocs">|<Directory "/opt/lampp/htdocs/sparcdashboard/public">|' /opt/lampp/etc/httpd.conf

# Grant permissions
RUN chmod -R 777 /opt/lampp/htdocs/sparcdashboard/writable/cache /opt/lampp/htdocs/sparcdashboard/writable/session

# Install MySQL client
RUN apt-get update && apt-get install -y default-mysql-client

# Copy the database dump
COPY database/ci4login.sql /opt/lampp/htdocs

# Start MySQL, create the database, wait for it to become available, and then import the database
RUN /opt/lampp/lampp startmysql && \
    sleep 10 && \
    echo "CREATE DATABASE IF NOT EXISTS ci4login;" | mysql --protocol=tcp -u root && \
    mysql --protocol=tcp -u root -D ci4login < /opt/lampp/htdocs/ci4login.sql

# Expose port 80
EXPOSE 80

