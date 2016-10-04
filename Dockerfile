FROM ubuntu:16.04
MAINTAINER PhenoMeNal-H2020 Project ( phenomenal-h2020-users@googlegroups.com )

RUN apt-get -y update && apt-get -y install --no-install-recommends python-pip && \
    pip install --upgrade pip && pip install -U setuptools && pip install six && \
    pip install mzml2isa==0.4.28 && \
    pip uninstall -y pip && \
    apt-get purge -y python-pip && \
    apt-get install --no-install-recommends python && \
    apt-get autoremove -y && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV WRAPPER_REVISION aebde21cd2c21a09f138abb48bea19325b91d304

RUN apt-get -y update && apt-get -y install --no-install-recommends curl zip && \
    curl https://raw.githubusercontent.com/ISA-tools/mzml2isa-galaxy/$WRAPPER_REVISION/galaxy/mzml2isa/wrapper.py -o /usr/local/bin/wrapper.py && \
    curl https://raw.githubusercontent.com/ISA-tools/mzml2isa-galaxy/$WRAPPER_REVISION/galaxy/mzml2isa/pub_role.loc -o /usr/local/bin/pub_role.loc && \
    curl https://raw.githubusercontent.com/ISA-tools/mzml2isa-galaxy/$WRAPPER_REVISION/galaxy/mzml2isa/pub_role.loc -o /usr/local/bin/pub_status.loc && \
    chmod a+x /usr/local/bin/wrapper.py && \
    apt-get purge -y curl && \
    apt-get autoremove -y && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENTRYPOINT ["mzml2isa"]
