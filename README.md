# DevSpace for LAMP stack development

* PHP v7.3.3
* MySQL v5.7.25
* Apache v2.4.29
* phpMyAdmin v4.8.5

## Getting Started

1. First install DevSpaces client application, follow the instructions [here](https://support.devspaces.io/article/22-devspaces-client-installation) to do this.

2. Clone this repository locally

3. To create a DevSpace, open a terminal then navigate to the cloned repository directory and run following command
```bash
devspaces create
```
This will open a build status window and shows you the progress of DevSpace creation. Once build is successful validated starts.

4. Once validation is completed. Run `devspaces ls` command to see the list of DevSpaces and corresponding status. Newly created DevSpace `lamp` will be in "**Stopped**" status.

5. To start your DevSpace run following command
```bash
devspaces start lamp
```
You will receive a notification when your DevSpace is ready to be used.

6. To get inside your DevSpace, run following command
```bash
devspaces exec lamp
```

_Note:_ You can run `/run.sh` to start Apache and MySQL

## Run Demo Application

1. From a new terminal, clone the demo application repository
```bash
git clone https://github.com/qyjohn/simple-lamp.git
```

2. Navigate to cloned demo application directory
```bash
cd simple-lamp
```

3. To synchronization code from your local machine to your DevSpace. Run following command
```bash
devspaces bind lamp
```
This will synchronize files from your current working directory to your DevSpace. It might takes some time to complete, depending on the repository size.

4. Get inside your DevSpace by running following command
```bash
devspaces exec lamp
```
5. Once you're inside DevSpace, you should be able see `simple-lamp` project files under `/data` directory.

6. Start MySQL and Apache `/run.sh &> ~/run.out &`

7. Prepare database
```bash
mysql -u root
mysql> CREATE DATABASE simple_lamp;
mysql> CREATE USER 'username'@'localhost' IDENTIFIED BY 'password';
mysql> GRANT ALL PRIVILEGES ON simple_lamp.* TO 'username'@'localhost';
mysql> quit
```

Now application is ready, run command `devspaces info lamp` from your local machine terminal. Use http URL listed to access the application. e.g.

* Application url - `http://lamp.<user>.devspaces.io:<port>/`
* phpMyAdmin url - `http://lamp.<user>.devspaces.io:<port>/phpmyadmin/`.
  * username: `admin` , password: `Passw0rd`
