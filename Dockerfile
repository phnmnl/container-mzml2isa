FROM ubuntu:16.04
MAINTAINER PhenoMeNal-H2020 Project ( phenomenal-h2020-users@googlegroups.com )


RUN apt-get -y update && apt-get -y install --no-install-recommends python-pip wget && \
    pip install --upgrade pip && pip install -U setuptools && pip install six && \
    pip install mzml2isa==0.4.25 && \
    pip uninstall -y pip && \
    wget https://raw.githubusercontent.com/ISA-tools/mzml2isa-galaxy/master/galaxy/mzml2isa/wrapper.py -o /usr/local/bin/wrapper.py && \
    wget https://raw.githubusercontent.com/ISA-tools/mzml2isa-galaxy/master/galaxy/mzml2isa/pub_role.loc -o /usr/local/bin/pub_role.loc && \
    wget https://raw.githubusercontent.com/ISA-tools/mzml2isa-galaxy/master/galaxy/mzml2isa/pub_role.loc -o /usr/local/bin/pub_status.loc && \
    chmod a+x /usr/local/bin/wrapper.py && \
    apt-get purge -y python-pip wget && \
    apt-get install python && \
    apt-get autoremove -y && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


ENTRYPOINT ["mzml2isa"]
