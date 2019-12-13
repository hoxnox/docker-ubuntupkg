```
docker build -t ubuntupkg .
docker run --rm -it -v"$(pwd)/..:/src:ro" -v"$(pwd)/remote_build:/build" -v"$(VENDOR_DIR):/mnt:ro" ubuntupkg /bin/bash
```
