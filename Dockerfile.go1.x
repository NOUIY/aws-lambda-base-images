FROM scratch

ADD 35756284fe5ab1423171e09d41efa66bb8d318367eebfcf8c708be4660e4dab0.tar.xz /
ADD 4182dca4458cd11fe1c2967e567539dae9379ac716213a28ca0cf315d97fb359.tar.xz /
ADD 5eb90ac1cd09c6ed313ce7ce9184076fb0aa1dbef617e1ff794e9a8dc4af488e.tar.xz /
ADD afaba965eea59262ce4f0060b7cd994c4f8119bca20d418edca297e723094ca1.tar.xz /
ADD cba392d72d5f277264794bfc9d2ae7d9aedcbe2d2c781952e02cbc0bb9cd8bb9.tar.xz /
ADD cffc8117e52f7ca883b18b5bc6764323be7fbb9c663604fed5f2e719c8789671.tar.xz /
ADD d591d3f86b7b64a07c1c213367c424bbf49ad0bb39c8fea354b9d803c8c92c82.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
