FROM jupyter/scipy-notebook

MAINTAINER David Naughton <naughton@umn.edu>

RUN mkdir "/home/${NB_USER}/data" && \
    cd "/home/${NB_USER}/data" && \
    wget "https://figshare.com/ndownloader/articles/19260677/versions/3" -O images.zip && \
    unzip images.zip && \
    rm images.zip && \
    chmod -R g+rw "/home/${NB_USER}/data" && \
    cd "/home/${NB_USER}"
