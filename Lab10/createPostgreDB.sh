#! /bin/bash
createdb -h /tmp/$LOGNAME/sockets $LOGNAME"_DB"

echo "Database Name: " $LOGNAME"_DB"

sleep 1

cp ./*.dat /tmp/$LOGNAME/test/data/.

sleep 1

psql -h /tmp/$LOGNAME/sockets $LOGNAME"_DB" < create_tables.sql > /dev/null
