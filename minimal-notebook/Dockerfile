# Published as rgamez/jupyter-minimal-notebook-maxima

FROM jupyter/minimal-notebook

USER root

RUN apt-get install -yq --no-install-recommends \
    libzmq3-dbg \
    libzmq3-dev \
    libzmq3 \
    gnuplot
RUN mkdir /srv/maxima
WORKDIR /srv/maxima
COPY build/maxima /srv/maxima/maxima

USER jovyan
RUN git clone https://github.com/robert-dodier/maxima-jupyter /tmp/maxima-jupyter
RUN python /tmp/maxima-jupyter/install-maxima-jupyter.py --maxima-jupyter-exec=/srv/maxima/maxima
RUN rm -rf /tmp/maxima-jupyter

WORKDIR /home/$NB_USER/work
