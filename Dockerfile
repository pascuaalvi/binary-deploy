FROM registry.access.redhat.com/jboss-eap-6/eap-openshift:6.4

EXPOSE 8080 8888

RUN curl -u "james.r.duncan@nz.pwc.com":"ocpwc2017" -o $JBOSS_HOME/standalone/deployments/ROOT.war -O "https://jenkins-ocp-tasks.b9ad.pro-us-east-1.openshiftapps.com/job/bin-tasks/org.jboss.quickstarts.eap$jboss-tasks-rs/lastSuccessfulBuild/artifact/org.jboss.quickstarts.eap/jboss-tasks-rs/6.4.0-SNAPSHOT/jboss-tasks-rs-6.4.0-SNAPSHOT.war"