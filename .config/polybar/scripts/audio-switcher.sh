#!/bin/bash

hdmiName="alsa_output.pci-0000_31_00.1.hdmi-stereo-extra1"

headsetName="alsa_output.usb-SteelSeries_SteelSeries_Arctis_7-00.analog-stereo"

newSink=""

if [ "$1" = "hdmi" ]; then
	echo "Setting newSink to hdmi"
	newSink="$hdmiName"
	pactl set-card-profile alsa_card.pci-0000_31_00.1 output:hdmi-stereo-extra1
	
else
	echo "Setting newSink to headset"
	newSink="$headsetName"
fi

echo "newSink is set to: $newSink"

echo "Setting Default source to newSink"
pactl set-default-sink $newSink

echo "Moving audio to newSink"

pactl list short sink-inputs|while read stream; do
    streamId=$(echo $stream|cut '-d ' -f1)
    echo "moving stream $streamId"
    pactl move-sink-input "$streamId" "$newSink"
done
