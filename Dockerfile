FROM praqma/toggler:0.2.2.5

USER root
RUN installGithub.r -d nathan-russell/hashmap \
&& installGithub.r -d schochastics/Rokemon
RUN install2.r bizdays
RUN rm -rf /tmp/downloaded_packages/ /tmp/*.rds \
&& apt-get install curl
