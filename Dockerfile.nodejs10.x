FROM scratch

ADD 2ea70008b1f4f77e57bc2c12435f90338eceba17574f2d10ce0c21a99528f277.tar.xz /
ADD 2f6b5e75a34b8d9d750f508ee28e540e03b967cf65758f4f206602b50c342ee6.tar.xz /
ADD 79f3020377b5d0d1dbb9bdc88302e0f19eb994a116fd3363f28c2c6d93bf137b.tar.xz /
ADD a1bb604d63b6e033d6d4efa0b59812e18dd55712cbc90e2485a6c7a4a4e74aed.tar.xz /
ADD ce0797b5d83af234eb98cb7cb14eb887a60e3150686b2888186491c55924e889.tar.xz /
ADD e231f9547ddd32a2b318879490af094a7d8b8a33ad6901916f6e04f811bc08cf.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
