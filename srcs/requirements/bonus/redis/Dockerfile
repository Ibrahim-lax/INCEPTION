FROM alpine:3.18

# Install Redis
RUN apk update && apk add redis

# Turn off "protected mode" so it accepts connections from WordPress
# (By default Redis only listens to localhost for security)
RUN sed -i "s|protected-mode yes|protected-mode no|g" /etc/redis.conf

# Start Redis
# --protected-mode no: Double check to ensure it listens
CMD ["redis-server", "--protected-mode", "no"]