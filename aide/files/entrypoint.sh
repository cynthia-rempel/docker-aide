#!/bin/sh
# ensure the service runs an aide --check first so if this is a new run, we capture the changes
aide --check

# re-initialize the database, so if there were problems, they get resolved
aide --init

# backup old file, for auditing purposes
mv /var/lib/aide/aide.db.gz /var/lib/aide/aide.db.`date +%Y%m%d`.gz

# use the new database, so things get fixed
mv /var/lib/aide/aide.db.gz.new /var/lib/aide/aide.db.gz

