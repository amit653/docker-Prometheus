docker-compose -f compose.yml up -d

------------------

[root@a9ff64324bb0 csvserver]# netstat -ntlp
Active Internet connections (only servers)
Proto Recv-Q Send-Q Local Address           Foreign Address         State       PID/Program name    
tcp        0      0 127.0.0.11:39419        0.0.0.0:*               LISTEN      -                   
tcp6       0      0 :::9300                 :::*                    LISTEN      1/csvserver     --------> running on 9300

sh getcsv.sh

PART 3

created prometheus.yml with scrape entries  and added prometheus service in docker_compose.yml 

docker-compose -f docker-compose.yaml up -d
Docker Compose is now in the Docker CLI, try `docker compose up`

Creating csvserver  ... done
Creating prometheus ... done

 docker-compose -f docker-compose.yaml ps   
   Name                 Command               State           Ports         
----------------------------------------------------------------------------
csvserver    /csvserver/csvserver             Up      0.0.0.0:9393->9300/tcp
prometheus   /bin/prometheus --config.f ...   Up      0.0.0.0:9090->9090/tcp


1) from  --http://localhost:9090/new/targets


Targets
csvserver (1/1 up)
Endpoint	State	Labels	Last Scrape	Scrape Duration	Error
http://csvserver:9300/metrics	UP	
instance="csvserver:9300"job="csvserver"
4.181s	3.836ms	
prometheus (1/1 up)
Endpoint	State	Labels	Last Scrape	Scrape Duration	Error
http://localhost:9090/metrics	UP	
instance="localhost:9090"job="prometheus"
730.000ms	5.738ms	


2) From  http://localhost:9393/


Welcome to the CSV Server
Index	Value
1	31264
2	32477
3	19163
4	32019
5	23416
6	31036
7	15782
8	3977
9	30332
10	30788

