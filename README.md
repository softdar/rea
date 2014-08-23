# REA: Recursos Educativos Abiertos

Proyecto para la apertura de recursos educativos de la Universidad Nacional de La Matanza.

## Estado del proyecto

* [![Build Status](https://travis-ci.org/delucas/rea.png?branch=master)](https://travis-ci.org/delucas/rea) - [master](https://github.com/delucas/rea)
* [![Build Status](https://travis-ci.org/delucas/rea.png?branch=development)](https://travis-ci.org/delucas/rea) - [development](https://github.com/delucas/rea/tree/development)

## Setup inicial

    $ sudo -u postgres createuser openclassroom
    $ sudo -u postgres psql --command "ALTER USER openclassroom WITH PASSWORD 'your password';"
    $ sudo -u postgres createdb --owner openclassroom rea_development

## Cómo colaborar

Luego de hacer un **fork**,

    git clone git@github.com:usuario/rea.git

Una vez introducido y pusheado el cambio, hacer un **pull request**.

## Trello público

Para la administración de tareas utilizamos [trello.com](https://trello.com/board/rea/5192dc75b9975ea82400107d).
