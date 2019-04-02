FROM ubuntu:18.04

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y  

RUN wget https://ufpr.dl.sourceforge.net/project/lazarus/Lazarus%20Linux%20amd64%20DEB/Lazarus%202.0.0/fpc-laz_3.0.4-1_amd64.deb

RUN wget https://ufpr.dl.sourceforge.net/project/lazarus/Lazarus%20Linux%20amd64%20DEB/Lazarus%202.0.0/fpc-src_3.0.4-2_amd64.deb

RUN wget https://ufpr.dl.sourceforge.net/project/lazarus/Lazarus%20Linux%20amd64%20DEB/Lazarus%202.0.0/lazarus-project_2.0.0-0_amd64.deb

RUN dpkg -i fpc*.deb

RUN dpkg -i lazarus*.deb
