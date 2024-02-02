### github_action_demo
This repo is created for the demonstration of GitHub actions.
Connecting local repo with GitHub repo and working the vs code Linux terminal



### useful files, commands
```
git clone git@github.com:iisc-ts-group6/github_action_m4mp01b.git
python3 -m venv venv
source venv/bin/activate
#
pip install -r requirements/requirements.txt
pip freeze
#
python train_pipeline.py
python3 train_pipeline.py
python predict.py
python3 predict.py
#
pytest
pylint *.py
black *.py
#
python -m pip install --upgrade build
python -m build
#
# Inside *_api folder
pip install -r requirements.txt
python app/main.py 
#
docker build . -t vikrantpayal/bikeshare-fastapi:3-feb
docker images
docker run -it -d -p 8001:8001 --name=bikeshare vikrantpayal/bikeshare-fastapi
docker ps
docker logs -f bikeshare
docker stop bikeshare
docker login
docker push vikrantpayal/bikeshare-fastapi:latest
#
git status
git add .
git commit -m "free text, commit message"
git push
#
```