CLOUD-INIT-DELIMETER

sudo    /usr/bin/coreos-cloudinit   ${1}    -from-file  "${TMPFILE}"    && {
    if [[ -n "$2" ]]; then
        export  BACKUPDIR=`dirname "${2}"`
        sudo    mkdir   -p  "${BACKUPDIR}"
        sudo    cp      -f  "${TMPFILE}"    "${2}"
    fi
}
