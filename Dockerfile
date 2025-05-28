# Stage: Serve pre-built Zola site
FROM nginx:alpine

# Clean default nginx static folder
RUN rm -rf /usr/share/nginx/html/*

# Copy pre-built Zola site (from CI build step)
COPY public /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]