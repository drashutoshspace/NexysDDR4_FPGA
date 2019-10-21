
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name OR_GATE -dir "E:/VHDL/OR_GATE/planAhead_run_1" -part xc7a100tcsg324-1
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "OR_GATE.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {OR_GATE.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top OR_GATE $srcset
add_files [list {OR_GATE.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc7a100tcsg324-1
