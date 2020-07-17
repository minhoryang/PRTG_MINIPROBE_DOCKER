# PRTG_MINIPROBE_DOCKER

```bash
docker build -t my-prtg-miniprobe --build-arg MINIPROBE_NAME=miniprobe --build-arg MINIPROBE_IP=127.0.0.1 --build-arg MINIPROBE_ACCESS_KEY=0xdeadbeef .
docker run -d my-prtg-miniprobe
```
