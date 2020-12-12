# create forntend image using httpd as base image
FROM httpd

# copy all folders from ./dist/website
# before doing this, build angular app
# by using : ng build --prod
COPY ./dist/website/ /usr/local/apache2/htdocs/

# expose port 80 of httpd
EXPOSE 80

# run command when container starts
CMD apachectl -D FOREGROUND