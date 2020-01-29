FROM alpine:latest

RUN apk add -U --no-cache mariadb

# Fix permissions to allow for running on openshift
COPY fix-permissions.sh ./
RUN chmod +x ./fix-permissions.sh && \
    ./fix-permissions.sh /var/lib/mysql/   && \
    # ./fix-permissions.sh /var/log/mariadb/ ; \
    ./fix-permissions.sh /var/run/

COPY docker-entrypoint.sh /
RUN chmod +x ./docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]

# Place VOLUME statement below all changes to /var/lib/mysql
VOLUME /var/lib/mysql

# By default will run as random user on openshift and the mysql user (27)
# everywhere else
# USER 27

EXPOSE 3306
CMD ["mysqld_safe"]