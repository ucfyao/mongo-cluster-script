# S1
mongo --port 28001 --eval "rs.initiate({_id:'S1',members:[{_id:0,host:'127.0.0.1:28001',priority:2},{_id:1,host:'127.0.0.1:28002',priority:1},{_id:2,host:'127.0.0.1:28003',arbiterOnly:true}]})"
mongo --port 28002 --eval "db.getMongo().setSlaveOk()"
#mongo --port 28001 --eval "db.runCommand({addshard:'S1/127.0.0.1:28001,127.0.0.1:28002',name:'S1'})"

# S2
mongo --port 28011 --eval "rs.initiate({_id:'S2',members:[{_id:0,host:'127.0.0.1:28011',priority:2},{_id:1,host:'127.0.0.1:28012',priority:1},{_id:2,host:'127.0.0.1:28013',arbiterOnly:true}]})"
mongo --port 28012 --eval "db.getMongo().setSlaveOk()"
#mongo --port 28011 --eval "db.runCommand({addshard:'S2/127.0.0.1:28011,127.0.0.1:28012',name:'S2'})"

# S3
mongo --port 28021 --eval "rs.initiate({_id:'S3',members:[{_id:0,host:'127.0.0.1:28021',priority:2},{_id:1,host:'127.0.0.1:28022',priority:1},{_id:2,host:'127.0.0.1:28023',arbiterOnly:true}]})"
mongo --port 28022 --eval "db.getMongo().setSlaveOk()"
#mongo --port 28021 --eval "db.runCommand({addshard:'S3/127.0.0.1:28021,127.0.0.1:28022',name:'S3'})"
