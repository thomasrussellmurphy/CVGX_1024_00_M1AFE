set_global_assignment -entity "lvds_6x_125Mbps_pll" -library "lib_lvds_6x_125Mbps_pll" -name IP_TOOL_NAME "altera_pll"
set_global_assignment -entity "lvds_6x_125Mbps_pll" -library "lib_lvds_6x_125Mbps_pll" -name IP_TOOL_VERSION "15.0"
set_global_assignment -entity "lvds_6x_125Mbps_pll" -library "lib_lvds_6x_125Mbps_pll" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_lvds_6x_125Mbps_pll" -name SPD_FILE [file join $::quartus(sip_path) "lvds_6x_125Mbps_pll.spd"]

set_global_assignment -library "lib_lvds_6x_125Mbps_pll" -name MISC_FILE [file join $::quartus(sip_path) "lvds_6x_125Mbps_pll_sim/lvds_6x_125Mbps_pll.vo"]
