#!bin/sh
gcc /home/server.c -o /home/server
spawn-fcgi -p 8080 /home/server
nginx -g 'daemon off;'
