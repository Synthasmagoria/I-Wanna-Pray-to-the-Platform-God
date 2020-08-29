///@desc Formats a string to a sentence by cutting the last word
///@func scr_StringFormatLine(str)
///@arg {string} str

var pos, len;
len = string_length(argument[0]);
pos = len - 1;

while (pos >= 0) {
	if (string_char_at(argument[0], pos) == " ") {
		break;
	}
	
	pos--;
}

return string_copy(argument[0], pos, len - pos);