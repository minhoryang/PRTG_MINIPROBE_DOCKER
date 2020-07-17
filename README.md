# PRTG_MINIPROBE_DOCKER

```bash
docker build -t my-prtg-miniprobe --build-arg MINIPROBE_NAME=miniprobe --build-arg MINIPROBE_IP=127.0.0.1 --build-arg MINIPROBE_ACCESS_KEY=0xdeadbeef .
docker run -d my-prtg-miniprobe
```

## Check these also:

- https://www.paessler.com/manuals/prtg/mini_probe_api
- https://github.com/PRTG/PythonMiniProbe
- https://kb.paessler.com/en/topic/61215-where-can-i-find-prtg-mini-probes-which-are-ready-to-use
