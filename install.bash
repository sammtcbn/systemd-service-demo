#!/bin/bash
SERVICE_NAME=mydemo.service
INS_PATH=/usr/local/sammtcbn/mydemo

if [ "$EUID" -ne 0 ]; then
    echo "Please run as root"
    exit
fi

mkdir -p ${INS_PATH} || exit 1
cp -a -f mydemo.sh ${INS_PATH} || exit 1
chmod +x ${INS_PATH}/mydemo.sh || exit 1
cp -a -f uninstall.bash ${INS_PATH} || exit 1
chmod +x ${INS_PATH}/uninstall.bash || exit 1
cp -a -f ${SERVICE_NAME} /etc/systemd/system || exit 1

systemctl daemon-reload || exit 1
chmod 664 /etc/systemd/system/${SERVICE_NAME} || exit 1
systemctl enable ${SERVICE_NAME} || exit 1
systemctl start ${SERVICE_NAME} || exit 1
