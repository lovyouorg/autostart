#!/bin/bash
startpnpm() {
    cd /data/elk/view-report-debug;
    nohup /usr/sbin/pnpm run dev &
}
if [ `ps -ef|grep pnpm|grep -v grep|wc -l` -eq 0 ];then
 startpnpm
 echo `date +%Y%m%d%H%M%S` >>/data/elk/view-report-debug/auto.log
fi
