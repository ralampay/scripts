#!/bin/bash

# Install postgresql
sudo apt install postgresql

# Create superuser developer with password password
sudo -u postgres createuser -s -i -d -r -l -w developer
sudo -u postgres psql -c "ALTER ROLE developer WITH PASSWORD 'password';"
