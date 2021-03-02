FROM vlutz/steamcmd:ubuntu-18.04

ENV STEAMAPP_ID 896660
ENV STEAMAPP valheim
ENV STEAMAPP_DIR /home/${USER}/${STEAMAPP}-dedicated
ENV CONFIG_DIR /home/${USER}/.config/unity3d/IronGate/Valheim

ENV SERVER_NAME=NewWorldServer \
    SERVER_PORT=2456 \
    SERVER_WORLD=NewWorld \
    SERVER_PASSWORD=1234567 \
    SERVER_PUBLIC=0

COPY ./util/start_valheim_server.sh /home/${USER}
COPY ./util/entrypoint.sh /home/${USER}

WORKDIR /home/${USER}
ENTRYPOINT ["bash", "entrypoint.sh"]

VOLUME ${STEAMAPP_DIR} \
    ${CONFIG_DIR}
EXPOSE 2456-2458/udp
