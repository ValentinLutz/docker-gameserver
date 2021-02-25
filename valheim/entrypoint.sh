#!/bin/bash

steamcmd +login anonymous \
	+force_install_dir ${STEAMAPP_DIR} \
	+app_update ${STEAMAPP_ID} \
	+quit

${STEAMAPPDIR}/start_server_custom.sh