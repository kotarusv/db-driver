FROM quay.cisco.com/skotaru/eap64-openshift
MAINTAINER Srinivas Kotaru <skotaru@cisco.com>
USER root
RUN  mkdir -p /opt/oracle/product/instantclient-basic-12.1.0.2.0
ADD  ./instantclient_12_1/* /opt/oracle/product/instantclient-basic-12.1.0.2.0/
RUN  ln -s /opt/oracle/product/instantclient-basic-12.1.0.2.0/ /opt/oracle/product/current
RUN chown -R jboss:jboss /opt/eap
RUN chown -R jboss:jboss /opt/oracle
USER jboss
