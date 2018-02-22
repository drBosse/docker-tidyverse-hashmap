FROM cgrlab/tidyverse

USER root

RUN install2.r --error --deps TRUE hashmap \
&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds
