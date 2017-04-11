

#GIT_SERVICE_HOST in .travis.yml

# TODO publish to docker-hub
export DOCKER_REGISTRY=""


#export MAVEN_OPTS="${MAVEN_OPTS} -Dgithub-nexus.mirror=no mirror"
export MAVEN_OPTS="${MAVEN_OPTS} -Dgithub-nexus.repositories=https://oss.sonatype.org/content/repositories"
#export MAVEN_OPTS="${MAVEN_OPTS} -Dgithub-sonar.host.url=https://sonarqube.com"
export MAVEN_OPTS="${MAVEN_OPTS} -Dcheckstyle.config.location=${BUILD_SCRIPT_LOC}/src/main/checkstyle/google_checks_6.19.xml"
export MAVEN_OPTS="${MAVEN_OPTS} -Dpmd.ruleset.location=${BUILD_SCRIPT_LOC}/src/main/pmd/pmd-ruleset-5.3.5.xml"

export MAVEN_OPTS="${MAVEN_OPTS} -Dinfrastructure=${INFRASTRUCTURE}"
export MAVEN_OPTS="${MAVEN_OPTS} -Ddocker.registry=${DOCKER_REGISTRY}"
export MAVEN_OPTS="${MAVEN_OPTS} -Dsite=${BUILD_SITE}"
export MAVEN_OPTS="${MAVEN_OPTS} -Duser.language=zh -Duser.region=CN -Dfile.encoding=UTF-8 -Duser.timezone=Asia/Shanghai"
export MAVEN_OPTS="${MAVEN_OPTS} -Dmaven.test.failure.ignore=${BUILD_TEST_FAILURE_IGNORE}"
export MAVEN_OPTS="${MAVEN_OPTS} -Dfrontend.nodeDownloadRoot=https://nodejs.org/dist/"
export MAVEN_OPTS="${MAVEN_OPTS} -Dfrontend.npmDownloadRoot=https://registry.npmjs.org/npm/-/"

echo "MAVEN_OPTS: ${MAVEN_OPTS}"
