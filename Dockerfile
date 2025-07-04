
FROM openjdk:11
ARG PROJECT_VERSION
RUN mkdir -p /home/app
WORKDIR /home/app
ENV SPRING_PROFILES_ACTIVE dev
COPY . .
ADD target/product-service-v${PROJECT_VERSION}.jar product-service.jar
EXPOSE 8500
ENTRYPOINT ["java", "-Dspring.profiles.active=${SPRING_PROFILES_ACTIVE}", "-jar", "product-service.jar"]


