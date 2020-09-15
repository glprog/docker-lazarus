#glaucosginez/dev1
FROM glaucosginez/lazarus:2.0.8

RUN npm install -g lazpm

COPY ./packages ./packages

RUN lazbuild --add-package lazreport lazreportpdfexport WebLaz ./packages/dcpcrypt/dcpcrypt_laz.lpk \
    ./packages/ATFlatControls/atflatcontrols/atflatcontrols_package.lpk \
    ./packages/OnGuard/packages/tponguard_design.lpk \
    ./packages/powerpdf_0.9.16_20200814/pack_powerpdf.lpk \
    && lazbuild --build-ide= -dKeepInstalledPackages