FROM mysql:8.0
RUN set -x \
	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* \
        && wget -O /usr/local/bin/mysqltuner https://raw.githubusercontent.com/major/MySQLTuner-perl/master/mysqltuner.pl \
        && chmod +x /usr/local/bin/mysqltuner \
	&& apt-get purge -y --auto-remove ca-certificates wget
