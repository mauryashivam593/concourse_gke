#!/bin/bash
#apt-get -y update
apt-get -y install libssl-dev
apt-get -y install libpq-dev
apt-get -y install libcurl4-openssl-dev
apt-get -y install libmysqlclient-dev
apt-get -y install r-cran-domc
#Rscript -e "install.packages('devtools')"
#Rscript -e 'devtools::install_github("r-dbi/RMariaDB",force=T)'

add-apt-repository ppa:jonathonf/gcc
apt-get install gcc-7
gcc --version
gcc-7 --version

update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-7 50
echo "displaying gcc version"
gcc --version

echo "###### Install agl.score package #####"
git init
git config --global  http.sslVerify false
git clone --single-branch --branch gcp https://agl-triage-alteryx-promote-deploy-token:yU9W_oSskjQzLM7Lxxbp@gitlab.gcp.cna.com/datascienceteam/claim/dev/agl.score.git

echo "#### Install agl.score package ###"
Rscript -e 'install.packages("data.table")'
echo "data.table done"
Rscript -e 'install.packages("stringr")'
echo "stringr done"
Rscript -e 'install.packages("RPostgreSQL")' 
echo "RPostgreSQL done"
Rscript -e 'install.packages("DBI")'  
echo "DBI done"
Rscript -e 'install.packages("Rcpp")'
echo "Rcpp done"
Rscript -e 'install.packages("magrittr")' 
echo "magrittr done"
R CMD INSTALL agl.score
echo "agl.score done "
#Rscript -e 'install.packages("./agl.score",repos=NULL)'
