#!/bin/bash
 
# source BMC credentials
. $(dirname "${BASH_SOURCE[0]}")/bmc_credentials.conf
 
if [ $# -eq 1 ]; then
    BMC_NODES="${1}"
else
    echo "Usage: $0 \"<BMC_NODES>\""
   #echo "e.g $0 \"10.0.0.1 \$(echo 10.0.2.{10..20})\""
    echo "e.g $0 \"10.101.1.31 \$(echo 10.101.1.{31..111})\""
    exit
fi
 
printf "%-40s %-10s %-10s\n" "Server" "Current" "AVG"
for BMC_NODE in ${BMC_NODES}; do
    POWER_CONSUMPTION=$(curl --connect-timeout 3 -s https://${BMC_NODE}/redfish/v1/Chassis/1/Power/ -k -u ${BMC_USER}:${BMC_PASS} | jq -r ".PowerControl[].PowerConsumedWatts")
    [ -z ${POWER_CONSUMPTION} ] && POWER_CONSUMPTION=$(ipmitool -I lanplus -H ${BMC_NODE} -U ${BMC_USER} -P ${BMC_PASS} dcmi power reading | awk '/Instantaneous/ {print $(NF-1)}')
 
    POWER_CONSUMPTION_AVG=$(curl --connect-timeout 3 -s https://${BMC_NODE}/redfish/v1/Chassis/1/Power/ -k -u ${BMC_USER}:${BMC_PASS} | jq -r ".PowerControl[].PowerMetrics.AverageConsumedWatts")
    [ -z ${POWER_CONSUMPTION_AVG} ] && POWER_CONSUMPTION_AVG=$(ipmitool -I lanplus -H ${BMC_NODE} -U ${BMC_USER} -P ${BMC_PASS} dcmi power reading | awk '/Average/ {print $(NF-1)}')
 
    printf "%-40s %-10s %-10s\n" "${BMC_NODE}" "${POWER_CONSUMPTION}" "${POWER_CONSUMPTION_AVG}"
done
