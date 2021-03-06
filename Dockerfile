FROM registry.access.redhat.com/redhat-openjdk-18/openjdk18-openshift

COPY . ./
RUN ./gradlew build && rm -rf ~/.gradle ./.gradle && chmod +x ./build/libs/flr-api-0.0.1.jar

EXPOSE 6565

CMD ./build/libs/flr-api-0.0.1.jar
