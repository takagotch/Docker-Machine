docker-machine ls --filter driver=virtualbox --filter state=Running
docker-machine status host1

docker-machine ssh host1

docker-machine env --shell cmd host1

docker-machine env --shell-powershell host1 | Invoke-Expression
Get-ChildItem env:DOCKER*

docker-machine start default
docker-machine stop default
docekr-machine stop default
docker-machine scp host1:/etc/passwd

docker-machine rm -f host1
docker-machine kill host1

docker-machine ip host1
docker-machine inspect host1
docker-machine inspect \
	--format='{{.Driver.IPAddress}}:{{.Driver.SSHUser}}' \
	host1

docker-machine create --driver virtualbox host1

docker-machine ls
docker-machine ssh host1

docker-machine create \
	--driver amazonec2 \
	--amazonec2-access-key XXXX \
	--amazonec2-secret-key XXXX \
	--amazonec2-region ap-northeast-1 \
	--amazonec2-vpc-id XXXX \

docker-machine create \
  --driver amazonec2 \
  --amazonec2-access-key ABCD \
  --amazonec2-secret-key xyz \
  --amazonec2-region ap-northeast-1 \
  --amazonec2-vpc-id vpc-1234 \

docker-machine ssh host2
sudo docker ps

docker-machine ls
docker-machine rm host1
docker-machine ls



