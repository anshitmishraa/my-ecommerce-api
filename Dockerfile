# Use an official PHP runtime as a parent image
FROM php:8.0-fpm

# Set working directory
WORKDIR /var/www

# Install system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    libonig-dev \
    libzip-dev \
    zip \
    unzip \
    git \
    curl \
    npm

# Install PHP extensions
RUN docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd zip

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Copy existing application directory contents
COPY . /var/www

# Set appropriate permissions for Laravel
RUN chown -R www-data:www-data /var/www \
    && chmod -R 755 /var/www

# Install Composer dependencies
RUN composer install --optimize-autoloader --no-dev

# Install npm dependencies and compile assets
RUN npm install && npm run prod

# Expose port 9000 and start PHP-FPM server
EXPOSE 9000
CMD ["php-fpm"]
