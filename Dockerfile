FROM openjdk:8-alpine
RUN apk --update add wget tar bash
RUN wget https://mirrors.ocf.berkeley.edu/apache/spark/spark-3.1.1/spark-3.1.1-bin-hadoop2.7.tgz
RUN tar -xvzf spark-3.1.1-bin-hadoop2.7.tgz && \
    mv spark-3.1.1-bin-hadoop2.7 /spark && \
    rm spark-3.1.1-bin-hadoop2.7.tgz

COPY start-master.sh /start-master.sh
COPY start-worker.sh /start-worker.sh
RUN chmod +x /*.sh



