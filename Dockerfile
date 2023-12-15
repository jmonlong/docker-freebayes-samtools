FROM biocontainers/biocontainers:v1.2.0_cv1

RUN conda install -c bioconda -c conda-forge -c defaults samtools=1.10.0 freebayes=1.2.0 vg=1.53.0

WORKDIR /data/
