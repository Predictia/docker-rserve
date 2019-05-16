FROM r-base:3.6.0
MAINTAINER Predictia, predictia@predictia.es

RUN apt-get update && apt-get install -y wget libcurl4-gnutls-dev libxml2-dev libmime-base64-urlsafe-perl libdigest-hmac-perl libdigest-sha-perl libssl-dev
RUN R --version
ADD install.R install.R
RUN Rscript install.R
ADD start.R start.R
ADD Rserv.conf /Rserv.conf
VOLUME '/usr/local/lib/R/site-library/'
VOLUME '/tmp/'
EXPOSE 6311
CMD Rscript start.R