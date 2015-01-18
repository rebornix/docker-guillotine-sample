FROM ubuntu:14.04
MAINTAINER Docker rebornix <lvp@rebornix.com>
RUN apt-get -qq update
RUN apt-get -qqy install ruby ruby-dev
RUN gem install sinatra
RUN gem install guillotine
RUN gem install redis 

VOLUME /opt/urlshorten
WORKDIR /opt/urlshorten
EXPOSE 80
CMD ["rackup", "./config.ru", "-p", "80"]
