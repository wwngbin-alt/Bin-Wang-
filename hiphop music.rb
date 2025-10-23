# I learned how to use my own samples from the tutorial!
bowedGuzheng  = "/Users/alex/Desktop/samples_chinese-beat-190047.wav"

#sample :perc_snap
#sample :perc_snap2
#sample :vinyl_rewind
#sample :tabla_tas1
#sample :tabla_tas2
#sample :tabla_tas3

#16-beat rhythm
a= [1,3,2,0,
    1,0,2,0,
    1,3,2,0,
    1,0,2,0,]

b= [2,0,1,0,
    2,0,0,0,
    2,0,0,0,
    2,0,1,0,]

# I want a slow and chill song, so I set the beats per minute (BPM) to 55.
use_bpm 55

# This is a counter for my drum pattern later. I start it at 0.
set :bar_count, 0

"/Users/alex/Desktop/samples_chinese-beat-190047.wav"
16.times do |i|
  "/Users/alex/Desktop/samples_chinese-beat-190047.wav" if a[i]==3
  sleep 0.25
end

#Let this audio play part a, number 1.
sample :perc_snap2 and sample :perc_snap do
  16.times do |i|
    sample :perc_snap if a[i]==1
    sleep 0.25
  end
end
#Let this audio play part a, number 2.
sample :tabla_tas2 do
  16.times do |i|
    sample :tabla_tas2 if a[i]==2
    sleep 0.5
  end
end
#Let this audio play part b, number 1.
sample :drum_heavy_kick
16.times do |i|
  sample :drum_heavy_kick if b[i]==1
  sleep 0.5
end
#Let this audio play part b, number 2.
sample :vinyl_rewind
16.times do |i|
  sample :vinyl_rewind if b[i]==1
  sleep 0.25
end
# This means "do the following 4 times".
4.times do
  # A simple kick and cymbal beat.
  sample :bd_haus, amp: 0.9
  sleep 0.5
  sample :drum_cymbal_closed, amp: 0.6
  sleep 0.5
end
end
