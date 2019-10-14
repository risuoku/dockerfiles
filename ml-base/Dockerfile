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
    chainer\
    cupy\
    pandas\
    matplotlib\
    jupyter\
    pillow\
    scipy\
    lightgbm \
    xgboost \
    seaborn\
    beautifulsoup4\
    lxml\
    requests\
    google-cloud\
    google-cloud-storage\
    google-cloud-bigquery\
    google-api-python-client\
    scikit-learn\
    tensorflow==1.10.0 \
    tensorflow-gpu==1.10.0 \
    h5py
