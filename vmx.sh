#!/bin/bash
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

echo -e "${GREEN}Запускается проверка поддержки аппаратной виртуализации (VT-x/AMD-V)${NC}"
if cat /proc/cpuinfo 2>/dev/null | egrep -q "(vmx|smv)"; then
	echo -e "${GREEN}Аппаратная виртуализация поддерживается (VT-x/AMD-V)${NC}"
else
	echo -e "${GREEN}Аппаратная виртуализация не поддерживается системой или отключена. Включите и перезапустите систему${NC}"
fi
