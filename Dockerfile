FROM eclipse-temurin:17-jre-alpine

WORKDIR /app

COPY target/ds-find-product.jar app.jar

EXPOSE 9099

ENTRYPOINT [ "java", "-jar", "app.jar" ]