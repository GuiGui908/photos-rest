How to deploy it on a server :

Pre-requisites:
Docker installed and docker-compose
Git installed

- deploy a new stack for the first time
    Clone this repo at "/home/pi"
    CLone the repo GGPortal-front at "/home/pi"
    Clone the repo GGPortal-back at "/home/pi"

    Download the artifacts of the frontend pipeline and extract it to the folder ggportal-front
        The expected tree is : /home/pi/ggportal-front/dist/app/[ALL_files_including_mainxxxx.js]
    Download the artifacts of the backent pipeline and extract it to the folder ggportal-back/target
        The expected tree is : /home/pi/ggportal-back/target/file-x.x.x-SNAPSHOT.jar

    run the script /home/pi/deployment/ggportal-front.sh
    run the script /home/pi/deployment/ggportal-back.sh


- To update the frontend :
    Download the artifacts of the frontend pipeline and extract it to the folder ggportal-front
    run the script /home/pi/deployment/ggportal-front.sh



- To update the backend :
    Download the artifacts og the backent pipeline and extract it to the folder ggportal-back/target
    run the script /home/pi/deployment/ggportal-back.sh


TODO : create  a diagram of the docker compose with ports

TODO : list error codes
       list endpoints with funtional rules
