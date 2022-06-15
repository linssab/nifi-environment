# Create an environment to develop NiFi applications

The provided shell script and docker-compose file create 3 docker containers,
mapping ports 15213, 8443 and 18080 to the _Oracle database_, the _nifi client_, and the _nifi registry client_, respectively.
A scheme is shown in the figure below

<p style="align:center; margin:auto; width:100%; padding:5px">
	<img src="https://i.ibb.co/NnBV6h1/nifi-flowchart.png" alt="nifi-flowchart" border="0">
</p>

> <p style="font-size: 8pt; width: 50%; float: left;">A generic production-development environment. The script provided creates a basic development environment (for the creation of keytab credentials and kerberos authentication you must add further information in the docker-compose file) as seen in the right, with which a production environment can communicate to, for the deployment of NiFi jobs.</p>

If you want to pre-set the database, place your scripts in the scripts folder.

To create the environment, just launch the shell:
```console
bash launch_nifi_environment.sh
```

___

## Database setup

Any shell or sql scripts you wish to use to initialize the db can be deposited in the
`scripts` folder. They will be executed in the order they are found, so if you wish to execute them in a particular order,
name your scripts accordingly (e.g. with a number in front). 

## Access the NiFi services

To access the nifi client after the shell is done running, go to ```http://localhost:8443/nifi```

The nifi registry client is located at ```http://localhost:18080/nifi-registry```
