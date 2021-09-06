@echo OFF
:loop
java -server -XX:+UseConcMarkSweepGC -XX:+UseParNewGC -XX:+CMSIncrementalPacing -XX:ParallelGCThreads=4 -XX:+AggressiveOpts -Xms4G -Xmx4G -jar paper.jar nogui
echo Press control+C to exit the server!
echo (%time%) Restarting!
goto loop