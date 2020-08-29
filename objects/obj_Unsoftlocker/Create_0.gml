if (instance_number(object_index) > 1)
{
	instance_destroy();
	exit;
}

padding = 4;
selector = "<-";
unsoftlock = false;
selector_offset = 192;
save_file = "";
save_index = 0;
save_string = array_create(global.save_number);

for (var i = 0; i < global.save_number; i++)
{
	save_string[i] = "Save " + string(i + 1);
}