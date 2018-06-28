FROM nvidia/cuda:9.0-cudnn7-devel-ubuntu16.04

WORKDIR /dockerwork

RUN set -x && apt-get update && apt-get install -y\
    python3\
    python3-pip\
    vim\
    git\
    language-pack-ja\
    python3-tk\
    graphviz\
    wget\
    unzip\
    && pip3 install\
    setuptools==38.2.5\
    chainer==3.2.0\
    cupy\
    pandas==0.21.0\
    http://download.pytorch.org/whl/cu90/torch-0.3.0.post4-cp35-cp35m-linux_x86_64.whl\
    torchvision\
    matplotlib\
    pillow\
    scipy\
    seaborn\
    beautifulsoup4\
    lxml\
    requests\
    google-api-python-client\
    gspread\
    scikit-learn==0.19.1\
    tensorflow==1.8\
    h5py\
    SQLAlchemy\
    && `#apt-get clean && rm -rf /var/lib/apt/lists/*` \
    && ln -s /usr/bin/python3 /usr/bin/python
