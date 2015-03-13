FROM debian:jessie

RUN echo "Acquire::http { Proxy \"http://10.0.2.15:8000\";  };" > /etc/apt/apt.conf.d/02proxy

RUN echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee /etc/apt/sources.list.d/webupd8team-java.list
RUN echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee -a /etc/apt/sources.list.d/webupd8team-java.list
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886
RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
RUN apt-get update -y && apt-get install -y oracle-java8-installer
RUN apt-get install -y python-pip ruby maven
RUN gem install sass
