
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name FULL_ADDER -dir "E:/VHDL/FULL_ADDER/planAhead_run_1" -part xc7a100tcsg324-1
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "FULL_ADDER.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {../OR_GATE/OR_GATE.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../HALF_ADDER/HALF_ADDER.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {FULL_ADDER.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top FULL_ADDER $srcset
add_files [list {FULL_ADDER.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc7a100tcsg324-1
