FROM nortthon/tomcat5:latest
MAINTAINER  Lucas Augusto <nortthon@gmail.com>

ADD lib/ojdbc5.jar /opt/tomcat/common/lib/
ADD lib/jai_codec.jar /jdk1.5.0_22/jre/lib/ext/
ADD lib/jai_core.jar /jdk1.5.0_22/jre/lib/ext/

ADD conf/web.xml /opt/tomcat/conf/
ADD conf/server.xml /opt/tomcat/conf/
ADD conf/context.xml /opt/tomcat/conf/

RUN mkdir /opt/assets

VOLUME ["/opt/assets"]

ENV epAssetLocation /opt/assets

ENV CLASSPATH $CLASSPATH:/opt/tomcat/common/lib/ojdbc5.jar

CMD /opt/tomcat/start.sh
