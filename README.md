# Frontend Development Environment for EP61

## Docker run
    docker run \
      --name frontend-dev-env-ep61 \
      -p 8081:8080 \
      -v /your/local/assets:/opt/assets \
      -v /your/local/apps:/opt/tomcat/webapps \
      -v /your/datasources:/opt/tomcat/conf/Catalina/localhost \
      nortthon/frontend-dev-env-ep61

## Description
- **Ubuntu 14.04** application based in oficial ubuntu:14.04
- **Java 1.5.0_22** Java SE Development Kit 5.0u22
- **Tomcat 5.5.26** Apache Tomcat Container
- **Lib ojdbc5.jar** Oracle Database JDBC Driver
- **Lib jai_core.jar**
- **Lib jai_codec.jar**

## Ports
- `8080`: serving applications

## Environment Variables
- `epAssetLocation=/opt/assets`
- `JAVA_OPTS='-Xmx1024m -XX:MaxPermSize=512m'`
- `CATALINA_OPTS='-Xmx1024m -XX:MaxPermSize=512m'`
- `JAVA_HOME=/jdk1.5.0_22`
- `CATALINA_HOME=/opt/tomcat`

## Volumes
- `/opt/assets`
- `/opt/tomcat/webapps`
- `/opt/tomcat/conf/Catalina/localhost`
