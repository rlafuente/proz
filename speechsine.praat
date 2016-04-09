
form Command line calls
    text filename cavaco.wav
endform

Read from file... 'filename$'
selectObject: 1
To Pitch: 0.0, 75, 600
selectObject: 2
To Sound (sine): 44100.0, "at nearest zero crossings"

selectObject: 1
To Intensity: 100.0, 0.0
selectObject: 4
Down to IntensityTier
selectObject: 5
plusObject: 3
Multiply... yes

selectObject: 6
Save as WAV file... out.wav

