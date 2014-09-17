#!/bin/bash

rm master/*.tac*
rm slave/*.tac*
buildbot create-master master
buildbot start master
buildslave create-slave slave localhost:9989 example-slave pass
buildslave start slave