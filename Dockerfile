# Just serve already-built site
FROM nginx:alpine

# Clean default html dir
RUN rm -rf /usr/share/nginx/html/*

# Copy pre-built site
COPY public /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]