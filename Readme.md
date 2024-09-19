# RocketJot Docker Usage Guide
1. Install the Docker image on your system using one of the following methods:
a. Pull the Docker Image:
```
docker pull fschenkelberg/rocketjot
```
b. Build the Docker Image:
```
docker build -t rocketjot:latest .
```


2. Run the Docker Container:
```
docker run -it rocketjot:latest /bin/bash
```

# Repo Setup Guide:
1. Create Virtual Environment
```
python3 -m venv RedSkyAlliance
```
3. Activate Virtual Environment
```
source RedSkyAlliance/bin/activate
```
2. Install Python Dependencies
```
pip3 install -r requirements.txt
```

# Easy Run Guide:
1. ./simple-install.sh
2. cd ~/RocketJot/scripts
3. bin/create-catalog-entry.sh --builder "yes" --booktitle "Test" --yourname "Fred" --jobprofilename "Default" --sample_tweets "no" --import "no"