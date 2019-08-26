FROM ubuntu:18.04

RUN apt-get update \
    && apt-get install build-essential git python-pip python-virtualenv libffi-dev python-dev -y \
    && apt-get install libpq-dev -y \
    && pip install --upgrade pip 

# cannot install pip packages in same run block as pip itself
RUN pip install PasteScript \
    
    # required for postgres support
    && pip install psycopg2 \

    && pip install --trusted-host pypi.python.org kallithea==0.3.7 \
    && mkdir -p /opt/kallithea/data \
    && mkdir -p /opt/kallithea/repos

ADD ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

CMD ["/entrypoint.sh"]
