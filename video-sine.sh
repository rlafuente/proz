#!/bin/bash

# extract audio from the video file
mpv $1 -o $1.wav --no-video

# apply sine effect
praat --run speechsine.praat $1.wav

# merge the audio back with the video
avconv -i $1 -an -sn -vcodec copy -y mute-$1
# FIXME: this re-encodes, would be nice not to whenever possible
avconv -i mute-$1 -i out.wav -strict -2 sine-$1

# remove temp files
rm -f $1.wav
rm -f out.wav
rm mute-$1
