FROM debian:jessie

COPY dagi /usr/local/bin/

# common set of packages shared by all
RUN dagi	krb5-locales \
    		libexpat1 \
    		libffi6 \
    		libgmp10 \
    		libgnutls-deb0-28 \
    		libgssapi-krb5-2 \
    		libhogweed2 \
    		libk5crypto3 \
    		libkeyutils1 \
    		libkrb5-3 \
    		libkrb5support0 \
    		libnettle4 \
    		libp11-kit0 \
    		libsqlite3-0 \
    		libssl1.0.0 \
    		libtasn1-6 \
    		libxml2 \
    		openssl \
    		sgml-base \
    		ucf \
    		xml-core \
    		locales \
    		curl \
			python libpython-stdlib  python-minimal python-support python-pip \
			mime-support \
			ntp \
			ca-certificates \
			bzip2 \
			netcat


# make the "en_US.UTF-8" locale
RUN localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
ENV LANG en_US.utf8
