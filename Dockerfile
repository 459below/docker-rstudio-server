FROM debian:jessie

ADD https://download2.rstudio.org/rstudio-server-1.1.383-amd64.deb /root/rstudio-server-amd64.deb

RUN apt update\
  && apt install -y \
  gdebi-core \
  r-base \
  r-cran-boot \
  r-cran-car \
  r-cran-class \
  r-cran-cluster \
  r-cran-codetools \
  r-cran-colorspace \
  r-cran-dichromat \
  r-cran-digest \
  r-cran-foreach \
  r-cran-foreign \
  r-cran-ggplot2 \
  r-cran-gtable \
  r-cran-iterators \
  r-cran-kernsmooth \
  r-cran-labeling \
  r-cran-lattice \
  r-cran-lme4 \
  r-cran-lmtest \
  r-cran-mass \
  r-cran-matrix \
  r-cran-mgcv \
  r-cran-minqa \
  r-cran-multcomp \
  r-cran-munsell \
  r-cran-mvtnorm \
  r-cran-nlme \
  r-cran-nloptr \
  r-cran-nnet \
  r-cran-pkgkitten \
  r-cran-plyr \
  r-cran-rcolorbrewer \
  r-cran-rcpp \
  r-cran-rcppeigen \
  r-cran-reshape2 \
  r-cran-rpart \
  r-cran-sandwich \
  r-cran-scales \
  r-cran-sparsem \
  r-cran-spatial \
  r-cran-stringr \
  r-cran-survival \
  r-cran-th.data \
  r-cran-vcd \
  r-cran-zoo \
  && rm -rf /var/lib/apt/lists/*
RUN gdebi -n /root/rstudio-server-amd64.deb

EXPOSE 8787
CMD ["/usr/lib/rstudio-server/bin/rserver", "--server-daemonize=0"]
