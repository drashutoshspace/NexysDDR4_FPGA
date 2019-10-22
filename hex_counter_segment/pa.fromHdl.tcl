
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name hex_counter_segment -dir "D:/Projects/FPGA/hex_counter_segment/planAhead_run_2" -part xc7a100tcsg324-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "hex_counter_segment.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {hex_counter_segment.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top hex_counter_segment $srcset
add_files [list {hex_counter_segment.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc7a100tcsg324-3
