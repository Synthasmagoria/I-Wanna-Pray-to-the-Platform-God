///@desc Finds the last space in a string
///@func scr_String_LastSpace(str)
///@arg {string} str

var pos = string_length(argument[0]) - 1;

while (pos >= 0) {
	
	if (string_char_at(argument[0], pos) == " ") {
		break;
	}
	
	pos--;
}

return pos;