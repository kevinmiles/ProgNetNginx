FROM microsoft/aspnetcore:2.0

# Install nginx
RUN apt-get update
RUN apt-get install -y nginx

# remove files that we don't want post-install
RUN rm /etc/nginx/nginx.conf

# create a directory for the app source code 
RUN mkdir -p /usr/greetings
WORKDIR /usr/greetings


# copy the source code
COPY out .
COPY nginx.conf /etc/nginx/nginx.conf
COPY startup.sh .

#Permissions
RUN chmod 755 /usr/greetings/startup.sh

# Expose the port
EXPOSE 5000

#run the site
CMD ["sh", "/usr/greetings/startup.sh"]
