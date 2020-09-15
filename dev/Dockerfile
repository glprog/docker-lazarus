#glaucosginez/dev1
FROM glaucosginez/lazarus:2.0.8

ENV DBEAVER_VERSION 7.1.5

RUN apt-get update && apt-get -y install openjdk-8-jdk libswt-gtk-4-jni libswt-gtk-4-java

RUN wget https://github.com/dbeaver/dbeaver/releases/download/${DBEAVER_VERSION}/dbeaver-ce_${DBEAVER_VERSION}_amd64.deb

RUN dpkg -i dbeaver-ce_${DBEAVER_VERSION}_amd64.deb

RUN rm *.deb

RUN npm install -g lazpm

RUN apt-get clean && apt-get autoremove -y

RUN export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 && export PATH=$PATH:$JAVA_HOME/bin

COPY ./packages ./packages

RUN lazbuild --add-package lazreport lazreportpdfexport WebLaz ./packages/dcpcrypt/dcpcrypt_laz.lpk \
    ./packages/ATFlatControls/atflatcontrols/atflatcontrols_package.lpk \
    ./packages/OnGuard/packages/tponguard_design.lpk \
    ./packages/powerpdf_0.9.16_20200814/pack_powerpdf.lpk \
    && lazbuild --build-ide= -dKeepInstalledPackages