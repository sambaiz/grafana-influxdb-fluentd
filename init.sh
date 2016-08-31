curl -i -XPOST http://192.168.99.100:30005/query --data-urlencode "q=CREATE USER root WITH PASSWORD 'root' WITH ALL PRIVILEGES"
curl -i -XPOST http://192.168.99.100:30005/query -u root:root --data-urlencode "q=CREATE DATABASE mydb"
