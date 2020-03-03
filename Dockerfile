FROM postgres:11.3

RUN apt-get update && apt-get install -y git build-essential postgresql-server-dev-11
RUN git clone https://github.com/michelp/pgjwt.git
RUN cd pgjwt && make install
# Official postgres images run anything in '/docker-entrypoint-initdb.d' 
COPY ./init.sql /docker-entrypoint-initdb.d
