FROM python:2-onbuild

# fluentd
ADD td-agent_2.3.3-0_amd64.deb / 

RUN dpkg -i /td-agent_2.3.3-0_amd64.deb && \
    td-agent-gem install specific_install && \
    td-agent-gem specific_install https://github.com/sambaiz/fluent-plugin-influxdb.git

ADD td-agent.conf /etc/td-agent/td-agent.conf
ADD main.py /
CMD /etc/init.d/td-agent start && python /main.py
