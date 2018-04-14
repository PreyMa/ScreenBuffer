# Screen Buffer - TI TLC5958 Bus Controller
LED Wall Screen Driver Controller and Panel Management Controller Interface in VHDL

Very light weight controller to interface multiple TLC5958 led driver chips to a high speed SPI bus and a
management microcontroller. The system is capable of 50Mbit data through put by splitting the chips into 
two separate paths, which therefore requires a different data layout. Up to 6 whole panels using the
controller can share a single bidirectional SPI lane via an addressing system. 

The controller manages the SPI bus of the TLCs, the high speed frame data bus, addressing system and reset 
pulse generation. Moreover is a grayscale clock included that automatically switches up to eight displayed
lines in multiplexed mode.

It will load a new frame into the TLC5958 caches if the panel is selected via the frame data bus. Everything 
else including setting up the configuration registers, Lod testing and emitting the VSYNC command to switch
TLC caches has to be done manually by a management microprocessor to keep the VHDL design slim. The micro-
processor is also responsible for enabling the receiving mode. 

This project is part of a Matura thesis of the HTL Hollabrunn Austria. 
