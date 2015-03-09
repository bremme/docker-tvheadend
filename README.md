
# Running container

```bash
$ sudo docker run \
    --device=/dev/dvb/adapter0/frontend0:/dev/dvb/adapter0/frontend0 \
    --device=/dev/dvb/adapter0/demux0:/dev/dvb/adapter0/demux0 \
    --device=/dev/dvb/adapter0/net0:/dev/dvb/adapter0/net0 \
    --device=/dev/dvb/adapter0/dvr0:/dev/dvb/adapter0/dvr0 \
    --volumes-from=data-tvheadend \
    --volume=/etc/localtime:/etc/localtime:ro
    -d bremme/tvheadend
```