install:
	pip install --upgrade pip && pip install -r requirements/requirements.txt
format:
	black *.py
lint:
	pylint *.py

## Vikrant added
#  model training, testing, package building, api dockerizing, and docker image pushing
train: 
	python bikeshare_model/train_pipeline.py  

# test step - already present below this portion

build:
	docker build . --tag ${DOCKER_USER_NAME}/bikeshare-fastapi:latest

push:
	docker push ${DOCKER_USER_NAME}/bikeshare-fastapi:latest

release: 
	docker pull ${DOCKER_USER_NAME}/bikeshare-fastapi:latest
	docker tag  ${DOCKER_USER_NAME}/bikeshare-fastapi:latest ${DOCKER_USER_NAME}/bikeshare-fastapi:latest
	docker push ${DOCKER_USER_NAME}/bikeshare-fastapi:latest
## END Vikrant added

test:
	python -m pytest tests/test*.py


all: install lint test format
