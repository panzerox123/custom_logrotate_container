# `logrotate` Container
A custom alpine container to run `logrotate` with support for executing `docker` cli commands.

## Building
    ```
    podman build -t <repository>:<tagname> .
    ```

## Usage
    ```
    podman run --rm -it -v /run/podman/podman.sock:/var/run/docker.sock -v <logs_folder>:/logs/ -v <logrotate_config>:/config/ custom_logrotate:latest
    ```