FROM openjdk:17-slim-buster
#Set default APIKEY (Mine) and number of workers
ENV APIKEY=E5C5BE505F666D591CF7522099B6B08691B9D7E36BC5A7C808AB9BB57ED0EFA7
ENV WORKERS=1

#Install curl, download client, create non-root user, then change client own to them
RUN apt-get update && apt-get install -y curl \
    && curl --create-dir -L https://cdn.mcathome.dev/microboinc/clients/latest.jar --output /home/boincrunner/client.jar \
    && groupadd -r boincrunner && useradd -m -g boincrunner boincrunner \
    && chown -R boincrunner /home/boincrunner/
# move to user home and run entrypoint as them
WORKDIR /home/boincrunner/
USER boincrunner

# Run the client
ENTRYPOINT java -jar client.jar --apikey $APIKEY --worker-count $WORKERS
