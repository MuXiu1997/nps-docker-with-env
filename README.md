# Nps Docker With Env

[ehang-io/nps](https://github.com/ehang-io/nps) docker image configured via environment variables

## Usage Example

default config file: [nps.conf](https://github.com/ehang-io/nps/blob/master/conf/nps.conf)

---

- `NPS_XXXX`

  env `NPS_HTTP_PROXY_IP='127.0.0.1'` -> set `http_proxy_ip` to `127.0.0.1`
    ```diff
    -http_proxy_ip=0.0.0.0
    +http_proxy_ip=127.0.0.1
    ```

---

- `COMMENT_NPS_XXXX='true'`

  env `COMMENT_NPS_HTTPS_DEFAULT_CERT_FILE='true'` -> comment `https_default_cert_file` line

    ```diff
    -https_default_cert_file=conf/server.pem
    +#https_default_cert_file=conf/server.pem
    ```

---

- `COMMENT_NPS_XXXX=''`

  env `COMMENT_NPS_AUTH_KEY=''` -> remove comments from `auth_key` line

    ```diff
    -#auth_key=test
    +auth_key=test
    ```

---
env `SKIP_GEN_NPS_CONF='true'` -> skip generate config file

## License

[MIT](https://github.com/MuXiu1997/nps-docker-with-env/blob/main/LICENSE)
