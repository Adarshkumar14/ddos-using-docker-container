## ddos-using-docker-container
A docker project under **IIEC-COMMUNITY**
 *  I have make a project under IIEC community under the mentorship of The great **Vimal Daga sir**, 
    The project is a ddos tool,that can check the capacity of your website/your website server that how much traffic it can hold,and if you are running your server on containers then you can increase the server's container relatively so that you dont face the unavailability of your website .* 
# Requirements:

*  -this tool is made on the top of redhat:8,so configure it on what os you are using.
 * -first install docker in your system
      -yum install docker
  * -Launch the docker
        `-systemctl start docker`
 **-either get the image  from the drive-link i am providing `https://drive.google.com/file/d/1CW6HqYM_GnXK5eSiMOfdzpBDWi1INS9h/view?usp=sharingor` or download centos:8 from the dockerhub**
       `-docker pull centos:8`
   *  -After successful pulling,
   *  -run the command below:
       `docker run -it --name cont1 -v /run/media/root/RHEL-8-0-0-BaseOS-x86_64:/dvd --network net1  centos:8` 
   *       -Now you are in a container,first configure the yum.
   *     -download  git:
           `-yum install git`
   **      -After installing git ,you have to clone the XerXes from github**
       `git clone https://github.com/CyberXCodder/XerXes.git`
            `cd XerXes`
            `gcc xerxes.c -o xerxes`
   *       -Now make a script file eg:-a.sh
   *       -make your custom command 
             `-chmod +x a.sh`
   *       -Now stop the container and go back to base system 
   * -Now make the container as your new Image
      `docker commit cont1 ddos-centos`
   ** -Now your new image is created.
   
      
*-Now go to ddos.sh and do the changes:*
   `-docker run -dit --name cont$x -v /run/media/root/RHEL-8-0-0-BaseOS-x86_64:/dvd  -v /root/d.sh:/a.sh --network net1  ddos-centos:8 ./a.sh`
* -Make ddos.sh as your custom command
   `chmod +x ddos.sh`
  * -Now rum the poj.py to run the Tool
   `python3 poj.py`
* -Now follow the instruction given then you will be able to succeessfully launch the containers as much you want and they start testing your website by ddosing it.
* -If you want to check the live status of the containers*
   `docker logs -f cont$x`
  *       -here $x is the no. of container you want to check
* -After all the process when you stop the containers,then run the below command to delete all the containers.*
  `docker rm -f $(docker container ls -a -q)`
    
    
## Thank you!!
        
