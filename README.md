
[![CircleCI](https://circleci.com/gh/Bao-Truong/cdond-c4-projectstarter/tree/main.svg?style=svg)](https://circleci.com/gh/Bao-Truong/cdond-c4-projectstarter/tree/main)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl

## Build then Upload Docker Image 
**Build docker image:**
```
# Change the --tag value if you want to change the image name (default: app:latest)
docker build --tag app:latest .
```
or use:
```
chmod +x ./run_docker.sh
./run_docker.sh
```
**Upload docker image (to AWS ECR):**

1. Manually create the ECR registry first by using the AWS Console.
2. Update the dockerpath in the upload_docker.sh file according to the registry created in step 1.
3. Update the 'aws ecr login cli'.
4. (Optional) Change the docker --tag app:latest to be the same to the image building step.
5. Run:
```
chmod +x upload_docker.sh
./upload_docker.sh
```
## File Structure
Folders:
```
├───.circleci:          Store the circleci config.yaml.
├── deployment:         Store Kubernets resource yaml files.
├───model_data:         CSV file data to train ML module.
└───output_txt_files:   Include 2 output files while running run_docker.sh and run_kubernets.sh
```
Files:
```
├── app.py:             Flask Server code.
├── Dockerfile:         Used to build Docker Image. (docker build --tag app:latest .)
├── Makefile:           Run command using make cli.
├── make_prediction.sh: Sample script to quickly test the server
├── README.md
├── requirements.txt:   Python Code dependencies
├── run_docker.sh:      Run Flask Server as Docker
├── run_kubernetes.sh:  Run Flask Server as Kubernetes Cluster
└── upload_docker.sh:   Upload the built image into AWS ECR
```

