FROM drbosse/toggler:0.3.0.2

USER root
RUN install2.r extrafont \
&& installGithub.r  nathan-russell/hashmap schochastics/Rokemon \
&& install2.r \
  --deps TRUE \
  bizdays \
  slider \
  lubridate \
&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds \
&& apt-get install curl
