# S1
start-stop-daemon --background --start --quiet --pidfile /home/mongo/mongo-28001/mongodb.pid \
		--make-pidfile --chuid mongodb \
		--exec /usr/bin/mongod \
		-- --shardsvr --replSet S1 --config /home/mongo/config/mongodb-28001.conf --fork run
start-stop-daemon --background --start --quiet --pidfile /home/mongo/mongo-28002/mongodb.pid \
		--make-pidfile --chuid mongodb \
		--exec /usr/bin/mongod \
		-- --shardsvr --replSet S1 --config /home/mongo/config/mongodb-28002.conf --fork run
start-stop-daemon --background --start --quiet --pidfile /home/mongo/mongo-28003/mongodb.pid \
		--make-pidfile --chuid mongodb \
		--exec /usr/bin/mongod \
		-- --shardsvr --replSet S1 --config /home/mongo/config/mongodb-28003.conf --fork run

# S2
start-stop-daemon --background --start --quiet --pidfile /home/mongo/mongo-28011/mongodb.pid \
		--make-pidfile --chuid mongodb \
		--exec /usr/bin/mongod \
		-- --shardsvr --replSet S2 --config /home/mongo/config/mongodb-28011.conf --fork run
start-stop-daemon --background --start --quiet --pidfile /home/mongo/mongo-28012/mongodb.pid \
		--make-pidfile --chuid mongodb \
		--exec /usr/bin/mongod \
		-- --shardsvr --replSet S2 --config /home/mongo/config/mongodb-28012.conf --fork run
start-stop-daemon --background --start --quiet --pidfile /home/mongo/mongo-28013/mongodb.pid \
		--make-pidfile --chuid mongodb \
		--exec /usr/bin/mongod \
		-- --shardsvr --replSet S2 --config /home/mongo/config/mongodb-28013.conf --fork run

# S3
start-stop-daemon --background --start --quiet --pidfile /home/mongo/mongo-28021/mongodb.pid \
		--make-pidfile --chuid mongodb \
		--exec /usr/bin/mongod \
		-- --shardsvr --replSet S3 --config /home/mongo/config/mongodb-28021.conf --fork run
start-stop-daemon --background --start --quiet --pidfile /home/mongo/mongo-28022/mongodb.pid \
		--make-pidfile --chuid mongodb \
		--exec /usr/bin/mongod \
		-- --shardsvr --replSet S3 --config /home/mongo/config/mongodb-28022.conf --fork run
start-stop-daemon --background --start --quiet --pidfile /home/mongo/mongo-28023/mongodb.pid \
		--make-pidfile --chuid mongodb \
		--exec /usr/bin/mongod \
		-- --shardsvr --replSet S3 --config /home/mongo/config/mongodb-28023.conf --fork run
