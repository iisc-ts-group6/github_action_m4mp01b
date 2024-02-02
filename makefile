install:
	pip install --upgrade pip && pip install -r requirements/requirements.txt
format:
	black *.py
lint:
	pylint *.py

# Vikrant added
#  model training, testing, package building, api dockerizing, and docker image pushing
train: 
	python bikeshare_model/train_pipeline.py  

# test - already present below this portion
package:
	python -m build
	
dockerize_api:
	docker build . -t vikrantpayal/bikeshare-fastapi:3-feb

docker_push_img:
	docker push vikrantpayal/bikeshare-fastapi:latest
# END Vikrant added

test:
	python -m pytest tests/test*.py


all: install lint test format
