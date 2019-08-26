FROM ubuntu:18.04

RUN apt-get update \
    && apt-get install build-essential git python-pip python-virtualenv libffi-dev python-dev -y \
    && apt-get install libpq-dev -y \
    && pip install --upgrade pip 

# need RUN command to be split because chaining causes some of them to fail, test and optimize. I think the pip
# commands failed if they are chained together, or with the apt-get block, presumably because something isn't finalized
# in time.
RUN pip install PasteScript \
    
    # required for postgres support
    && pip install psycopg2 \

    && pip install --trusted-host pypi.python.org kallithea==0.3.7 \
    && mkdir -p /opt/kallithea/data \
    && mkdir -p /opt/kallithea/repos

ADD ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

CMD ["/entrypoint.sh"]
