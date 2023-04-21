FROM atlassian/jira-software:8.14
COPY atlassian-agent.jar /opt/atlassian/jira/
COPY mysql-connector-j-8.0.33.jar /opt/atlassian/jira/lib/
RUN echo 'export CATALINA_OPTS="-javaagent:/opt/atlassian/jira/atlassian-agent.jar ${CATALINA_OPTS}"' >> /opt/atlassian/jira/bin/setenv.sh