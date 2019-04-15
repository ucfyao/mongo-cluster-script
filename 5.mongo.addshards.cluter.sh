#1. 30000
mongo 127.0.0.1:30000/admin --eval "db.runCommand({addshard:'S1/127.0.0.1:28001,127.0.0.1:28002',name:'S1'})"
mongo 127.0.0.1:30000/admin --eval "db.runCommand({addshard:'S2/127.0.0.1:28011,127.0.0.1:28012',name:'S2'})"
mongo 127.0.0.1:30000/admin --eval "db.runCommand({addshard:'S3/127.0.0.1:28021,127.0.0.1:28022',name:'S3'})"
#2. Enable sharding
mongo 127.0.0.1:30000/admin --eval "db.runCommand({enablesharding:'test'})"
#3. Sharding key
mongo 127.0.0.1:30000/admin --eval "db.runCommand({shardcollection:'test.c1',key:{id:1},unique:true})"
