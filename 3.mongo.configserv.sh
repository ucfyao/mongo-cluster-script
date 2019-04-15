start-stop-daemon --background --start --quiet --pidfile /home/mongo/mongo-serv-20000/mongodb.pid \
		--make-pidfile --chuid mongodb \
		--exec /usr/bin/mongod \
		-- --configsvr --dbpath /home/mongo/mongo-serv-20000 \
		--port 20000 --logpath=/home/mongo/mongo-serv-20000/config.log --logappend --fork run
