FROM openjdk:17-slim-buster
#Set default APIKEY (Mine) and number of workers
ENV APIKEY=E5C5BE505F666D591CF7522099B6B08691B9D7E36BC5A7C808AB9BB57ED0EFA7
ENV WORKERS=1

#Install wget to download the client
RUN apt-get update && apt-get install -y curl \
    && curl -L --create-dirs https://cdn.mcathome.dev/microboinc/clients/latest.jar --output client.jar

# Run the client
ENTRYPOINT java -jar client.jar --apikey $APIKEY --worker-count $WORKERS
