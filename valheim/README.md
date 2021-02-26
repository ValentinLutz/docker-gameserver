# Valheim Server

## Usage

### Run with config and game files from host

```shell
docker run \
    -v $(pwd)/config:/home/steam/.config/unity3d/IronGate/Valheim \
    -v $(pwd)/game:/home/steam/valheim-dedicated \
    -p 2456-2458:2456-2458/udp
    vlutz/valheim-server
```

### Run with config files from host and game files from volume

```shell
docker run \
    -v $(pwd)/config:/home/steam/.config/unity3d/IronGate/Valheim \
    -v valheim-files:/home/steam/valheim-dedicated \
    -p 2456-2458:2456-2458/udp \
    vlutz/valheim-server
```

### Run with docker-compose

```yaml
version: "3.9"
services:
  valheim-server:
    image: vlutz/valheim-server
    ports:
      - "2456-2458:2456-2458/udp"
    volumes:
      - ./config:/home/steam/.config/unity3d/IronGate/Valheim
      - valheim-files:/home/steam/valheim-dedicated
```

## Configuration Environment Variables

| Name            | Description                                                                | Default Value  |
| --------------- | -------------------------------------------------------------------------- | -------------- |
| SERVER_NAME     | Name of the server that will show inside the server browser                | NewWorldServer |
| SERVER_PORT     | UDP start port that the server will listen to inside the container         | 2456           |
| SERVER_WORLD    | Name of the world without file extensions                                  | NewWorld       |
| SERVER_PASSWORD | Password for connecting to the server - !must be minat least 5 characters! | 1234567        |
