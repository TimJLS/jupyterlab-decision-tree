FROM timsu27/general-jupyterlab:1.0.4-python3.8

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

USER root

RUN pip install --upgrade xgboost
RUN pip install --upgrade lightgbm
RUN pip install tpot==0.11.7
RUN conda install -y -c conda-forge mlxtend=0.18.0

USER $NB_USER
