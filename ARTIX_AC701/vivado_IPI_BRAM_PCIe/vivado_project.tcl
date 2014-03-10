set DEVICE_TYPE xc7a200tfbg676-2

create_project project_X project_X -part $DEVICE_TYPE 
set_property board xilinx.com:artix7:ac701:1.0 [current_project]
set_property ip_repo_paths ../vivado_IP_GEN [current_fileset]
update_ip_catalog

source ./create_pcie_sybsys_BRAM_ONLY.tcl
set_property CONFIG.FREQ_HZ 62500000 [get_bd_intf_pins pcie_axi_stream_to_axi_lite_bridge_0/M_AXI]
set_property CONFIG.FREQ_HZ 62500000 [get_bd_intf_pins pcie_axi_stream_to_axi_lite_bridge_0/m_axis_tx]
validate_bd_design
save_bd_design
generate_target all [get_files ./project_X/project_X.srcs/sources_1/bd/pcie_gen1x1_sub_sys/pcie_gen1x1_sub_sys.bd]
add_files -norecurse ./pcie_gen1x1_sub_sys_wrapper.v
add_files -fileset constrs_1 ./pcie_gen1x1_sub_sys_wrapper.xdc
update_compile_order -fileset sources_1
update_compile_order -fileset sim_1