///@desc Convert a raw time value to a readable string
///@func scr_TimeToString(time)
///@arg {real} time

var sec, mn, hr, str;
sec = floor(argument[0] % 60);
mn = floor(argument[0] / 60) % 60;
hr = floor(argument[0] / 3600);
str = log10(hr) >= 1 ? string(hr) + " : " : "0" + string(hr) + " : ";
str += log10(mn) >= 1 ? string(mn) + " : " : "0" + string(mn) + " : ";
str += log10(sec) >= 1 ? string(sec) : "0" + string(sec);

return str;