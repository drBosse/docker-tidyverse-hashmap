FROM praqma/toggler:0.2.2.5

USER root
RUN installGithub.r -d nathan-russell/hashmap \
&& installGithub.r -d schochastics/Rokemon \
&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds \
&& apt-get install curl
