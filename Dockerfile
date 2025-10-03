# Use official n8n image
FROM n8nio/n8n:latest

# Expose default n8n port
EXPOSE 5678

# Set environment variables (you can also override these in Railway dashboard)
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=StrongPassword123
ENV N8N_PORT=5678
ENV N8N_HOST=0.0.0.0

# Start n8n
CMD ["n8n"]
