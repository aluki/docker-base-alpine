#! /usr/bin/env sh

if [ ! -e "${CONTAINER_RUN}" ]
then
    echo "${CONTAINER_RUN} does not exist"
    exit 1
elif [ ! -x "${CONTAINER_RUN}" ] 
then
    echo "${CONTAINER_RUN} is not executable"
    exit 1
fi 

exec ${CONTAINER_RUN} "$@"
