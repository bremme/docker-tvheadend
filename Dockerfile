
# config files
# /root/.hts/tvheadend/
# /home/<user_name>/.hts/tvheadend

FROM debian:jessie

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
	apt-get install -y curl && \
	curl http://apt.tvheadend.org/repo.gpg.key | apt-key add - && \
	echo "deb http://apt.tvheadend.org/stable trusty main" >> /etc/apt/sources.list && \
	apt-get update && \
	apt-get install -y tvheadend

RUN usermod -aG video hts

VOLUME /home/hts

CMD ["/usr/bin/tvheadend","--noacl"]