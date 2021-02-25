#!/bin/bash

steamcmd +login anonymous \
    +force_install_dir "${STEAMAPP_DIR}" \
    +app_update "${STEAMAPP_ID}" \
    +quit

mv ${HOME_DIR}/start_server_custom.sh ${STEAMAPP_DIR}/start_server_custom.sh

cd ${STEAMAPP_DIR}
bash ./start_server_custom.sh