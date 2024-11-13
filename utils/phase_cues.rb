
# FIXME control this with a var from song
half_phase_cue = 1

phase_cue = half_phase_cue * 2


# in phase cue
in_thread do
    loop do
        cue :in_phase
        sleep phase_cue
    end
end

# out of phase cue
in_thread do
    loop do
        sleep half_phase_cue
        cue :out_of_phase
        sleep half_phase_cue
    end
end

