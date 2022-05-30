FROM openjdk:17-slim
#Set default APIKEY (Mine) and number of workers
ENV APIKEY=E5C5BE505F666D591CF7522099B6B08691B9D7E36BC5A7C808AB9BB57ED0EFA7
ENV WORKERS=1

#Install wget to download the client
RUN apk add --no-cache curl \
    && curl https://cdn.mcathome.dev/microboinc/clients/latest.jar --output client.jar

# create and change the user to non-root
RUN addgroup -S boincGroup && adduser -S boincRunner -G boincGroup
USER boincRunner

# Run the client
ENTRYPOINT java -jar client.jar --apikey $APIKEY --worker-count $WORKERS
