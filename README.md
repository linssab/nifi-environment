# Create an environment to develop NiFI applications

The provided shell script and docker-compose file create 3 docker containers,
mapping ports 15213, 8443 and 18080 to the _Oracle database_, the _nifi client_, and the _nifi registry client_, respectively.

___

## Database setup

Any shell or sql scripts you wish to use to initialize the db can be deposited in the
`scripts` folder. They will be executed in the order they are found, so if you wish to execute them in a particular order,
name your scripts accordingly (e.g. with a number in front). 

## Access the NiFi services

To access the nifi client after the shell is done running, go to ```http://localhost:8443/nifi```

The nifi registry client is located at ```http://localhost:18080/nifi-registry```

<p style="align:center; margin:auto; width:100%; padding:5px">
	<img src="https://i.ibb.co/NnBV6h1/nifi-flowchart.png" alt="nifi-flowchart" border="0">
</p>