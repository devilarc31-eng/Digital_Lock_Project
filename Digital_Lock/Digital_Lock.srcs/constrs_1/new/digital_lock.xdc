## =========================================================
## DIGITAL LOCK - NEXYS A7-100T
## FPGA: XC7A100T-CSG324-1
## =========================================================

## 100 MHz CLOCK
set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports clk]
create_clock -period 10.000 -name sys_clk_pin [get_ports clk]


## =========================================================
## PASSWORD INPUT
## SW0 -> password[0]
## SW1 -> password[1]
## SW2 -> password[2]
## SW3 -> password[3]
## =========================================================

set_property -dict {PACKAGE_PIN J15 IOSTANDARD LVCMOS33} [get_ports {password[0]}]
set_property -dict {PACKAGE_PIN L16 IOSTANDARD LVCMOS33} [get_ports {password[1]}]
set_property -dict {PACKAGE_PIN M13 IOSTANDARD LVCMOS33} [get_ports {password[2]}]
set_property -dict {PACKAGE_PIN R15 IOSTANDARD LVCMOS33} [get_ports {password[3]}]


## =========================================================
## ENTER BUTTON - BTNC
## =========================================================

set_property -dict {PACKAGE_PIN N17 IOSTANDARD LVCMOS33} [get_ports enter]


## =========================================================
## RESET BUTTON - BTNU
## =========================================================

set_property -dict {PACKAGE_PIN M18 IOSTANDARD LVCMOS33} [get_ports reset]


## =========================================================
## OUTPUTS
## =========================================================

## LED0 = UNLOCK
set_property -dict {PACKAGE_PIN H17 IOSTANDARD LVCMOS33} [get_ports unlock]

## LED1 = LOCKED
set_property -dict {PACKAGE_PIN K15 IOSTANDARD LVCMOS33} [get_ports locked]

## LED2 = ATTEMPT COUNTER BIT 0
set_property -dict {PACKAGE_PIN J13 IOSTANDARD LVCMOS33} [get_ports {attempts[0]}]

## LED3 = ATTEMPT COUNTER BIT 1
set_property -dict {PACKAGE_PIN N14 IOSTANDARD LVCMOS33} [get_ports {attempts[1]}]

