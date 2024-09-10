FROM ruby:3.3.5

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs msmtp-mta
RUN gem install webrick pg

COPY ./msmtprc /etc/msmtprc

CMD ["ruby", "-run", "-e", "httpd", ".", "-p", "3000"]

