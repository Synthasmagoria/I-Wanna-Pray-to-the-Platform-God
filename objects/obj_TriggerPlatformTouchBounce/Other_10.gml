///@desc Move & Trigger

if (!touched) {
	touched = true;
	
	scr_Trigger(trg);
	
	hspeed = hs_touch * global.fps_calculation;
	vspeed = vs_touch * global.fps_calculation;
}
