FROM sonarqube:7.9-community

ADD download.sh /tmp
RUN cd /opt/sonarqube/extensions/plugins && /tmp/download.sh