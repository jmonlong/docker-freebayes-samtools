FROM biocontainers/biocontainers:v1.2.0_cv1

RUN conda install -c bioconda -c conda-forge -c defaults samtools=1.10.0 freebayes=1.2.0

WORKDIR /opt/bin

RUN wget --no-check-certificate --quiet https://github.com/vgteam/vg/releases/download/v1.53.0/vg && \
    chmod +x vg

ENV PATH $PATH:/opt/bin


WORKDIR /data/
