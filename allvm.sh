#!/bin/bash

ACTION=$1

if [[ "$ACTION" != "start" && "$ACTION" != "stop" ]]; then
    echo "Usage: $0 start|stop"
    exit 1
fi

for vm in $(sudo virsh -c qemu:///system list --all --name | grep -v '^$'); do
    if [[ "$ACTION" == "stop" ]]; then
        sudo virsh -c qemu:///system shutdown "$vm"
    else
        sudo virsh -c qemu:///system start "$vm"
    fi
done

