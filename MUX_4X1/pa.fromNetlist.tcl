
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name MUX_4X1 -dir "E:/VHDL/MUX_4X1/planAhead_run_1" -part xc7a100tcsg324-1
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "E:/VHDL/MUX_4X1/MUX_4X1.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {E:/VHDL/MUX_4X1} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "MUX_4X1.ucf" [current_fileset -constrset]
add_files [list {MUX_4X1.ucf}] -fileset [get_property constrset [current_run]]
link_design
