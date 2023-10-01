# First build stage
FROM bitnami/node:12 as builder
ENV NODE_ENV="production"

# Copy app's source code to the /app directory
COPY ./COMA-UI /app

# The application's directory will be the working directory
WORKDIR /app

# Install Node.js dependencies defined in '/app/packages.json'
RUN npm install

# Second build stage
FROM bitnami/node:12-prod
ENV NODE_ENV="production"

# Copy the application code
COPY --from=builder /app /app

# Create a non-root user
RUN useradd -r -d / -u 1001 -g root nonroot
RUN chown -R nonroot /app
USER nonroot

WORKDIR /app
EXPOSE 8080

# Start the application
CMD ["npm", "start"]
