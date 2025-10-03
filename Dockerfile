# Use official n8n image
FROM n8nio/n8n:latest

# Expose default n8n port
EXPOSE 5678

# Database settings


# Force IPv4 resolution
ENV NODE_OPTIONS=--dns-result-order=ipv4first


# Set environment variables
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=StrongPassword123
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Start n8n
ENTRYPOINT ["n8n"]
