FROM sonarqube:8-community-beta

ENV RIPSQUBE_VERSION="2.4.0" \
    WEBDRIVER_VERSION="1.0.5" \
    PLUGIN_HOME="/opt/sonarqube/extensions/plugins/"

RUN curl -O -L https://github.com/kwoding/sonar-webdriver-plugin/releases/download/sonar-webdriver-plugin-${WEBDRIVER_VERSION}/sonar-webdriver-plugin-${WEBDRIVER_VERSION}.jar && \
    curl -O -L https://files.ripstech.com/sonarqube/RIPSQube-${RIPSQUBE_VERSION}.jar

RUN mv sonar-webdriver-plugin-${WEBDRIVER_VERSION}.jar ${PLUGIN_HOME} && \
    mv RIPSQube-${RIPSQUBE_VERSION}.jar ${PLUGIN_HOME}
 


