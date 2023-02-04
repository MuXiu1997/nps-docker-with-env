#!/bin/sh
set -e

if [ "$SKIP_GEN_NPS_CONF" != "true" ]; then
  echo "Generating NPS config..."
  mkdir -p /conf
  goet -t /nps.conf.tmpl -o /conf/nps.conf
fi

exec "$@"
