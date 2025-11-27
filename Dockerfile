FROM ghcr.io/engineer-man/piston:latest

# Create the /piston directory that the startup script expects
RUN mkdir -p /piston /var/lib/piston

# Set proper permissions
RUN chmod 755 /piston /var/lib/piston