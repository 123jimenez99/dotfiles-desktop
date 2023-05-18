#!/bin/bash
echo "options nvidia NVreg_PreserveVideoMemoryAllocations=1 NVreg_TemporaryFilePath=/path/to/tmp-nvidia" > /etc/modprobe.d/nvidia-power-management.conf
