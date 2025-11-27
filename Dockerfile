FROM ghcr.io/engineer-man/piston:latest

# Create necessary directories
RUN mkdir -p /piston /var/lib/piston /tmp/isolate

# Set proper permissions
RUN chmod 755 /piston /var/lib/piston /tmp/isolate

# Set working directory
WORKDIR /piston

# Expose port
EXPOSE 2000

# Use a startup script to handle tmpfs mounts
CMD ["sh", "-c", "mkdir -p /tmp/isolate && /init"]



# FROM ghcr.io/engineer-man/piston:latest

# # Create the /piston directory that the startup script expects
# RUN mkdir -p /piston /var/lib/piston

# # Set proper permissions
# RUN chmod 755 /piston /var/lib/piston