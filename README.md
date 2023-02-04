# Nps Docker With Env

[ehang-io/nps](https://github.com/ehang-io/nps) docker image configured via environment variables

## Usage Example

default config file: [nps.conf](https://github.com/ehang-io/nps/blob/master/conf/nps.conf)

---
env `NPS_HTTP_PROXY_IP='0.0.0.0'` -> set `http_proxy_ip` to `0.0.0.0`
```ini
http_proxy_ip=0.0.0.0
```
<br>

---
env `COMMENT_NPS_HTTPS_DEFAULT_CERT_FILE='true'` -> comment `https_default_cert_file` line
```ini
#https_default_cert_file=conf/server.pem
```
<br>

---
env `COMMENT_NPS_AUTH_KEY=''` -> remove comments from `auth_key` line
```ini
auth_key=test
```
<br>

---
env `SKIP_GEN_NPS_CONF='true'` -> skip generate config file
<br>

## License

[MIT](https://github.com/MuXiu1997/nps-docker-with-env/blob/main/LICENSE)
