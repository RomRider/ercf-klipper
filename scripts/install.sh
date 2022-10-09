#!/usr/bin/env sh

klipper_file="/home/pi/klipper/klippy/extras/ercf.py"
ercf_file="/home/pi/klipper_config/ercf_klipper/Extra module/ercf.py"

link_file() {
    ln -s "${ercf_file}" "${klipper_file}"
}

if [ ! -f "${klipper_file}" ]; then
    link_file;
elif [ ! -h "${klipper_file}" ]; then
    # Regular file
    mv "${klipper_file}" "${klipper_file}.bak";
    echo "File ${klipper_file} backed up as ${klipper_file}.bak"
    link_file;
else
    rm "${klipper_file}";
    link_file;
fi

echo "ercf.py extra module intalled or updated."

