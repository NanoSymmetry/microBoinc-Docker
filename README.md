# microBoinc-Docker
Docker image for the microBoinc client used by the Minecraft@Home community.

Can be found here: https://hub.docker.com/r/dockrails/microboinc

## Useage

`docker run -e 'WORKERS=<Number of threads>' -e 'APIKEY=<api-key>' dockrails/microboinc`

Default variables are 1 thread and my, acebase's, API key.

## Tags
Each tag is a version of the client.
