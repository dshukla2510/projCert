FROM devopsedu/webapp

# Copy your PHP application to the web server's root directory
COPY . /var/www/html/

# Ensure permissions are correct
RUN chown -R www-data:www-data /var/www/html

# Expose port 80 to the outside world
EXPOSE 80

# Start the Apache server in the foreground
CMD ["apache2-foreground"]
