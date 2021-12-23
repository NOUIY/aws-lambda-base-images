FROM scratch
ADD x86_64/2958baa5360d904278876d3bfd49ef0321dd426d3cb8c526fa008be54f8f6b64.tar.xz /
ADD x86_64/82b068cea042a60abb7851cfa39483c9eb196d8cc862fbaf3a045c54424375d6.tar.xz /
ADD x86_64/ac8623652de10b2784f413afcb9f024e0292ec8dafe2d952aefa432e34b21359.tar.xz /
ADD x86_64/b61e12ed92a78b8e171e4b762b681f62fab268f03085d867140b6c227414ee12.tar.xz /
ADD x86_64/d1e9077934992b2519ad9c4227c7034055e61ab723cce7a631551806a3467194.tar.xz /
ADD x86_64/ebf12ba03d8c8988540a4fbc19bf122c37704029075d86f98f08ed655a350dd1.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
