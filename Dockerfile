FROM praqma/toggler:0.2.2.5

USER root
RUN install2.r extrafont \
&& installGithub.r  nathan-russell/hashmap schochastics/Rokemon \
&& install2.r bizdays \
&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds \
&& apt-get install curl
