FROM centos:7

RUN yum install -y epel-release && \
	yum install -y \
	monit \
	net-snmp \
	net-snmp-utils \
	&& yum clean all

EXPOSE 2812

VOLUME ["/root/"]

CMD ["monit", "-I", "-B"]
