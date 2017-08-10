#/bin/bash

TMPFILE=$(mktemp -t tmp.cloudinit.XXXXXXXXXX) || exit 1
trap "rm -f ${TMPFILE}" EXIT PIPE

cat >   "${TMPFILE}" <<'CLOUD-INIT-DELIMETER'