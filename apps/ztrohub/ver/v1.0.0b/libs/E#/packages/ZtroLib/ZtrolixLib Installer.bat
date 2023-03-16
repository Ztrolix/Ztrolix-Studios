@echo off
title ZtrolixLib Installer
cls
color 0c
:start

set python_ver=36

python ./get-pip.py --user
python get-pip.py --user

cd \
cd \python%python_ver%\Scripts\
pip install pip --upgrade --user
pip install setuptools -U --user
pip install --upgrade pip setuptools wheel --user
pip install --upgrade pip --user
pip install --user --upgrade twine --user
pip install --user --upgrade twine upload --user
pip install --user --upgrade twine upload ZtrolixLib/ --user
pause
pip install ZtrolixLib --user
pause