use_bpm 100
use_synth :piano
my_notes = [:g5, :f5, :e5]
x=0

define :chorus do
  play :a4, sustain:1
  play :c5, sustain:1
  sleep 0.15
  play :g5
end

define :first_chorus do |note_a,note_b,note_c,note_d,note_e|
  play note_a, sustain:4
  play note_b, sustain:4
  play note_c, sustain:4
  play note_d, sustain:4
  sleep 0.15
  play note_e
end

first_chorus :a3, :b3, :c4, :d4, :d4
sleep 1

chorus
sleep 1.5

x=0
3.times do
  play my_notes [x]
  sleep 0.3
  x = x + 1
end







