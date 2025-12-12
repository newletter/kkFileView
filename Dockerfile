FROM ymlisoft/kkfileview-base:4.4.0-v2
ADD server/target/kkFileView-*.tar.gz /opt/
ENV KKFILEVIEW_BIN_FOLDER=/opt/kkFileView-4.4.0-v2/bin
ENTRYPOINT ["java","-Dfile.encoding=UTF-8","-Dspring.config.location=/opt/kkFileView-4.4.0-v2/config/application.properties","-jar","/opt/kkFileView-4.4.0-v2/bin/kkFileView-4.4.0-v2.jar"]
