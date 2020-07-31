# Derived from official mysql image
FROM mysql:8.0
# Add a database
ENV MYSQL_DATABASE demo
# Add the content of the sql-scripts/ directory to your image
# All scripts in docker-entrypoint-initdb.d/ are automatically
# executed during container startup
COPY ./scripts/ /docker-entrypoint-initdb.d/