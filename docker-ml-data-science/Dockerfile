ARG BASE_IMAGE=nvidia/cuda:12.1.0-cudnn8-devel-ubuntu20.04
FROM ${BASE_IMAGE}

ARG PYTHON=python3.9
ARG REQUIREMENTS_FILE=requirements.txt
ENV DEBIAN_FRONTEND=noninteractive

# RUN rm -f /etc/apt/sources.list.d/cuda.list
# RUN rm -f /etc/apt/sources.list.d/nvidia-ml.list
# RUN apt-key del 7fa2af80
# RUN apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/3bf863cc.pub
# RUN apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1804/x86_64/7fa2af80.pub

RUN apt-get update \
    && apt-get install --no-install-recommends -y \
        build-essential \
        software-properties-common \
        zip \
        htop \
        screen \
        libgl1-mesa-glx \
        wget \
        graphviz \
        automake \
        autoconf \
        libopencv* \
        libeigen3-dev \
        libopencv-dev \
        libceres-dev \
        cmake \
        sudo \
        curl \
        unzip \
        nano \
        ca-certificates \
        bzip2 \
        git \
    && add-apt-repository -y ppa:deadsnakes/ppa \
    && apt-get install --no-install-recommends -y \
        ${PYTHON}-dev \
        python3-pip \
        python3-setuptools \
        ${PYTHON}-venv \
        ${PYTHON}-distutils \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*


WORKDIR /environment/.python_envs
COPY ${REQUIREMENTS_FILE} requirements.txt

RUN ${PYTHON} -m venv default
ENV DEFAULT_ENV /environment/.python_envs/default/bin
ENV PATH ${DEFAULT_ENV}:${PATH}

RUN python -m pip install --upgrade pip wheel \
    && python -m pip install -r requirements.txt

# Dell Inp
# RUN python -m pip install numpy --pre torch torchvision --force-reinstall --index-url https://download.pytorch.org/whl/nightly/cu118

CMD ["jupyter-lab",  "--allow-root", "--port=8888", "--ip=0.0.0.0"]
