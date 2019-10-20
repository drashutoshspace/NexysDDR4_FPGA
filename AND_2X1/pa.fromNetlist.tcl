
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name AND_2X1 -dir "E:/VHDL/AND_2X1/planAhead_run_1" -part xc7a100tcsg324-1
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "E:/VHDL/AND_2X1/AND_2X1.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {E:/VHDL/AND_2X1} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "AND_2X1.ucf" [current_fileset -constrset]
add_files [list {AND_2X1.ucf}] -fileset [get_property constrset [current_run]]
link_design
