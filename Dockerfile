FROM ubuntu:20.04
RUN apt update
RUN apt upgrade -y
RUN DEBIAN_FRONTEND="noninteractive" apt install git nodejs npm python3 python3-pip -y
RUN pip3 install pipenv
RUN git clone https://github.com/chilligerchief/DiMOP
WORKDIR /DiMOP/backend/frontend
RUN rm -r node_modules
RUN npm install
RUN npm run build
WORKDIR /DiMOP/backend
RUN pipenv install
CMD ["pipenv",  "run",  "python",  "main.py"]
EXPOSE 5000