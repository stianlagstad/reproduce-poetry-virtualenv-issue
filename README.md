Building the docker image fails:

```
$ docker build -t test . --no-cache
Sending build context to Docker daemon  33.34MB
Step 1/10 : FROM python:3.9.6-buster
 ---> c26b8ed5168c
Step 2/10 : COPY pyproject.toml .
 ---> bbeb112a526b
Step 3/10 : COPY poetry.lock .
 ---> 74f3d2550869
Step 4/10 : RUN pip list
 ---> Running in ccc934662dc1
Package    Version
---------- -------
pip        21.2.4
setuptools 57.4.0
wheel      0.37.0
Removing intermediate container ccc934662dc1
 ---> 1c5ee81460e8
Step 5/10 : RUN pip install poetry
 ---> Running in e2f1ceb355dc
Collecting poetry
  Downloading poetry-1.1.8-py2.py3-none-any.whl (173 kB)
Collecting requests<3.0,>=2.18
  Downloading requests-2.26.0-py2.py3-none-any.whl (62 kB)
Collecting keyring<22.0.0,>=21.2.0
  Downloading keyring-21.8.0-py3-none-any.whl (32 kB)
Collecting cleo<0.9.0,>=0.8.1
  Downloading cleo-0.8.1-py2.py3-none-any.whl (21 kB)
Collecting cachy<0.4.0,>=0.3.0
  Downloading cachy-0.3.0-py2.py3-none-any.whl (20 kB)
Collecting shellingham<2.0,>=1.1
  Downloading shellingham-1.4.0-py2.py3-none-any.whl (9.4 kB)
Collecting crashtest<0.4.0,>=0.3.0
  Downloading crashtest-0.3.1-py3-none-any.whl (7.0 kB)
Collecting packaging<21.0,>=20.4
  Downloading packaging-20.9-py2.py3-none-any.whl (40 kB)
Collecting html5lib<2.0,>=1.0
  Downloading html5lib-1.1-py2.py3-none-any.whl (112 kB)
Collecting pkginfo<2.0,>=1.4
  Downloading pkginfo-1.7.1-py2.py3-none-any.whl (25 kB)
Collecting requests-toolbelt<0.10.0,>=0.9.1
  Downloading requests_toolbelt-0.9.1-py2.py3-none-any.whl (54 kB)
Collecting tomlkit<1.0.0,>=0.7.0
  Downloading tomlkit-0.7.2-py2.py3-none-any.whl (32 kB)
Collecting virtualenv<21.0.0,>=20.0.26
  Downloading virtualenv-20.7.2-py2.py3-none-any.whl (5.3 MB)
Collecting poetry-core<1.1.0,>=1.0.4
  Downloading poetry_core-1.0.4-py2.py3-none-any.whl (420 kB)
Collecting pexpect<5.0.0,>=4.7.0
  Downloading pexpect-4.8.0-py2.py3-none-any.whl (59 kB)
Collecting cachecontrol[filecache]<0.13.0,>=0.12.4
  Downloading CacheControl-0.12.6-py2.py3-none-any.whl (19 kB)
Collecting clikit<0.7.0,>=0.6.2
  Downloading clikit-0.6.2-py2.py3-none-any.whl (91 kB)
Collecting msgpack>=0.5.2
  Downloading msgpack-1.0.2-cp39-cp39-manylinux1_x86_64.whl (294 kB)
Collecting lockfile>=0.9
  Downloading lockfile-0.12.2-py2.py3-none-any.whl (13 kB)
Collecting pylev<2.0,>=1.3
  Downloading pylev-1.4.0-py2.py3-none-any.whl (6.1 kB)
Collecting pastel<0.3.0,>=0.2.0
  Downloading pastel-0.2.1-py2.py3-none-any.whl (6.0 kB)
Collecting webencodings
  Downloading webencodings-0.5.1-py2.py3-none-any.whl (11 kB)
Collecting six>=1.9
  Downloading six-1.16.0-py2.py3-none-any.whl (11 kB)
Collecting SecretStorage>=3.2
  Downloading SecretStorage-3.3.1-py3-none-any.whl (15 kB)
Collecting jeepney>=0.4.2
  Downloading jeepney-0.7.1-py3-none-any.whl (54 kB)
Collecting pyparsing>=2.0.2
  Downloading pyparsing-2.4.7-py2.py3-none-any.whl (67 kB)
Collecting ptyprocess>=0.5
  Downloading ptyprocess-0.7.0-py2.py3-none-any.whl (13 kB)
Collecting charset-normalizer~=2.0.0
  Downloading charset_normalizer-2.0.4-py3-none-any.whl (36 kB)
Collecting idna<4,>=2.5
  Downloading idna-3.2-py3-none-any.whl (59 kB)
Collecting certifi>=2017.4.17
  Downloading certifi-2021.5.30-py2.py3-none-any.whl (145 kB)
Collecting urllib3<1.27,>=1.21.1
  Downloading urllib3-1.26.6-py2.py3-none-any.whl (138 kB)
Collecting cryptography>=2.0
  Downloading cryptography-3.4.8-cp36-abi3-manylinux_2_24_x86_64.whl (3.0 MB)
Collecting cffi>=1.12
  Downloading cffi-1.14.6-cp39-cp39-manylinux1_x86_64.whl (405 kB)
Collecting pycparser
  Downloading pycparser-2.20-py2.py3-none-any.whl (112 kB)
Collecting distlib<1,>=0.3.1
  Downloading distlib-0.3.2-py2.py3-none-any.whl (338 kB)
Collecting platformdirs<3,>=2
  Downloading platformdirs-2.3.0-py3-none-any.whl (13 kB)
Collecting filelock<4,>=3.0.0
  Downloading filelock-3.0.12-py3-none-any.whl (7.6 kB)
Collecting backports.entry-points-selectable>=1.0.4
  Downloading backports.entry_points_selectable-1.1.0-py2.py3-none-any.whl (6.2 kB)
Installing collected packages: pycparser, urllib3, idna, charset-normalizer, cffi, certifi, requests, pylev, pastel, msgpack, jeepney, cryptography, crashtest, webencodings, six, SecretStorage, pyparsing, ptyprocess, platformdirs, lockfile, filelock, distlib, clikit, cachecontrol, backports.entry-points-selectable, virtualenv, tomlkit, shellingham, requests-toolbelt, poetry-core, pkginfo, pexpect, packaging, keyring, html5lib, cleo, cachy, poetry
Successfully installed SecretStorage-3.3.1 backports.entry-points-selectable-1.1.0 cachecontrol-0.12.6 cachy-0.3.0 certifi-2021.5.30 cffi-1.14.6 charset-normalizer-2.0.4 cleo-0.8.1 clikit-0.6.2 crashtest-0.3.1 cryptography-3.4.8 distlib-0.3.2 filelock-3.0.12 html5lib-1.1 idna-3.2 jeepney-0.7.1 keyring-21.8.0 lockfile-0.12.2 msgpack-1.0.2 packaging-20.9 pastel-0.2.1 pexpect-4.8.0 pkginfo-1.7.1 platformdirs-2.3.0 poetry-1.1.8 poetry-core-1.0.4 ptyprocess-0.7.0 pycparser-2.20 pylev-1.4.0 pyparsing-2.4.7 requests-2.26.0 requests-toolbelt-0.9.1 shellingham-1.4.0 six-1.16.0 tomlkit-0.7.2 urllib3-1.26.6 virtualenv-20.7.2 webencodings-0.5.1
WARNING: Running pip as the 'root' user can result in broken permissions and conflicting behaviour with the system package manager. It is recommended to use a virtual environment instead: https://pip.pypa.io/warnings/venv
Removing intermediate container e2f1ceb355dc
 ---> 687e2e8591f1
Step 6/10 : RUN pip list
 ---> Running in 411ab5de5349
Package                           Version
--------------------------------- ---------
backports.entry-points-selectable 1.1.0
CacheControl                      0.12.6
cachy                             0.3.0
certifi                           2021.5.30
cffi                              1.14.6
charset-normalizer                2.0.4
cleo                              0.8.1
clikit                            0.6.2
crashtest                         0.3.1
cryptography                      3.4.8
distlib                           0.3.2
filelock                          3.0.12
html5lib                          1.1
idna                              3.2
jeepney                           0.7.1
keyring                           21.8.0
lockfile                          0.12.2
msgpack                           1.0.2
packaging                         20.9
pastel                            0.2.1
pexpect                           4.8.0
pip                               21.2.4
pkginfo                           1.7.1
platformdirs                      2.3.0
poetry                            1.1.8
poetry-core                       1.0.4
ptyprocess                        0.7.0
pycparser                         2.20
pylev                             1.4.0
pyparsing                         2.4.7
requests                          2.26.0
requests-toolbelt                 0.9.1
SecretStorage                     3.3.1
setuptools                        57.4.0
shellingham                       1.4.0
six                               1.16.0
tomlkit                           0.7.2
urllib3                           1.26.6
virtualenv                        20.7.2
webencodings                      0.5.1
wheel                             0.37.0
Removing intermediate container 411ab5de5349
 ---> c7a7086f9df7
Step 7/10 : RUN pip show poetry
 ---> Running in 0bfc516977af
Name: poetry
Version: 1.1.8
Summary: Python dependency management and packaging made easy.
Home-page: https://python-poetry.org/
Author: Sébastien Eustace
Author-email: sebastien@eustace.io
License: MIT
Location: /usr/local/lib/python3.9/site-packages
Requires: pexpect, keyring, virtualenv, requests-toolbelt, cachecontrol, tomlkit, clikit, cleo, packaging, requests, shellingham, html5lib, poetry-core, cachy, crashtest, pkginfo
Required-by:
Removing intermediate container 0bfc516977af
 ---> 0d8168fe830b
Step 8/10 : RUN poetry config virtualenvs.create false
 ---> Running in b77a21f9d576
Removing intermediate container b77a21f9d576
 ---> ee60c27b9134
Step 9/10 : RUN poetry install --no-dev
 ---> Running in 715154b35a60
Skipping virtualenv creation, as specified in config file.
Installing dependencies from lock file

Package operations: 0 installs, 0 updates, 1 removal

  • Removing platformdirs (2.3.0)
Removing intermediate container 715154b35a60
 ---> ae91594cda42
Step 10/10 : RUN poetry install -vvv
 ---> Running in 6d1bea55734f
Traceback (most recent call last):
  File "/usr/local/bin/poetry", line 5, in <module>
    from poetry.console import main
  File "/usr/local/lib/python3.9/site-packages/poetry/console/__init__.py", line 1, in <module>
    from .application import Application
  File "/usr/local/lib/python3.9/site-packages/poetry/console/application.py", line 7, in <module>
    from .commands.about import AboutCommand
  File "/usr/local/lib/python3.9/site-packages/poetry/console/commands/__init__.py", line 4, in <module>
    from .check import CheckCommand
  File "/usr/local/lib/python3.9/site-packages/poetry/console/commands/check.py", line 2, in <module>
    from poetry.factory import Factory
  File "/usr/local/lib/python3.9/site-packages/poetry/factory.py", line 18, in <module>
    from .repositories.pypi_repository import PyPiRepository
  File "/usr/local/lib/python3.9/site-packages/poetry/repositories/pypi_repository.py", line 33, in <module>
    from ..inspection.info import PackageInfo
  File "/usr/local/lib/python3.9/site-packages/poetry/inspection/info.py", line 25, in <module>
    from poetry.utils.env import EnvCommandError
  File "/usr/local/lib/python3.9/site-packages/poetry/utils/env.py", line 23, in <module>
    import virtualenv
  File "/usr/local/lib/python3.9/site-packages/virtualenv/__init__.py", line 3, in <module>
    from .run import cli_run, session_via_cli
  File "/usr/local/lib/python3.9/site-packages/virtualenv/run/__init__.py", line 7, in <module>
    from ..app_data import make_app_data
  File "/usr/local/lib/python3.9/site-packages/virtualenv/app_data/__init__.py", line 9, in <module>
    from platformdirs import user_data_dir
ModuleNotFoundError: No module named 'platformdirs'
The command '/bin/sh -c poetry install -vvv' returned a non-zero code: 1
```

