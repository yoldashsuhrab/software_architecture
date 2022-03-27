FROM devopsdockeruh/overwrite_cmd_exercise

WORKDIR /mydir 
RUN apt-get update && apt-get install -y wget

RUN touch hello.txt 
COPY local.txt . 
RUN wget http://example.com/index.html 

CMD ["docker-clock"]