#!/bin/bash

if [ ! -f /opt/kallithea/repos/__isInitialized ]; then
    echo "Initializing Kallithea"

    # this is the setup command for 0.4x
    # yes "y" | kallithea-cli db-create -c /opt/kallithea/config.ini --user=admin --email=admin@admin.com --password=Administrator --repos=/opt/kallithea/repos    
    # kallithea-cli front-end-build
    
    yes "y" | paster setup-db /opt/kallithea/config.ini --user=admin --password=admin --email=admin@admin.com --repos=/opt/kallithea/repos

    # create a file in persistent repositories folder so we know db has been initialized
    touch /opt/kallithea/repos/__isInitialized
fi

# start script for 0.4.x
# gearbox serve -c /opt/kallithea/config.ini

paster serve /opt/kallithea/config.ini


