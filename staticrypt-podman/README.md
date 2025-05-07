staticrypt
---

Im using Taskfiles here to remember how to build the container.

I added the following scripts to make running this easier. These are in the scripts/ directory.
- `generate-passwords.sh` - does what it says; can pass env vars to customize passwords
- `entrypoint.sh`         - passes env vars correctly
- `build-image.sh`        - small wrapper to build the container
- `encrypt-file.sh`       - runs locally to manage file transfers between container and local device
