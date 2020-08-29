///@desc A script that returns readable keybindings
///@arg {char} char

switch (argument[0]) {
	case vk_add: return "add"; break;
	case vk_alt: return "alt"; break;
	case vk_backspace: return "backspace"; break;
	case vk_control: return "control"; break;
	case vk_decimal: return "decimal"; break;
	case vk_delete: return "delete"; break;
	case vk_divide: return "divide"; break;
	case vk_down: return "down"; break;
	case vk_end: return "end"; break;
	case vk_enter: return "enter"; break;
	case vk_escape: return "escape"; break;
	case vk_f1: return "f1"; break;
	case vk_f2: return "f2"; break;
	case vk_f3: return "f3"; break;
	case vk_f4: return "f4"; break;
	case vk_f5: return "f5"; break;
	case vk_f6: return "f6"; break;
	case vk_f7: return "f7"; break;
	case vk_f8: return "f8"; break;
	case vk_f9: return "f9"; break;
	case vk_f10: return "f10"; break;
	case vk_f11: return "f11"; break;
	case vk_f12: return "f12"; break;
	case vk_home: return "home"; break;
	case vk_insert: return "insert"; break;
	case vk_lalt: return "left alt"; break;
	case vk_lcontrol: return "left control"; break;
	case vk_left: return "left"; break;
	case vk_lshift: return "left shift"; break;
	case vk_multiply: return "multiply"; break;
	case vk_numpad0: return "numpad 0"; break;
	case vk_numpad1: return "numpad 1"; break;
	case vk_numpad2: return "numpad 2"; break;
	case vk_numpad3: return "numpad 3"; break;
	case vk_numpad4: return "numpad 4"; break;
	case vk_numpad5: return "numpad 5"; break;
	case vk_numpad6: return "numpad 6"; break;
	case vk_numpad7: return "numpad 7"; break;
	case vk_numpad8: return "numpad 8"; break;
	case vk_numpad9: return "numpad 9"; break;
	case vk_pagedown: return "page down"; break;
	case vk_pageup: return "page up"; break;
	case vk_pause: return "pause"; break;
	case vk_printscreen: return "printscreen"; break;
	case vk_ralt: return "right alt"; break;
	case vk_rcontrol: return "right control"; break;
	case vk_right: return "right"; break;
	case vk_rshift: return "right shift" break;
	case vk_shift: return "shift"; break;
	case vk_space: return "space"; break;
	case vk_subtract: return "subtract"; break;
	case vk_tab: return "tab"; break;
	case vk_up: return "up"; break;
	
	case 186: return ";";
    case 187: return "=";
    case 188: return ",";
    case 189: return "-";
    case 190: return ".";
    case 191: return "/";
    case 192: return "`";
    case 219: return "[";
    case 220: return "\\";
    case 221: return "]";
    case 222: return "\'";
	
	default: return chr(argument[0]);
}