FROM nvidia/cuda:9.0-cudnn7-devel-ubuntu16.04

ENV CLOUD_SDK_REPO cloud-sdk-xenial
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
    && apt-get install -y curl apt-transport-https \
    && echo "deb https://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list \
    && curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add - \
    && apt-get update && apt-get install -y google-cloud-sdk \
    && pip3 install\
    setuptools==38.2.5\
    chainer==3.2.0\
    cupy\
    pandas==0.21.0\
    http://download.pytorch.org/whl/cu90/torch-0.3.0.post4-cp35-cp35m-linux_x86_64.whl\
    torchvision\
    matplotlib\
    jupyter\
    pillow\
    scipy\
    seaborn\
    beautifulsoup4\
    lxml\
    requests\
    google-cloud\
    google-api-python-client\
    gspread\
    scikit-learn==0.19.1\
    tensorflow==1.8\
    h5py\
    SQLAlchemy\
    && `#apt-get clean && rm -rf /var/lib/apt/lists/*`
