FROM python:2

WORKDIR /prtg
RUN git clone https://github.com/PRTG/PythonMiniProbe

WORKDIR /prtg/PythonMiniProbe
RUN python setup.py install

#COPY ./probe.conf ./miniprobe/probe.conf
ARG MINIPROBE_NAME
ENV MINIPROBE_NAME=$MINIPROBE_NAME
ARG MINIPROBE_IP
ENV MINIPROBE_IP=$MINIPROBE_IP
ARG MINIPROBE_ACCESS_KEY
ENV MINIPROBE_ACCESS_KEY=$MINIPROBE_ACCESS_KEY

RUN echo "\
`# Please provide the username the script should run under: `\n\
`# Please provide the desired name of your Mini Probe: `$MINIPROBE_NAME\n\
`# Please provide the Probe GID: `\n\
`# Please provide the IP/DNS name of the PRTG Core Server: `$MINIPROBE_IP\n\
`# Please provide the port the PRTG web server is listening to: `\n\
`# Please provide the base interval for your sensors: `\n\
`# Please provide the Probe Access Key as defined on the PRTG Core: `$MINIPROBE_ACCESS_KEY\n\
`# Please provide the path where the probe files are located: `\n\
`# Do you want the mini probe flushing buffered and cached memory: `\n\
`# Do you want to enable debug logging: `\n" | python setup.py configure

CMD service prtgprobe restart && sleep 2 && tail -f ./miniprobe/logs/probe.log
