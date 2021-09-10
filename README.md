Building the docker image fails:

```
$ docker build -t test .
Sending build context to Docker daemon  453.3MB
Step 1/12 : FROM python:3.9.6-buster AS base
 ---> c26b8ed5168c
Step 2/12 : RUN apt-get update &&     apt-get install -yqq --no-install-recommends         netcat         openssh-server         sshpass
 ---> Using cache
 ---> 0423b1c1f3fa
Step 3/12 : WORKDIR /opt/app
 ---> Using cache
 ---> 047c02f81e37
Step 4/12 : COPY pyproject.toml .
 ---> Using cache
 ---> f01afcd0cf35
Step 5/12 : COPY poetry.lock .
 ---> d843c66b332c
Step 6/12 : RUN pip install poetry
 ---> Running in 4c9fa7b86000
Collecting poetry
  Downloading poetry-1.1.8-py2.py3-none-any.whl (173 kB)
Collecting virtualenv<21.0.0,>=20.0.26
  Downloading virtualenv-20.7.2-py2.py3-none-any.whl (5.3 MB)
Collecting packaging<21.0,>=20.4
  Downloading packaging-20.9-py2.py3-none-any.whl (40 kB)
Collecting keyring<22.0.0,>=21.2.0
  Downloading keyring-21.8.0-py3-none-any.whl (32 kB)
Collecting clikit<0.7.0,>=0.6.2
  Downloading clikit-0.6.2-py2.py3-none-any.whl (91 kB)
Collecting crashtest<0.4.0,>=0.3.0
  Downloading crashtest-0.3.1-py3-none-any.whl (7.0 kB)
Collecting cachy<0.4.0,>=0.3.0
  Downloading cachy-0.3.0-py2.py3-none-any.whl (20 kB)
Collecting cleo<0.9.0,>=0.8.1
  Downloading cleo-0.8.1-py2.py3-none-any.whl (21 kB)
Collecting poetry-core<1.1.0,>=1.0.4
  Downloading poetry_core-1.0.4-py2.py3-none-any.whl (420 kB)
Collecting requests<3.0,>=2.18
  Downloading requests-2.26.0-py2.py3-none-any.whl (62 kB)
Collecting cachecontrol[filecache]<0.13.0,>=0.12.4
  Downloading CacheControl-0.12.6-py2.py3-none-any.whl (19 kB)
Collecting pexpect<5.0.0,>=4.7.0
  Downloading pexpect-4.8.0-py2.py3-none-any.whl (59 kB)
Collecting pkginfo<2.0,>=1.4
  Downloading pkginfo-1.7.1-py2.py3-none-any.whl (25 kB)
Collecting html5lib<2.0,>=1.0
  Downloading html5lib-1.1-py2.py3-none-any.whl (112 kB)
Collecting shellingham<2.0,>=1.1
  Downloading shellingham-1.4.0-py2.py3-none-any.whl (9.4 kB)
Collecting tomlkit<1.0.0,>=0.7.0
  Downloading tomlkit-0.7.2-py2.py3-none-any.whl (32 kB)
Collecting requests-toolbelt<0.10.0,>=0.9.1
  Downloading requests_toolbelt-0.9.1-py2.py3-none-any.whl (54 kB)
Collecting msgpack>=0.5.2
  Downloading msgpack-1.0.2-cp39-cp39-manylinux1_x86_64.whl (294 kB)
Collecting lockfile>=0.9
  Downloading lockfile-0.12.2-py2.py3-none-any.whl (13 kB)
Collecting pylev<2.0,>=1.3
  Downloading pylev-1.4.0-py2.py3-none-any.whl (6.1 kB)
Collecting pastel<0.3.0,>=0.2.0
  Downloading pastel-0.2.1-py2.py3-none-any.whl (6.0 kB)
Collecting six>=1.9
  Downloading six-1.16.0-py2.py3-none-any.whl (11 kB)
Collecting webencodings
  Downloading webencodings-0.5.1-py2.py3-none-any.whl (11 kB)
Collecting jeepney>=0.4.2
  Downloading jeepney-0.7.1-py3-none-any.whl (54 kB)
Collecting SecretStorage>=3.2
  Downloading SecretStorage-3.3.1-py3-none-any.whl (15 kB)
Collecting pyparsing>=2.0.2
  Downloading pyparsing-2.4.7-py2.py3-none-any.whl (67 kB)
Collecting ptyprocess>=0.5
  Downloading ptyprocess-0.7.0-py2.py3-none-any.whl (13 kB)
Collecting idna<4,>=2.5
  Downloading idna-3.2-py3-none-any.whl (59 kB)
Collecting urllib3<1.27,>=1.21.1
  Downloading urllib3-1.26.6-py2.py3-none-any.whl (138 kB)
Collecting certifi>=2017.4.17
  Downloading certifi-2021.5.30-py2.py3-none-any.whl (145 kB)
Collecting charset-normalizer~=2.0.0
  Downloading charset_normalizer-2.0.4-py3-none-any.whl (36 kB)
Collecting cryptography>=2.0
  Downloading cryptography-3.4.8-cp36-abi3-manylinux_2_24_x86_64.whl (3.0 MB)
Collecting cffi>=1.12
  Downloading cffi-1.14.6-cp39-cp39-manylinux1_x86_64.whl (405 kB)
Collecting pycparser
  Downloading pycparser-2.20-py2.py3-none-any.whl (112 kB)
Collecting distlib<1,>=0.3.1
  Downloading distlib-0.3.2-py2.py3-none-any.whl (338 kB)
Collecting backports.entry-points-selectable>=1.0.4
  Downloading backports.entry_points_selectable-1.1.0-py2.py3-none-any.whl (6.2 kB)
Collecting platformdirs<3,>=2
  Downloading platformdirs-2.3.0-py3-none-any.whl (13 kB)
Collecting filelock<4,>=3.0.0
  Downloading filelock-3.0.12-py3-none-any.whl (7.6 kB)
Installing collected packages: pycparser, urllib3, idna, charset-normalizer, cffi, certifi, requests, pylev, pastel, msgpack, jeepney, cryptography, crashtest, webencodings, six, SecretStorage, pyparsing, ptyprocess, platformdirs, lockfile, filelock, distlib, clikit, cachecontrol, backports.entry-points-selectable, virtualenv, tomlkit, shellingham, requests-toolbelt, poetry-core, pkginfo, pexpect, packaging, keyring, html5lib, cleo, cachy, poetry
Successfully installed SecretStorage-3.3.1 backports.entry-points-selectable-1.1.0 cachecontrol-0.12.6 cachy-0.3.0 certifi-2021.5.30 cffi-1.14.6 charset-normalizer-2.0.4 cleo-0.8.1 clikit-0.6.2 crashtest-0.3.1 cryptography-3.4.8 distlib-0.3.2 filelock-3.0.12 html5lib-1.1 idna-3.2 jeepney-0.7.1 keyring-21.8.0 lockfile-0.12.2 msgpack-1.0.2 packaging-20.9 pastel-0.2.1 pexpect-4.8.0 pkginfo-1.7.1 platformdirs-2.3.0 poetry-1.1.8 poetry-core-1.0.4 ptyprocess-0.7.0 pycparser-2.20 pylev-1.4.0 pyparsing-2.4.7 requests-2.26.0 requests-toolbelt-0.9.1 shellingham-1.4.0 six-1.16.0 tomlkit-0.7.2 urllib3-1.26.6 virtualenv-20.7.2 webencodings-0.5.1
WARNING: Running pip as the 'root' user can result in broken permissions and conflicting behaviour with the system package manager. It is recommended to use a virtual environment instead: https://pip.pypa.io/warnings/venv
Removing intermediate container 4c9fa7b86000
 ---> 12bbf9211a3d
Step 7/12 : RUN pip show poetry
 ---> Running in 41e7464ea657
Name: poetry
Version: 1.1.8
Summary: Python dependency management and packaging made easy.
Home-page: https://python-poetry.org/
Author: Sébastien Eustace
Author-email: sebastien@eustace.io
License: MIT
Location: /usr/local/lib/python3.9/site-packages
Requires: shellingham, virtualenv, html5lib, cachecontrol, keyring, clikit, requests, pkginfo, pexpect, requests-toolbelt, tomlkit, poetry-core, packaging, cachy, crashtest, cleo
Required-by:
Removing intermediate container 41e7464ea657
 ---> da43b356f631
Step 8/12 : RUN poetry config virtualenvs.create false  # As we're inside a docker container, we want to install globally
 ---> Running in 6d5b8e232200
Removing intermediate container 6d5b8e232200
 ---> 4d8c752bad4f
Step 9/12 : RUN poetry install --no-dev
 ---> Running in 9b7eadd30125
Skipping virtualenv creation, as specified in config file.
Installing dependencies from lock file

Package operations: 61 installs, 1 update, 7 removals

  • Removing backports.entry-points-selectable (1.1.0)
  • Removing distlib (0.3.2)
  • Removing filelock (3.0.12)
  • Removing pexpect (4.8.0)
  • Removing platformdirs (2.3.0)
  • Removing ptyprocess (0.7.0)
  • Removing virtualenv (20.7.2)
  • Installing jmespath (0.10.0)
  • Installing python-dateutil (2.8.2)
  • Installing vine (5.0.0)
  • Installing wcwidth (0.2.5)
  • Installing amqp (5.0.6)
  • Installing bcrypt (3.2.0)
  • Installing botocore (1.21.39)
  • Installing click (8.0.1)
  • Installing greenlet (1.1.1)
  • Installing markupsafe (2.0.1)
  • Installing mypy-extensions (0.4.3)
  • Installing prompt-toolkit (3.0.20)
  • Installing pynacl (1.4.0)
  • Installing typing-extensions (3.10.0.2)
  • Installing toml (0.10.2)
  • Installing asgiref (3.4.1)
  • Installing attrs (21.2.0)
  • Installing billiard (3.6.4.0)
  • Installing click-didyoumean (0.0.3)
  • Installing h11 (0.12.0)
  • Installing click-repl (0.2.0)
  • Installing marshmallow (3.13.0)
  • Installing kombu (5.1.0)
  • Installing mako (1.1.5)
  • Installing mypy (0.910)
  • Installing paramiko (2.7.2)
  • Installing pydantic (1.8.2)
  • Installing protobuf (3.17.3)
  • Installing python-dotenv (0.19.0)
  • Installing pytz (2021.1)
  • Updating packaging (20.9 -> 21.0)
  • Installing redis (3.5.3)
  • Installing s3transfer (0.5.0)
  • Installing sqlalchemy (1.4.23)
  • Installing starlette (0.14.2)
  • Installing tenacity (8.0.1)
  • Installing aiofiles (0.7.0)
  • Installing alembic (1.7.1)
  • Installing boto3 (1.18.39)
  • Installing celery (5.0.2)
  • Installing chardet (4.0.0)
  • Installing datadog (0.42.0)
  • Installing ddtrace (0.53.0)
  • Installing decorator (5.0.9)
  • Installing environs (8.0.0)
  • Installing fastapi (0.68.1)
  • Installing iso3166 (1.0.1)
  • Installing jinja2 (3.0.1)
  • Installing jsondiff (1.3.0)
  • Installing lxml (4.6.3)
  • Installing markdown2 (2.4.1)
  • Installing mypy-boto3-s3 (1.18.39)
  • Installing mypy-boto3-sqs (1.18.39)
  • Installing pillow (8.3.2)
  • Installing ply (3.11)
  • Installing psycopg2 (2.9.1)
  • Installing pycountry (20.7.3)
  • Installing pysftp (0.2.9)
  • Installing python-multipart (0.0.5)
  • Installing sqlalchemy-stubs (0.4)
  • Installing starlette-context (0.3.3)
  • Installing uvicorn (0.15.0)
Removing intermediate container 9b7eadd30125
 ---> f68e5cbd6738
Step 10/12 : FROM base AS testrunner
 ---> f68e5cbd6738
Step 11/12 : COPY tests tests
 ---> 6668e2560f53
Step 12/12 : RUN poetry install
 ---> Running in 8b72a283aa3e
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
ModuleNotFoundError: No module named 'virtualenv'
The command '/bin/sh -c poetry install' returned a non-zero code: 1
```

