proz
====

A prosody extractor for videos. Prosody is the note or frequency at which
someone speaks. This script filters the audio to only keep the "musical" part
of what's being said, leaving out the actual words.

It goes through some steps:

* extract the audio
* process the audio to only keep the frequencies
* merge the new audio back and create a new video

## Dependencies

* `praat`
* `mpv`
* `libav-tools`

## Usage

First, move the video you want to filter into the script's directory -- this is
clunky but necessary at the time). Then, just run:

    ./video-sine.sh video.mp4

## TODO

* Try using Amplitude instead of Intensity
* The script should be able to work on files outside its dir
* Add command line arguments and options
