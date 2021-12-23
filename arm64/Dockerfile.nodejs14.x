FROM scratch

ADD 7329116d1ee75d9ca4c4d3f5de39b480eddf2d3918d1f40ac9d05a912bda0bbc.tar.xz /
ADD 79483998f70ac9362c189a8a7dc7b496f4118e869b701a43bc723199fa7b3d78.tar.xz /
ADD b850cd5ab66c324ae1a5991cbefbe27c2de62dace570e7fd800daa68733a2d1a.tar.xz /
ADD c7ac5310e1bcf15ae56b91362f39c37c2c1c573d8a2867fe81c30171b07bdb74.tar.xz /
ADD ccd090043852a9bf365cdf036d8331b4d2dab12bfe043cace7ec52927e9b3e30.tar.xz /
ADD ec18233eb5b4608da15c5e995cca2d8a73813a347c6a8813ecde646c997c01bf.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
