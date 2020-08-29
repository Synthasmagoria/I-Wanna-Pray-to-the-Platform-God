///@desc Set room music

var sound = -1;

switch (room) {
	case rm_Outside_Forest:
		sound = mus_Ambience_Forest;
		break;
		
	case rm_Outside_MountainBottom:
	case rm_Outside_MountainCave:
	case rm_Credits_Below:
	case rm_Results:
		sound = mus_Ambience_Cavern;
		break;
		
	case rm_Outside_MountainTop:
		sound = mus_Ambience_Plains;
		break;
		
	case rm_Temple_Hidden:
		sound = mus_Hidden;
		break;
	
	case rm_Temple_0:
	case rm_Temple_1:
	case rm_Temple_2:
	case rm_Temple_3:
	case rm_Temple_4:
	case rm_Temple_5:
	case rm_Temple_Puzzle:
	case rm_Temple_Altar:
	case rm_Temple_CherryCorridor:
		sound = mus_Temple;
		break;
		
	case rm_Temple_CrimsonCorridor:
		sound = mus_CrimsonCorridor;
		break;
	
	case rm_Temple_Secret:
		sound = mus_Nightmare;
		break;
	
	case rm_Temple_2_Pitfall:
	case rm_Temple_CherryCorridor_2:
	case rm_Cave_Lift_2:
		sound = mus_CherryPit;
		break;
		
	case rm_Cave_1:
	case rm_Cave_2:
		sound = mus_CrystalCave;
		break;
		
	case rm_Temple_Canalisation:
	case rm_Temple_Purifier:
		sound = mus_WaterPump;
		break;
		
	default:
		sound = -1;
		break;
}

if (sound_id != sound) {
	if (audio_is_playing(sound_index)) {
		audio_stop_sound(sound_index);
	}
	if (sound != -1) {
		sound_index = audio_play_sound(sound, 0, true);
	}
	sound_id = sound;
} else {
	if (audio_sound_get_gain(sound_index) < 1.0) {
		audio_sound_gain(sound_index, 1.0, 0.0);
	}
}