echo enter the number of container you want
read x
while [ $x -gt 0 ]
do
	docker run -dit --name cont$x -v /run/media/root/RHEL-8-0-0-BaseOS-x86_64:/dvd  -v /root/d.sh:/a.sh --network net1  ddos-centos:8 ./a.sh
	x=`expr $x - 1`
done
echo program end
