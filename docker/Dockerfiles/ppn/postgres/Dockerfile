FROM alpine
ADD post.config /opt/
RUN apk -U add postgresql postgresql-client postgresql-contrib
USER postgres
EXPOSE 5432
