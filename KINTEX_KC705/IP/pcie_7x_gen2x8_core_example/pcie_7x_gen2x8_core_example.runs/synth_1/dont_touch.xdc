# This file is automatically generated.
# It contains project source information necessary for synthesis and implementation.

# XDC: imports/example_design/xilinx_pcie_7x_ep_x8g2_KC705_REVC.xdc

# IP: ip/pcie_7x_gen2x8_core/pcie_7x_gen2x8_core.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==pcie_7x_gen2x8_core || ORIG_REF_NAME==pcie_7x_gen2x8_core}]

# XDC: ip/pcie_7x_gen2x8_core/pcie_7x_gen2x8_core/source/pcie_7x_gen2x8_core-PCIE_X0Y0.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==pcie_7x_gen2x8_core || ORIG_REF_NAME==pcie_7x_gen2x8_core}] {/inst }]/inst ]]

# XDC: ip/pcie_7x_gen2x8_core/synth/pcie_7x_gen2x8_core_ooc.xdc
