#Loading linux sytem wwith an apache server
FROM httpd:2.4
#Copy the web site code 
COPY . /usr/local/apache2/htdocs 
#Allow complete acces to the web content
RUN chmod 777 /usr/local/apache2/htdocs/*
#Name of the site's domain
RUN echo "ServerName docker-tsp.onrender.com" >> /usr/local/apache2/conf/httpd.conf
#Open the http port
expose 80 
