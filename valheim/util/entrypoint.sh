#!/bin/bash

steamcmd +login anonymous \
    +force_install_dir "${STEAMAPP_DIR}" \
    +app_update "${STEAMAPP_ID}" \
    +quit

cp /home/${USER}/start_valheim_server.sh ${STEAMAPP_DIR}

cd ${STEAMAPP_DIR}
bash ./start_valheim_server.sh