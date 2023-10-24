FROM registry.redhat.io/codeready-workspaces/plugin-java11-rhel8:latest
USER jboss
COPY start.sh /home/jboss
EXPOSE 9990
CMD /home/jboss/start.sh

