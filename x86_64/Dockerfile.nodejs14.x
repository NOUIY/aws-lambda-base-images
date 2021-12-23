FROM scratch

ADD b2141f88ef979a5846d648a0a3389408cacf7ea3f1e4a523f4be2b1102507f9d.tar.xz /
ADD b61e12ed92a78b8e171e4b762b681f62fab268f03085d867140b6c227414ee12.tar.xz /
ADD b7d7998be79bb12144d1a4a2d1e329388a821ff2ec5a03ee2bf624c78301984d.tar.xz /
ADD d43176b93cb1a02fb9cee8b425bdb29ac83eb40542da1e286a08efce9886a2e3.tar.xz /
ADD e7bedf2022527a068b4edd655ee83ee10329ba40aa0d36d41e02c2b6f3a62798.tar.xz /
ADD f251ee882cc77275be44365d101b6d0b9df8864e6fe442806473d282b733fa6a.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
