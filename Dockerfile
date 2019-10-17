FROM rocker/tidyverse:3.6.1

USER root

RUN install2.r --error --deps TRUE hashmap \
&& installGithub.r schochastics/Rokemon \
&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds \
&& apt-get install curl
