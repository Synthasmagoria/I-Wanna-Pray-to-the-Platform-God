///@desc Triggers triggerable instances
///@func scr_Trigger(index, dir);
///@arg index
///@arg [dir]

if (argument_count == 1) {
	
	with (obj_KillerTrigger) {
		if (trg == argument[0]) {
			trg_dir = -trg_dir;
			event_user(0);
		}
	}
	
	with (obj_BlockTrigger) {
		if (trg == argument[0]) {
			trg_dir = -trg_dir;
			event_user(0);
		}
	}
	
	with (obj_MiscTrigger) {
		if (trg == argument[0]) {
			trg_dir = -trg_dir;
			event_user(0);
		}
	}
	
} else { /////////////////////////////////////////////////
	
	with (obj_KillerTrigger) {
		if (trg == argument[0]) {
			trg_dir = -trg_dir;
			event_user(0);
		}
	}
	
	with (obj_BlockTrigger) {
		if (trg == argument[0]) {
			trg_dir = argument[1];
			event_user(0);
		}
	}
	
	with (obj_MiscTrigger) {
		if (trg == argument[0]) {
			trg_dir = argument[1];
			event_user(0);
		}
	}
}