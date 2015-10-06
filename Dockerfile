# Composer Docker Container
# Base Dockerfile: composer/base
FROM php:5.6-cli
MAINTAINER Hrishikesh Kale <kalehrishi@gmail.com>

# Packages
RUN apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y \
    curl \
    git \
  && rm -r /var/lib/apt/lists/*

# Memory Limit
RUN echo "memory_limit=1024M" > $PHP_INI_DIR/conf.d/memory-limit.ini

# Time Zone
RUN echo "date.timezone=${PHP_TIMEZONE:-UTC}" > $PHP_INI_DIR/conf.d/date_timezone.ini


# Display PHP version
RUN php --version


RUN curl -L https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar -o /usr/local/bin/phpcs

RUN curl -L https://squizlabs.github.io/PHP_CodeSniffer/phpcbf.phar -o /usr/local/bin/phpcbf


RUN chmod u+x /usr/local/bin/phpcs

RUN chmod u+x /usr/local/bin/phpcbf



