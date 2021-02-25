#!/bin/bash

steamcmd +login anonymous \
	+force_install_dir "${STEAMAPPDIR}" \
	+app_update "${STEAMAPPID}" \
	+quit

bash "${STEAMAPPDIR}/start_server_custom.sh"