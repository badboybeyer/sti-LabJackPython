#! /bin/sh
set -e

python3 -m pip install --user --upgrade setuptools wheel
python3 -m pip install --user --upgrade twine
[ -d ./dist/ ] && rm -r ./dist/
python3 setup.py sdist bdist_wheel
twine upload dist/*