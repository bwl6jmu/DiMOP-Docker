# DiMOP-Docker

## How to use this

1. Install Docker https://www.docker.com/get-started
2. open PowerShell (on Windows) or Terminal (on Mac / Linux)
3. type `docker build https://raw.githubusercontent.com/bwl6jmu/DiMOP-Docker/main/Dockerfile -t dimop`
4. execute command
5. type `docker run -d -p 80:5000 --name dimop dimop`
6. execute command
7. open DiMOP Platform in Browser http://127.0.0.1
8. in the Docker Desktop Interface you can stop and start the DiMOP container if needed.
