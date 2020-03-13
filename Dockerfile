FROM praqma/toggler:0.2.2.5

USER root

RUN install2.r --error --deps TRUE hashmap \
&& installGithub.r schochastics/Rokemon \
&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds \
&& apt-get install curl
