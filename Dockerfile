FROM centos:7

RUN yum install -y epel-release && \
	yum install -y \
	monit \
	net-snmp \
	net-snmp-utils

EXPOSE 2812

CMD ["monit", "-I", "-B"]
