if (global.save_active[SAVE.ENDING] == 8 && time >= interval) {
    audio_play_sound(snd_Idiot, 0, false);
    if (!irandom(2)) {
        interval = irandom(450);
        time = 0;
    }
}

time += global.fps_calculation;