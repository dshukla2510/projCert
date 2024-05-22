# Use the base image
FROM devopsedu/webapp

# Copy PHP code to the appropriate directory in the container
COPY website/ /var/www/html/

# Set permissions (if needed)
RUN chown -R www-data:www-data /var/www/html/
RUN chmod -R 755 /var/www/html/

# Start Apache in the foreground
CMD ["apache2ctl", "-D", "FOREGROUND"]

# Expose the port
EXPOSE 80
