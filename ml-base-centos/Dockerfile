FROM centos:7

COPY google-cloud-sdk.repo /etc/yum.repos.d

ENV LANG="ja_JP.UTF-8" \
    LANGUAGE="ja_JP:ja" \
    LC_ALL="ja_JP.UTF-8"

RUN set -x \
    && yum upgrade -y \
    && localedef -f UTF-8 -i ja_JP ja_JP.UTF-8 \
    && yum install -y https://centos7.iuscommunity.org/ius-release.rpm \
    && yum install -y \
        gcc \
        git \
        vim \
        python36u \
        python36u-devel \
        python36u-libs \
        wget \
        google-cloud-sdk \
        unzip \
        curl \
    && python3 -m ensurepip \
    && pip3 install \
        pandas \
        jupyter \
        scipy \
        lightgbm \
        xgboost \
        requests \
        google-cloud \
        google-cloud-bigquery \
        google-cloud-storage \
        google-api-python-client \
        scikit-learn \
        PyYAML
