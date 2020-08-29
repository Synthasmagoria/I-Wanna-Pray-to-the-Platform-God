///@func scr_SettingSet()
///@desc Revert settings to default values

for (var i = 0; i < SETTING.NUMBER; i++) {
	scr_SettingSet(i, global.setting_default[i]);
}