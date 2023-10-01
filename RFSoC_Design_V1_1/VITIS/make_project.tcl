setws "E:/RFSoC/GIT/RFSoC/RFSoC_Design_V1_1/VITIS"

platform create -name "RFSoC_Firmware_plt" -hw "E:/RFSoC/GIT/Vivado_prj_manager/Vitis_main/RFSoC_Main_blk_wrapper.xsa" -proc psu_cortexa53_0 -os standalone -arch 64-bit -fsbl-target psu_cortexa53_0
platform read E:/RFSoC/GIT/RFSoC/RFSoC_Design_V1_1/VITIS/RFSoC_Firmware_plt/platform.spr
platform active {RFSoC_Firmware_plt}
domain active standalone_domain

platform write
platform generate -domains 
platform active RFSoC_Firmware_plt
domain active standalone_domain
bsp reload
bsp setlib -name libmetal -ver 2.1
bsp setlib -name lwip211 -ver 1.3
bsp setlib -name xilpm -ver 3.2
bsp config compiler "aarch64-none-elf-gcc"
bsp write
bsp reload
catch {bsp regenerate}
platform generate
platform active RFSoC_Firmware_plt
platform generate -domains
        

app create -name RFSoC_Firmware_app -platform RFSoC_Firmware_plt -proc psu_cortexa53_0 -os standalone -lang C -template {Empty Application} -domain standalone_domain
importsources -name RFSoC_Firmware_app -path "E:/RFSoC/GIT/Vivado_prj_manager/Vitis_main/RFSoC_Firmware" -soft-link
            
