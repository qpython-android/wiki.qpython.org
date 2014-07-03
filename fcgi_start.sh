#!/bin/sh
kill -9 `cat /tmp/qpy_wiki_fcgi.pid`
python manage.py runfcgi host=127.0.0.1 port=8889 maxchildren=1 maxspare=1 minspare=1 method=prefork pidfile=/tmp/qpy_wiki_fcgi.pid

