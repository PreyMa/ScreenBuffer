# Screen Buffer - TI TLC5958 Bus Controller
LED Wall Screen Driver Controller and Panel Management Controller Interface in VHDL

Very light weight controller to interface multiple TLC5958 led driver chips to a high speed SPI bus and a management microcontroller. The system is capable of 50Mbit data through put by splitting the chips into two separate paths, which therefore requires a different data layout. Up to 6 whole panels using the controller can share a single bidirectional SPI lane via an addressing system. 

The controller manages the SPI bus of the TLCs, the high speed frame data bus, addressing system and reset pulse generation. Moreover is a grayscale clock included that automatically switches up to eight displayed lines in multiplexed mode.

It will load a new frame into the TLC5958 caches if the panel is selected via the frame data bus. Everything else including setting up the configuration registers, Lod testing and emitting the VSYNC command to switch TLC caches has to be done manually by a management microprocessor to keep the VHDL design slim. The microprocessor is also responsible for enabling the receiving mode. 

In receive mode the controller has full controll over the TLCs and will automatically write a new frame into their caches if the frame bus addresses the panel. The received bits are counted and the required latch signals to save the frame data are emitted. When the transmissonn is done, the controller halts and signals the processor via the 'done' pin. The processor then can switch of 'receive mode' which gives it the controll over the TLCs. In this state the VSYNC command has to be sent to swap the caches and show the new frame. During this time the internal grayscale clock counter is reset to start again at line 0 when the 'receive mode' is entered again to wait for the next frame.

This project is part of a Matura thesis of the HTL Hollabrunn Austria. 
