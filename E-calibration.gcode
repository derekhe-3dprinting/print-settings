M127
M136
M73 P0
G162 X Y F2000(home XY axes maximum)
G161 Z F900(home Z axis minimum)
G92 X0 Y0 Z-5 A0 B0 (set Z to -5)
G1 Z0.0 F900(move Z to '0')
G161 Z F100(home Z axis minimum)
M132 X Y Z A B (Recall stored home offsets for XYZAB axis)
G1 X0 Y0 Z50 F3300.0 (move to waiting position)
G130 X20 Y20 A20 B20 (Lower stepper Vrefs while heating)
M135 T0
M104 S210 T0
M133 T0
G130 X127 Y127 A127 B127 (Set Stepper motor Vref to defaults)
M73 P0;
; -- end of START GCODE --

G21 ; set units to millimeters
G90 ; use absolute coordinates
M73 P0
G1 Z20 F5400.000
G1 E100.0000 F200.000

; -- END GCODE --
M127 T0; fan off
M127 T0 (Fan Off)
M18 A B(Turn off A and B Steppers)
G1 Z155 F900
G162 X Y F2000
M18 X Y Z(Turn off steppers after a build)
M104 S0 T0
M70 P5 (We <3 Making Things!)
M72 P1  ( Play Ta-Da song )
M73 P100
M137 (build end notification)
; -- end of END GCODE --
M73 P100
