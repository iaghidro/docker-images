FROM iaghidro/machine-learning:latest

RUN apt-get update && apt-get install apt-transport-https -y --allow-downgrades --no-install-recommends \
    build-essential \
    cmake \
    ca-certificates \
    python-qt4 \
    libjpeg-dev \
    zip \
    libpng-dev &&\
    rm -rf /var/lib/apt/lists/*

ENV PYTHON_VERSION=3.6
RUN curl -o ~/miniconda.sh -O  https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh  && \
    chmod +x ~/miniconda.sh && \
    ~/miniconda.sh -b -p /opt/conda && \
    rm ~/miniconda.sh && \
    /opt/conda/bin/conda install conda-build

RUN git clone https://github.com/mattmcclean/fastai.git
RUN cd fastai/ && ls && /opt/conda/bin/conda env create -f environment-cpu.yml
RUN /opt/conda/bin/conda clean -ya

ENV PATH /opt/conda/envs/fastai-cpu/bin:$PATH
ENV USER fastai

WORKDIR /fastai

CMD source activate fastai-cpu
CMD source ~/.bashrc

# Here we install the extra python packages to run the inference code
RUN pip install flask gevent gunicorn && \
    rm -rf /root/.cache

ENV PYTHONUNBUFFERED=TRUE
ENV PYTHONDONTWRITEBYTECODE=TRUE
ENV PATH="/opt/program:${PATH}"

