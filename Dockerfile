FROM ubuntu:16.04
MAINTAINER PhenoMeNal-H2020 Project ( phenomenal-h2020-users@googlegroups.com )


RUN apt-get -y update && apt-get -y install --no-install-recommends python-pip && \
    pip install --upgrade pip && pip install -U setuptools && pip install six && \
    pip install mzml2isa==0.4.25 && \
    pip uninstall -y pip && \
    apt-get purge -y python-pip && \
    apt-get install python && \
    apt-get autoremove -y && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENTRYPOINT ["mzml2isa"]
