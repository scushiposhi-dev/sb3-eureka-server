FROM eclipse-temurin:17.0.5_8-jre-focal AS builder
WORKDIR extracted
ADD ./target/sb3-eureka-server-0.0.1-SNAPSHOT.jar app.jar
RUN java -Djarmode=layertools -jar app.jar extract

FROM eclipse-temurin:17.0.5_8-jre-focal
WORKDIR application
COPY --from=builder extracted/dependencies/ ./
COPY --from=builder extracted/spring-boot-loader/ ./
COPY --from=builder extracted/snapshot-dependencies/ ./
COPY --from=builder extracted/application/ ./

EXPOSE 8761

ENTRYPOINT ["java","org.springframework.boot.loader.launch.JarLauncher"]