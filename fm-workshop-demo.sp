# FM Workshop Demo 

# play a note


# play a chord


# Gray v Hudson: 8 note 


# ===========================================
# demo code by Chen
# play a midi note
play 60
play :c

play 61
play :cs

# play a chord (do not forget to sleep)
play :c
play :e
play :g

# arpeggio
play :c
sleep 1
play :e
sleep 1
play :g
sleep 1 


play chord(:c4,:major)

play_chord [:c4, :e4, :g4]

play_pattern chord(:c, :major)

# loop a loop: metronome
loop do
  use_bpm 60
  sample :perc_snap
  sleep 1
end


# sampling
play sample :loop_amen_full
paly sample :loop_amen_full, rate: 2
paly sample :loop_amen_full, rate: 0.5
paly sample :loop_amen_full, rate: -1


# 8-note ostinatos in Gray v Hudson (2015)
# use_bpm 120
play_pattern [:c5,:c5,:c5,:c5, :b4,:b4,:b4,:a4]    # joyful noise

# use_bpm 120
play_pattern [:c5, :c5, :c5, :c5,  :b4, :b4, :a4, :e4] # dark horse

# increase the tempo
play_pattern_timed [:c5, :c5, :c5, :c5,  :b4, :b4, :a4, :e4], [0.25] # dark horse

play_pattern_timed [:c5, :c5, :c5, :c5,  :b4, :b4, :a4, :e4], [0.5] # dark horse


# tetris 
# code from https://projects.raspberrypi.org/en/projects/tetris-theme
use_bpm 120
use_synth :dpulse
5.times do
  play_pattern_timed [:E, :B3, :C, :D, :C, :B3], [1, 0.5, 0.5]
  play_pattern_timed [:A3, :A3, :C, :E, :D, :C], [1, 0.5, 0.5]
  play_pattern_timed [:B3, :C, :D, :E], [1.5, 0.5, 1, 1]
  play_pattern_timed [:C, :A3, :A3], [1, 1, 2]
  play_pattern_timed [:r, :D, :F, :A, :G, :F], [0.5, 1, 0.5, 1, 0.5, 0.5]
  play_pattern_timed [:E, :C, :E, :D, :C], [1.5, 0.5, 1, 0.5, 0.5]
  play_pattern_timed [:B3, :B3, :C, :D, :E], [1, 0.5, 0.5, 1, 1]
  play_pattern_timed [:C, :A3, :A3], [1, 1, 2]
  # chen: increase tempo by 40 bpm each time
  use_bpm current_bpm + 40
end
