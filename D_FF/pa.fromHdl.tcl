
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name D_FF -dir "D:/Projects/FPGA/D_FF/planAhead_run_2" -part xc7a100tcsg324-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "D_FF.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {D_FF.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top D_FF $srcset
add_files [list {D_FF.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc7a100tcsg324-3
