start-stop-daemon --background --start --quiet --pidfile /home/mongo/mongo-mongos-30000/mongos.pid \
		--make-pidfile --chuid mongodb \
		--exec /usr/bin/mongos \
		-- --configdb 127.0.0.1:20000 --port 30000 --chunkSize 5 \
		--logpath /home/mongo/mongo-mongos-30000/mongos.log --logappend --fork &
