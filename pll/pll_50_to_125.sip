set_global_assignment -entity "pll_50_to_125" -library "lib_pll_50_to_125" -name IP_TOOL_NAME "altera_pll"
set_global_assignment -entity "pll_50_to_125" -library "lib_pll_50_to_125" -name IP_TOOL_VERSION "15.0"
set_global_assignment -entity "pll_50_to_125" -library "lib_pll_50_to_125" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_pll_50_to_125" -name SPD_FILE [file join $::quartus(sip_path) "pll_50_to_125.spd"]

set_global_assignment -library "lib_pll_50_to_125" -name MISC_FILE [file join $::quartus(sip_path) "pll_50_to_125_sim/pll_50_to_125.vo"]
