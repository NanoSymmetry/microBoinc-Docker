FROM openjdk:19-jdk-alpine
#Set default APIKEY (Mine) and number of workers
ENV APIKEY="E5C5BE505F666D591CF7522099B6B08691B9D7E36BC5A7C808AB9BB57ED0EFA7" WORKERS="1"

#Install wget to download the client
RUN apk add --no-cache wget
RUN wget https://cdn.mcathome.dev/microboinc/clients/microboinc-aphrodite-client-v0.0.2-RELEASE.jar

CMD java -jar microboinc-aphrodite-client-v0.0.2-RELEASE.jar --apikey E5C5BE505F666D591CF7522099B6B08691B9D7E36BC5A7C808AB9BB57ED0EFA7 --worker-count 8
