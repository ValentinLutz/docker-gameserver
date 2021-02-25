FROM vlutz/steamcmd:ubuntu-18.04

ENV STEAMAPPID 896660
ENV STEAMAPP valheim
ENV STEAMAPPDIR ${HOME_DIR}/${STEAMAPP}-dedicated

RUN steamcmd +login anonymous \
    +force_install_dir "${STEAMAPPDIR}" \
    +app_update "${STEAMAPPID}" \
    +quit

ENV SERVER_NAME=NewWorldServer \
    SERVER_PORT=2456 \
    SERVER_WORLD=NewWorld \
    SERVER_PASSWORD=1234567

COPY ./start_server_custom.sh ${STEAMAPPDIR}

WORKDIR ${STEAMAPPDIR}
ENTRYPOINT ["bash", "start_server_custom.sh"]

EXPOSE 2456/udp \
    2457/udp \
    2458/udp
