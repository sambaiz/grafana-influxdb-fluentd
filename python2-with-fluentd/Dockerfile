FROM python:2-onbuild

# fluentd
ADD install-debian-jessie-td-agent2.sh /
RUN sh /install-debian-jessie-td-agent2.sh && \
    td-agent-gem install fluent-plugin-influxdb

ADD td-agent.conf /etc/td-agent/td-agent.conf
ADD main.py /
CMD /etc/init.d/td-agent start && python /main.py
