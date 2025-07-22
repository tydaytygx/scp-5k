#!/bin/bash
GAME_DIR="/app/data"

echo "INSTALL & UPDATE------------------------------"
#/app/steamcmd/./steamcmd.sh +force_install_dir ${GAME_DIR} +login anonymous +app_update 884110 +quit

echo "Start---------"
/app/data/LinuxServer/PandemicServer.sh
echo "END-----------"
