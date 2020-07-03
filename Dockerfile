FROM drbosse/toggler:0.3.0.1

USER root
RUN install2.r extrafont \
&& installGithub.r  nathan-russell/hashmap schochastics/Rokemon \
&& install2.r bizdays slider lubridate \
&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds \
&& apt-get install curl
