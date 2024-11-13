## copy-paste this part in each song
set :path_to_utils, "/Users/gugliver/sonicpi/utils/"
run_file get(:path_to_utils) + "nob_control.rb"
run_file get(:path_to_utils) + "phase_cues.rb"


# in phase thread
in_thread do
    loop do
        sync :in_phase
        sample :ambi_choir, pitch: get[:nob_pitch]
    end
end

# out of phase thread
in_thread do
    loop do
        sync :out_of_phase
        play :G2
    end
end