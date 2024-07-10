# Use a base image that supports HHVM
FROM hhvm/hhvm:latest

# Install Composer
RUN apt-get update && \
    apt-get install -y curl git unzip && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Add Composer's global bin directory to the PATH
ENV PATH /root/.composer/vendor/bin:$PATH

# Set the working directory
WORKDIR /workspace
