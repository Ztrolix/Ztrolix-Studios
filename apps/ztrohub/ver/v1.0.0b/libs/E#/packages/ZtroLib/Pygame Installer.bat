@echo off
title PyGame Installer
cls
color 0c
:start

set python_ver=36

python ./get-pip.py --user
python get-pip.py --user

cd \
cd \python%python_ver%\Scripts\
pip install --upgrade pip --user
pip install pip --upgrade --user
pip install setuptools -U --user
pip install xlrd --user
pip install XlsxWriter --user
set DISTUTILS_USE_SDK=1 --user
set MSSdk=1 --user
git clone https://github.com/pygame/pygame.git --user
cd pygame --user
pip install setuptools requests wheel numpy -U --user
py -m buildconfig --download --user
python -m buildconfig --download --user
pip install setup.py --user
pip install pyproject.toml --user
pip install pygame.examples.aliens --user
pip install -U wheel --user
pip install wheel --user
pip install -U pygame --user
pip install pygame --user
pip install -U pygame --pre --user
pip install pygame --pre --user
pip install pandas --user
pip install NumPy --user
pip install Matplotlib --user
pip install Seaborn --user
pip install scikit-learn --user
pip install Requests --user
pip install urllib3 --user
pip install NLTK --user
pip install Pillow --user
pip install pytest --user
pip install Pendulum --user
pip install Python Imaging Library --user
pip install MoviePy --user
pip install PyQt --user
pip install Pywin32 --user
pip install tqdm --user
pip install --upgrade pip setuptools wheel --user
pip install --upgrade pip --user
pip install --user --upgrade twine --user
pip install --user --upgrade twine upload --user
pip install --user --upgrade twine upload ZtrolixLib/ --user
pip install ZtrolixLib --user
pip install pgzero --user
pip install adventurelib --user
pip install panda3d --user
pip install arcade --user
pip install --upgrade pip setuptools virtualenv --user
python -m virtualenv kivy_venv --user
py -m virtualenv kivy_venv --user
pip install "kivy[base]" kivy_examples --user
pip install "kivy[base]" kivy_examples --no-binary kivy --user
pip install "kivy[base] @ https://github.com/kivy/kivy/archive/master.zip" --user
pip install --pre "kivy[base]" kivy_examples --user
pip install kivy --pre --no-deps --index-url  https://kivy.org/downloads/simple/ --user
pip install "kivy[base]" --pre --extra-index-url https://kivy.org/downloads/simple/ --user
git clone git://github.com/kivy/kivy.git --user
cd kivy --user
pip install -e ".[dev,full]" --user
python setup.py build_ext --inplace --user
py setup.py build_ext --inplace --user
exit