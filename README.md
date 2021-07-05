# DevEnv-Docker-LEMP-Laravel_Jetstream

Development Environment using Docker implementing LEMP for Laravel Jetstream applications.

## Quick Start Guide

To get this docker container up and running simply build and start using the following commands 
from within the `docker` directory.

`> cd docker`

`> ./build.sh`

`> ./start.sh`

`> ./config.sh`

You can access the application at 
`https://127.0.0.1:8080/` or `https://localhost:8080/`

Note; the `build.sh` and `config.sh` commands are only needs the first time, but won't harm to run each time.
Once finished call the stop command to bring down docker container and application.

`> ./stop.sh`

While the docker container is running, ie after running `./start` you can 
connect to the web server to run commands as if you would any other server. 
Use the following command to connect

`> ./connect.sh`

This will execute the following command for you `docker exec -it webapp-php-fpm /bin/bash`

The following section provides further details on the docker methods used within each script.


## Application Access

- Main Application: `http://localhost:8080/`
- PhpMyAdmin: `http://localhost:8181/`
- Email (SMPT catcher) `http://localhost:3000/`


# Database

MySQL and PHPMyAdmin

#### PhpMyAdmin

You can access the database using phpmyadmin within this project.
Navigate to this url `http://127.0.0.1:8181/index.php`

Enter the following details

- Server: webapp-mysql
- Username: webapp_user
- Password: password


## Acknowledgements 

This project is based on 
<a href="https://github.com/aalshukri/DevEnv-Docker-LEMP-Laravel">https://github.com/aalshukri/DevEnv-Docker-LEMP-Laravel</a>.

Main differences between DevEnv-Docker-LEMP-Laravel and DevEnv-Docker-LEMP-Drupal
are the following:
- Ubuntu 20.04 from 18.04
- PHP 7.4 (php7.4-fpm.sock) from 7.2
