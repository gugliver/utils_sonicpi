#to have it changing faster
pitch_mul = 8


#default vars
set :nob_pitch, 1


# first nob to pitch
live_loop :nob_pitch do
    nob_pitch = sync "/midi:komplete_kontrol_a61:1/control_change"
    if(nob_pitch[0] == 14)
        set :nob_pitch, ((nob_pitch[1]).to_f/127) * pitch_mul
        if (get[:nob_pitch] == 0)
            set :nob_pitch, 1/127
        end
    end
end