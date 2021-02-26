FROM vlutz/steamcmd:ubuntu-18.04

ENV STEAMAPP_ID 896660
ENV STEAMAPP valheim
ENV STEAMAPP_DIR ${HOME_DIR}/${STEAMAPP}-dedicated
ENV CONFIG_DIR ${HOME_DIR}/.config/unity3d/IronGate/Valheim

ENV SERVER_NAME=NewWorldServer \
    SERVER_PORT=2456 \
    SERVER_WORLD=NewWorld \
    SERVER_PASSWORD=1234567

COPY ./start_server_custom.sh ${HOME_DIR}
COPY ./entrypoint.sh ${HOME_DIR}

WORKDIR ${HOME_DIR}
ENTRYPOINT ["bash", "entrypoint.sh"]

VOLUME ${STEAMAPP_DIR} \
    ${CONFIG_DIR}
EXPOSE 2456-2458/udp
