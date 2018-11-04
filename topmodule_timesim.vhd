--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: topmodule_timesim.vhd
-- /___/   /\     Timestamp: Sat Nov 03 11:49:05 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -ar Structure -tm topmodule -w -dir netgen/fit -ofmt vhdl -sim topmodule.nga topmodule_timesim.vhd 
-- Device	: XC2C128-6-VQ100 (Speed File: Version 14.0 Advance Product Specification)
-- Input file	: topmodule.nga
-- Output file	: C:\Matura_2_0\Screenbuffer_V2\CPLD_FIN\CPLD_BUFF\netgen\fit\topmodule_timesim.vhd
-- # of Entities	: 1
-- Design Name	: topmodule.nga
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity topmodule is
  port (
    sclk : in STD_LOGIC := 'X'; 
    gclk : in STD_LOGIC := 'X'; 
    proc_rcv_en : in STD_LOGIC := 'X'; 
    proc_grclk_en : in STD_LOGIC := 'X'; 
    proc_wr_b : in STD_LOGIC := 'X'; 
    proc_wr_a : in STD_LOGIC := 'X'; 
    proc_sclk : in STD_LOGIC := 'X'; 
    proc_latch : in STD_LOGIC := 'X'; 
    miso_a : in STD_LOGIC := 'X'; 
    miso_b : in STD_LOGIC := 'X'; 
    proc_mosi : in STD_LOGIC := 'X'; 
    sdin : in STD_LOGIC := 'X'; 
    sdprev : in STD_LOGIC := 'X'; 
    done : out STD_LOGIC; 
    grayscale_clk : out STD_LOGIC; 
    latch_out1 : out STD_LOGIC; 
    latch_out2 : out STD_LOGIC; 
    mosi_a : out STD_LOGIC; 
    mosi_b : out STD_LOGIC; 
    panel_select : out STD_LOGIC; 
    reset : out STD_LOGIC; 
    sdout : out STD_LOGIC; 
    sdprev_en : out STD_LOGIC; 
    tsclk_a : out STD_LOGIC; 
    tsclk_b : out STD_LOGIC; 
    addr_sel : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    line_select : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    mode_data : out STD_LOGIC_VECTOR ( 2 downto 0 ) 
  );
end topmodule;

architecture Structure of topmodule is
  signal addr_sel_0_II_UIM_1 : STD_LOGIC; 
  signal addr_sel_1_II_UIM_3 : STD_LOGIC; 
  signal addr_sel_2_II_UIM_5 : STD_LOGIC; 
  signal addr_sel_3_II_UIM_7 : STD_LOGIC; 
  signal sclk_II_UIM_9 : STD_LOGIC; 
  signal sclk_II_FCLK_10 : STD_LOGIC; 
  signal gclk_II_UIM_12 : STD_LOGIC; 
  signal gclk_II_FCLK_13 : STD_LOGIC; 
  signal proc_rcv_en_II_UIM_15 : STD_LOGIC; 
  signal proc_grclk_en_II_UIM_17 : STD_LOGIC; 
  signal proc_wr_b_II_UIM_19 : STD_LOGIC; 
  signal proc_wr_a_II_UIM_21 : STD_LOGIC; 
  signal proc_sclk_II_UIM_23 : STD_LOGIC; 
  signal proc_latch_II_UIM_25 : STD_LOGIC; 
  signal miso_a_II_UIM_27 : STD_LOGIC; 
  signal miso_b_II_UIM_29 : STD_LOGIC; 
  signal proc_mosi_II_UIM_31 : STD_LOGIC; 
  signal sdin_II_UIM_33 : STD_LOGIC; 
  signal sdin_II_IREG_34 : STD_LOGIC; 
  signal FOOBAR1_ctinst_5_35 : STD_LOGIC; 
  signal Gnd_36 : STD_LOGIC; 
  signal ser_in_serial_dout_0_MC_tsimcreated_prld_Q_37 : STD_LOGIC; 
  signal ser_in_serial_dout_0_MC_CE_38 : STD_LOGIC; 
  signal ser_in_serial_dout_0_Q : STD_LOGIC; 
  signal sdprev_II_UIM_41 : STD_LOGIC; 
  signal done_MC_Q_43 : STD_LOGIC; 
  signal grayscale_clk_MC_Q_45 : STD_LOGIC; 
  signal latch_out1_MC_Q_47 : STD_LOGIC; 
  signal latch_out2_MC_Q_49 : STD_LOGIC; 
  signal line_select_0_MC_Q_51 : STD_LOGIC; 
  signal line_select_1_MC_Q_53 : STD_LOGIC; 
  signal line_select_2_MC_Q_55 : STD_LOGIC; 
  signal line_select_3_MC_Q_57 : STD_LOGIC; 
  signal line_select_4_MC_Q_59 : STD_LOGIC; 
  signal line_select_5_MC_Q_61 : STD_LOGIC; 
  signal line_select_6_MC_Q_63 : STD_LOGIC; 
  signal line_select_7_MC_Q_65 : STD_LOGIC; 
  signal mode_data_0_MC_Q_67 : STD_LOGIC; 
  signal mode_data_1_MC_Q_69 : STD_LOGIC; 
  signal mode_data_2_MC_Q_71 : STD_LOGIC; 
  signal mosi_a_MC_Q_73 : STD_LOGIC; 
  signal mosi_b_MC_Q_75 : STD_LOGIC; 
  signal panel_select_MC_Q_77 : STD_LOGIC; 
  signal reset_MC_Q_79 : STD_LOGIC; 
  signal sdout_MC_Q_81 : STD_LOGIC; 
  signal sdprev_en_MC_Q_83 : STD_LOGIC; 
  signal tsclk_a_MC_Q_85 : STD_LOGIC; 
  signal tsclk_b_MC_Q_87 : STD_LOGIC; 
  signal done_MC_Q_tsimrenamed_net_Q : STD_LOGIC; 
  signal done_MC_D_89 : STD_LOGIC; 
  signal done_MC_tsimcreated_xor_Q_90 : STD_LOGIC; 
  signal Vcc_91 : STD_LOGIC; 
  signal done_MC_D1_92 : STD_LOGIC; 
  signal done_MC_D2_93 : STD_LOGIC; 
  signal ser_in_counter_STATE_FSM_FFd1_94 : STD_LOGIC; 
  signal reset_BUFR_98 : STD_LOGIC; 
  signal mode_data_2_MC_UIM_99 : STD_LOGIC; 
  signal panel_select_MC_UIM_114 : STD_LOGIC; 
  signal done_MC_D2_PT_0_115 : STD_LOGIC; 
  signal done_MC_D2_PT_1_116 : STD_LOGIC; 
  signal N_PZ_448_117 : STD_LOGIC; 
  signal done_MC_D2_PT_2_118 : STD_LOGIC; 
  signal mode_data_2_MC_Q_tsimrenamed_net_Q : STD_LOGIC; 
  signal mode_data_2_MC_RSTF_120 : STD_LOGIC; 
  signal mode_data_2_MC_tsimcreated_prld_Q_121 : STD_LOGIC; 
  signal mode_data_2_MC_D_122 : STD_LOGIC; 
  signal mode_data_2_MC_CE_123 : STD_LOGIC; 
  signal mode_data_2_MC_D1_124 : STD_LOGIC; 
  signal mode_data_2_MC_D2_125 : STD_LOGIC; 
  signal mode_data_1_MC_UIM_126 : STD_LOGIC; 
  signal ser_in_counter_STATE_or0000_127 : STD_LOGIC; 
  signal ser_in_counter_STATE_FSM_FFd2_128 : STD_LOGIC; 
  signal mode_data_1_MC_Q_tsimrenamed_net_Q : STD_LOGIC; 
  signal mode_data_1_MC_RSTF_130 : STD_LOGIC; 
  signal mode_data_1_MC_tsimcreated_prld_Q_131 : STD_LOGIC; 
  signal mode_data_1_MC_D_132 : STD_LOGIC; 
  signal mode_data_1_MC_CE_133 : STD_LOGIC; 
  signal mode_data_1_MC_D1_134 : STD_LOGIC; 
  signal mode_data_1_MC_D2_135 : STD_LOGIC; 
  signal mode_data_0_MC_UIM_136 : STD_LOGIC; 
  signal mode_data_0_MC_Q_tsimrenamed_net_Q : STD_LOGIC; 
  signal mode_data_0_MC_RSTF_138 : STD_LOGIC; 
  signal mode_data_0_MC_tsimcreated_prld_Q_139 : STD_LOGIC; 
  signal mode_data_0_MC_D_140 : STD_LOGIC; 
  signal mode_data_0_MC_CE_141 : STD_LOGIC; 
  signal mode_data_0_MC_D1_142 : STD_LOGIC; 
  signal mode_data_0_MC_D2_143 : STD_LOGIC; 
  signal ser_in_serial_dout_3_Q_144 : STD_LOGIC; 
  signal ser_in_serial_dout_3_MC_Q : STD_LOGIC; 
  signal FOOBAR2_ctinst_5_146 : STD_LOGIC; 
  signal ser_in_serial_dout_3_MC_tsimcreated_prld_Q_147 : STD_LOGIC; 
  signal ser_in_serial_dout_3_MC_D_148 : STD_LOGIC; 
  signal ser_in_serial_dout_3_MC_CE_149 : STD_LOGIC; 
  signal ser_in_serial_dout_3_MC_D1_150 : STD_LOGIC; 
  signal ser_in_serial_dout_3_MC_D2_151 : STD_LOGIC; 
  signal ser_in_serial_dout_2_Q_152 : STD_LOGIC; 
  signal ser_in_serial_dout_2_MC_Q : STD_LOGIC; 
  signal ser_in_serial_dout_2_MC_tsimcreated_prld_Q_154 : STD_LOGIC; 
  signal ser_in_serial_dout_2_MC_D_155 : STD_LOGIC; 
  signal ser_in_serial_dout_2_MC_CE_156 : STD_LOGIC; 
  signal ser_in_serial_dout_2_MC_D1_157 : STD_LOGIC; 
  signal ser_in_serial_dout_2_MC_D2_158 : STD_LOGIC; 
  signal ser_in_serial_dout_1_Q_159 : STD_LOGIC; 
  signal ser_in_serial_dout_1_MC_Q : STD_LOGIC; 
  signal ser_in_serial_dout_1_MC_tsimcreated_prld_Q_161 : STD_LOGIC; 
  signal ser_in_serial_dout_1_MC_D_162 : STD_LOGIC; 
  signal ser_in_serial_dout_1_MC_CE_163 : STD_LOGIC; 
  signal ser_in_serial_dout_1_MC_D1_164 : STD_LOGIC; 
  signal ser_in_serial_dout_1_MC_D2_165 : STD_LOGIC; 
  signal ser_in_counter_STATE_FSM_FFd1_MC_Q : STD_LOGIC; 
  signal ser_in_counter_STATE_FSM_FFd1_MC_D_167 : STD_LOGIC; 
  signal ser_in_counter_STATE_FSM_FFd1_MC_tsimcreated_xor_Q_168 : STD_LOGIC; 
  signal ser_in_counter_STATE_FSM_FFd1_MC_tsimcreated_prld_Q_169 : STD_LOGIC; 
  signal ser_in_counter_STATE_FSM_FFd1_MC_D1_170 : STD_LOGIC; 
  signal ser_in_counter_STATE_FSM_FFd1_MC_D2_171 : STD_LOGIC; 
  signal N_PZ_383_172 : STD_LOGIC; 
  signal ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_173 : STD_LOGIC; 
  signal ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_174 : STD_LOGIC; 
  signal ser_in_counter_latchcount_0_MC_Q : STD_LOGIC; 
  signal ser_in_counter_latchcount_0_MC_D_176 : STD_LOGIC; 
  signal ser_in_counter_latchcount_0_MC_tsimcreated_xor_Q_177 : STD_LOGIC; 
  signal ser_in_counter_latchcount_0_MC_tsimcreated_prld_Q_178 : STD_LOGIC; 
  signal ser_in_counter_latchcount_0_MC_D1_179 : STD_LOGIC; 
  signal ser_in_counter_latchcount_0_MC_D2_180 : STD_LOGIC; 
  signal ser_in_counter_bitcount_1_MC_Q : STD_LOGIC; 
  signal ser_in_counter_bitcount_1_MC_D_182 : STD_LOGIC; 
  signal ser_in_counter_bitcount_1_MC_tsimcreated_xor_Q_183 : STD_LOGIC; 
  signal ser_in_counter_bitcount_1_MC_tsimcreated_prld_Q_184 : STD_LOGIC; 
  signal ser_in_counter_bitcount_1_MC_D1_185 : STD_LOGIC; 
  signal ser_in_counter_bitcount_1_MC_D2_186 : STD_LOGIC; 
  signal ser_in_counter_bitcount_1_MC_D2_PT_0_187 : STD_LOGIC; 
  signal ser_in_counter_bitcount_1_MC_D2_PT_1_188 : STD_LOGIC; 
  signal ser_in_counter_bitcount_0_MC_Q : STD_LOGIC; 
  signal ser_in_counter_bitcount_0_MC_D_190 : STD_LOGIC; 
  signal ser_in_counter_bitcount_0_MC_tsimcreated_xor_Q_191 : STD_LOGIC; 
  signal ser_in_counter_bitcount_0_MC_RSTF_192 : STD_LOGIC; 
  signal ser_in_counter_bitcount_0_MC_tsimcreated_prld_Q_193 : STD_LOGIC; 
  signal ser_in_counter_bitcount_0_MC_D1_194 : STD_LOGIC; 
  signal ser_in_counter_bitcount_0_MC_D2_195 : STD_LOGIC; 
  signal ser_in_counter_STATE_or0000_MC_Q_196 : STD_LOGIC; 
  signal ser_in_counter_STATE_or0000_MC_D_197 : STD_LOGIC; 
  signal ser_in_counter_STATE_or0000_MC_D1_198 : STD_LOGIC; 
  signal ser_in_counter_STATE_or0000_MC_D2_199 : STD_LOGIC; 
  signal ser_in_counter_STATE_or0000_MC_D2_PT_0_200 : STD_LOGIC; 
  signal ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_201 : STD_LOGIC; 
  signal ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_202 : STD_LOGIC; 
  signal ser_in_counter_STATE_or0000_MC_D2_PT_1_203 : STD_LOGIC; 
  signal ser_in_counter_STATE_or0000_MC_D2_PT_2_204 : STD_LOGIC; 
  signal ser_in_counter_STATE_or0000_MC_D2_PT_3_205 : STD_LOGIC; 
  signal ser_in_counter_STATE_or0000_MC_D2_PT_4_206 : STD_LOGIC; 
  signal reset_BUFR_MC_Q_207 : STD_LOGIC; 
  signal reset_BUFR_MC_D_208 : STD_LOGIC; 
  signal reset_BUFR_MC_D1_209 : STD_LOGIC; 
  signal reset_BUFR_MC_D2_210 : STD_LOGIC; 
  signal res_reg_0_MC_Q : STD_LOGIC; 
  signal res_reg_0_MC_D_228 : STD_LOGIC; 
  signal res_reg_0_MC_tsimcreated_xor_Q_229 : STD_LOGIC; 
  signal res_reg_0_MC_D1_230 : STD_LOGIC; 
  signal res_reg_0_MC_D2_231 : STD_LOGIC; 
  signal res_reg_0_MC_D2_PT_0_232 : STD_LOGIC; 
  signal tick_233 : STD_LOGIC; 
  signal res_reg_0_MC_D2_PT_1_234 : STD_LOGIC; 
  signal tick_MC_Q : STD_LOGIC; 
  signal FOOBAR7_ctinst_5_236 : STD_LOGIC; 
  signal tick_MC_tsimcreated_prld_Q_237 : STD_LOGIC; 
  signal tick_MC_D_238 : STD_LOGIC; 
  signal tick_MC_D1_239 : STD_LOGIC; 
  signal tick_MC_D2_240 : STD_LOGIC; 
  signal grclkgen_tgen_cnt_0_MC_Q : STD_LOGIC; 
  signal grclkgen_tgen_cnt_0_MC_D_244 : STD_LOGIC; 
  signal grclkgen_tgen_cnt_0_MC_tsimcreated_xor_Q_245 : STD_LOGIC; 
  signal FOOBAR3_ctinst_5_246 : STD_LOGIC; 
  signal grclkgen_tgen_cnt_0_MC_tsimcreated_prld_Q_247 : STD_LOGIC; 
  signal grclkgen_tgen_cnt_0_MC_D1_248 : STD_LOGIC; 
  signal grclkgen_tgen_cnt_0_MC_D2_249 : STD_LOGIC; 
  signal grclkgen_tgen_cnt_1_MC_Q : STD_LOGIC; 
  signal grclkgen_tgen_cnt_1_MC_D_251 : STD_LOGIC; 
  signal grclkgen_tgen_cnt_1_MC_tsimcreated_xor_Q_252 : STD_LOGIC; 
  signal grclkgen_tgen_cnt_1_MC_tsimcreated_prld_Q_253 : STD_LOGIC; 
  signal grclkgen_tgen_cnt_1_MC_D1_254 : STD_LOGIC; 
  signal grclkgen_tgen_cnt_1_MC_D2_255 : STD_LOGIC; 
  signal res_reg_10_MC_Q : STD_LOGIC; 
  signal res_reg_10_MC_D_257 : STD_LOGIC; 
  signal res_reg_10_MC_tsimcreated_xor_Q_258 : STD_LOGIC; 
  signal res_reg_10_MC_D1_259 : STD_LOGIC; 
  signal res_reg_10_MC_D2_260 : STD_LOGIC; 
  signal res_reg_10_MC_D2_PT_0_261 : STD_LOGIC; 
  signal res_reg_10_MC_D2_PT_1_262 : STD_LOGIC; 
  signal res_reg_1_MC_Q : STD_LOGIC; 
  signal res_reg_1_MC_D_264 : STD_LOGIC; 
  signal res_reg_1_MC_tsimcreated_xor_Q_265 : STD_LOGIC; 
  signal res_reg_1_MC_D1_266 : STD_LOGIC; 
  signal res_reg_1_MC_D2_267 : STD_LOGIC; 
  signal res_reg_1_MC_D2_PT_0_268 : STD_LOGIC; 
  signal res_reg_1_MC_D2_PT_1_269 : STD_LOGIC; 
  signal res_reg_2_MC_Q : STD_LOGIC; 
  signal res_reg_2_MC_D_271 : STD_LOGIC; 
  signal res_reg_2_MC_tsimcreated_xor_Q_272 : STD_LOGIC; 
  signal res_reg_2_MC_D1_273 : STD_LOGIC; 
  signal res_reg_2_MC_D2_274 : STD_LOGIC; 
  signal res_reg_2_MC_D2_PT_0_275 : STD_LOGIC; 
  signal res_reg_2_MC_D2_PT_1_276 : STD_LOGIC; 
  signal res_reg_3_MC_Q : STD_LOGIC; 
  signal res_reg_3_MC_D_278 : STD_LOGIC; 
  signal res_reg_3_MC_tsimcreated_xor_Q_279 : STD_LOGIC; 
  signal res_reg_3_MC_D1_280 : STD_LOGIC; 
  signal res_reg_3_MC_D2_281 : STD_LOGIC; 
  signal res_reg_3_MC_D2_PT_0_282 : STD_LOGIC; 
  signal res_reg_3_MC_D2_PT_1_283 : STD_LOGIC; 
  signal res_reg_4_MC_Q : STD_LOGIC; 
  signal res_reg_4_MC_D_285 : STD_LOGIC; 
  signal res_reg_4_MC_tsimcreated_xor_Q_286 : STD_LOGIC; 
  signal res_reg_4_MC_D1_287 : STD_LOGIC; 
  signal res_reg_4_MC_D2_288 : STD_LOGIC; 
  signal res_reg_4_MC_D2_PT_0_289 : STD_LOGIC; 
  signal res_reg_4_MC_D2_PT_1_290 : STD_LOGIC; 
  signal res_reg_5_MC_Q : STD_LOGIC; 
  signal res_reg_5_MC_D_292 : STD_LOGIC; 
  signal res_reg_5_MC_tsimcreated_xor_Q_293 : STD_LOGIC; 
  signal res_reg_5_MC_D1_294 : STD_LOGIC; 
  signal res_reg_5_MC_D2_295 : STD_LOGIC; 
  signal res_reg_5_MC_D2_PT_0_296 : STD_LOGIC; 
  signal res_reg_5_MC_D2_PT_1_297 : STD_LOGIC; 
  signal res_reg_6_MC_Q : STD_LOGIC; 
  signal res_reg_6_MC_D_299 : STD_LOGIC; 
  signal res_reg_6_MC_tsimcreated_xor_Q_300 : STD_LOGIC; 
  signal res_reg_6_MC_D1_301 : STD_LOGIC; 
  signal res_reg_6_MC_D2_302 : STD_LOGIC; 
  signal res_reg_6_MC_D2_PT_0_303 : STD_LOGIC; 
  signal res_reg_6_MC_D2_PT_1_304 : STD_LOGIC; 
  signal res_reg_7_MC_Q : STD_LOGIC; 
  signal res_reg_7_MC_D_306 : STD_LOGIC; 
  signal res_reg_7_MC_tsimcreated_xor_Q_307 : STD_LOGIC; 
  signal res_reg_7_MC_D1_308 : STD_LOGIC; 
  signal res_reg_7_MC_D2_309 : STD_LOGIC; 
  signal res_reg_7_MC_D2_PT_0_310 : STD_LOGIC; 
  signal res_reg_7_MC_D2_PT_1_311 : STD_LOGIC; 
  signal res_reg_8_MC_Q : STD_LOGIC; 
  signal res_reg_8_MC_D_313 : STD_LOGIC; 
  signal res_reg_8_MC_tsimcreated_xor_Q_314 : STD_LOGIC; 
  signal res_reg_8_MC_D1_315 : STD_LOGIC; 
  signal res_reg_8_MC_D2_316 : STD_LOGIC; 
  signal res_reg_8_MC_D2_PT_0_317 : STD_LOGIC; 
  signal res_reg_8_MC_D2_PT_1_318 : STD_LOGIC; 
  signal res_reg_9_MC_Q : STD_LOGIC; 
  signal res_reg_9_MC_D_320 : STD_LOGIC; 
  signal res_reg_9_MC_tsimcreated_xor_Q_321 : STD_LOGIC; 
  signal res_reg_9_MC_D1_322 : STD_LOGIC; 
  signal res_reg_9_MC_D2_323 : STD_LOGIC; 
  signal res_reg_9_MC_D2_PT_0_324 : STD_LOGIC; 
  signal res_reg_9_MC_D2_PT_1_325 : STD_LOGIC; 
  signal res_reg_11_MC_Q : STD_LOGIC; 
  signal res_reg_11_MC_D_327 : STD_LOGIC; 
  signal res_reg_11_MC_tsimcreated_xor_Q_328 : STD_LOGIC; 
  signal res_reg_11_MC_D1_329 : STD_LOGIC; 
  signal res_reg_11_MC_D2_330 : STD_LOGIC; 
  signal res_reg_11_MC_D2_PT_0_331 : STD_LOGIC; 
  signal res_reg_11_MC_D2_PT_1_332 : STD_LOGIC; 
  signal res_reg_12_MC_Q : STD_LOGIC; 
  signal res_reg_12_MC_D_334 : STD_LOGIC; 
  signal res_reg_12_MC_tsimcreated_xor_Q_335 : STD_LOGIC; 
  signal res_reg_12_MC_D1_336 : STD_LOGIC; 
  signal res_reg_12_MC_D2_337 : STD_LOGIC; 
  signal res_reg_12_MC_D2_PT_0_338 : STD_LOGIC; 
  signal res_reg_12_MC_D2_PT_1_339 : STD_LOGIC; 
  signal res_reg_13_MC_Q : STD_LOGIC; 
  signal res_reg_13_MC_D_341 : STD_LOGIC; 
  signal res_reg_13_MC_tsimcreated_xor_Q_342 : STD_LOGIC; 
  signal res_reg_13_MC_D1_343 : STD_LOGIC; 
  signal res_reg_13_MC_D2_344 : STD_LOGIC; 
  signal res_reg_13_MC_D2_PT_0_345 : STD_LOGIC; 
  signal res_reg_13_MC_D2_PT_1_346 : STD_LOGIC; 
  signal res_reg_14_MC_Q : STD_LOGIC; 
  signal res_reg_14_MC_D_348 : STD_LOGIC; 
  signal res_reg_14_MC_tsimcreated_xor_Q_349 : STD_LOGIC; 
  signal res_reg_14_MC_D1_350 : STD_LOGIC; 
  signal res_reg_14_MC_D2_351 : STD_LOGIC; 
  signal res_reg_14_MC_D2_PT_0_352 : STD_LOGIC; 
  signal res_reg_14_MC_D2_PT_1_353 : STD_LOGIC; 
  signal res_reg_15_MC_Q : STD_LOGIC; 
  signal res_reg_15_MC_D_355 : STD_LOGIC; 
  signal res_reg_15_MC_tsimcreated_xor_Q_356 : STD_LOGIC; 
  signal res_reg_15_MC_D1_357 : STD_LOGIC; 
  signal res_reg_15_MC_D2_358 : STD_LOGIC; 
  signal res_reg_15_MC_D2_PT_0_359 : STD_LOGIC; 
  signal res_reg_15_MC_D2_PT_1_360 : STD_LOGIC; 
  signal ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_Q_361 : STD_LOGIC; 
  signal ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D_362 : STD_LOGIC; 
  signal ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D1_363 : STD_LOGIC; 
  signal ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_364 : STD_LOGIC; 
  signal ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_0_365 : STD_LOGIC; 
  signal ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_1_366 : STD_LOGIC; 
  signal ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_2_367 : STD_LOGIC; 
  signal ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_3_368 : STD_LOGIC; 
  signal ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_Q_369 : STD_LOGIC; 
  signal ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D_370 : STD_LOGIC; 
  signal ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D1_371 : STD_LOGIC; 
  signal ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_372 : STD_LOGIC; 
  signal ser_in_serial_dout_7_Q_373 : STD_LOGIC; 
  signal ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_0_374 : STD_LOGIC; 
  signal ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_1_375 : STD_LOGIC; 
  signal ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_2_376 : STD_LOGIC; 
  signal ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_3_377 : STD_LOGIC; 
  signal ser_in_serial_dout_7_MC_Q : STD_LOGIC; 
  signal ser_in_serial_dout_7_MC_tsimcreated_prld_Q_379 : STD_LOGIC; 
  signal ser_in_serial_dout_7_MC_D_380 : STD_LOGIC; 
  signal ser_in_serial_dout_7_MC_CE_381 : STD_LOGIC; 
  signal ser_in_serial_dout_7_MC_D1_382 : STD_LOGIC; 
  signal ser_in_serial_dout_7_MC_D2_383 : STD_LOGIC; 
  signal ser_in_counter_STATE_FSM_FFd2_MC_Q : STD_LOGIC; 
  signal ser_in_counter_STATE_FSM_FFd2_MC_D_385 : STD_LOGIC; 
  signal ser_in_counter_STATE_FSM_FFd2_MC_tsimcreated_xor_Q_386 : STD_LOGIC; 
  signal ser_in_counter_STATE_FSM_FFd2_MC_tsimcreated_prld_Q_387 : STD_LOGIC; 
  signal ser_in_counter_STATE_FSM_FFd2_MC_D1_388 : STD_LOGIC; 
  signal ser_in_counter_STATE_FSM_FFd2_MC_D2_389 : STD_LOGIC; 
  signal ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_390 : STD_LOGIC; 
  signal ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_391 : STD_LOGIC; 
  signal ser_in_counter_bitcount_2_MC_Q : STD_LOGIC; 
  signal ser_in_counter_bitcount_2_MC_D_393 : STD_LOGIC; 
  signal ser_in_counter_bitcount_2_MC_tsimcreated_xor_Q_394 : STD_LOGIC; 
  signal ser_in_counter_bitcount_2_MC_tsimcreated_prld_Q_395 : STD_LOGIC; 
  signal ser_in_counter_bitcount_2_MC_D1_396 : STD_LOGIC; 
  signal ser_in_counter_bitcount_2_MC_D2_397 : STD_LOGIC; 
  signal ser_in_counter_bitcount_3_MC_Q : STD_LOGIC; 
  signal ser_in_counter_bitcount_3_MC_D_399 : STD_LOGIC; 
  signal ser_in_counter_bitcount_3_MC_tsimcreated_xor_Q_400 : STD_LOGIC; 
  signal ser_in_counter_bitcount_3_MC_tsimcreated_prld_Q_401 : STD_LOGIC; 
  signal ser_in_counter_bitcount_3_MC_D1_402 : STD_LOGIC; 
  signal ser_in_counter_bitcount_3_MC_D2_403 : STD_LOGIC; 
  signal ser_in_counter_bitcount_3_MC_D2_PT_0_404 : STD_LOGIC; 
  signal ser_in_counter_bitcount_3_MC_D2_PT_1_405 : STD_LOGIC; 
  signal ser_in_counter_bitcount_3_MC_D2_PT_2_406 : STD_LOGIC; 
  signal ser_in_counter_bitcount_3_MC_D2_PT_3_407 : STD_LOGIC; 
  signal ser_in_counter_bitcount_4_MC_Q : STD_LOGIC; 
  signal ser_in_counter_bitcount_4_MC_D_409 : STD_LOGIC; 
  signal ser_in_counter_bitcount_4_MC_tsimcreated_xor_Q_410 : STD_LOGIC; 
  signal ser_in_counter_bitcount_4_MC_tsimcreated_prld_Q_411 : STD_LOGIC; 
  signal ser_in_counter_bitcount_4_MC_D1_412 : STD_LOGIC; 
  signal ser_in_counter_bitcount_4_MC_D2_413 : STD_LOGIC; 
  signal ser_in_counter_bitcount_6_MC_Q : STD_LOGIC; 
  signal ser_in_counter_bitcount_6_MC_D_415 : STD_LOGIC; 
  signal ser_in_counter_bitcount_6_MC_tsimcreated_xor_Q_416 : STD_LOGIC; 
  signal ser_in_counter_bitcount_6_MC_tsimcreated_prld_Q_417 : STD_LOGIC; 
  signal ser_in_counter_bitcount_6_MC_D1_418 : STD_LOGIC; 
  signal ser_in_counter_bitcount_6_MC_D2_419 : STD_LOGIC; 
  signal ser_in_counter_bitcount_6_MC_D2_PT_0_420 : STD_LOGIC; 
  signal ser_in_counter_bitcount_6_MC_D2_PT_1_421 : STD_LOGIC; 
  signal ser_in_counter_bitcount_5_MC_Q : STD_LOGIC; 
  signal ser_in_counter_bitcount_5_MC_D_423 : STD_LOGIC; 
  signal ser_in_counter_bitcount_5_MC_tsimcreated_xor_Q_424 : STD_LOGIC; 
  signal ser_in_counter_bitcount_5_MC_tsimcreated_prld_Q_425 : STD_LOGIC; 
  signal ser_in_counter_bitcount_5_MC_D1_426 : STD_LOGIC; 
  signal ser_in_counter_bitcount_5_MC_D2_427 : STD_LOGIC; 
  signal ser_in_counter_bitcount_5_MC_D2_PT_0_428 : STD_LOGIC; 
  signal ser_in_counter_bitcount_5_MC_D2_PT_1_429 : STD_LOGIC; 
  signal ser_in_counter_bitcount_5_MC_D2_PT_2_430 : STD_LOGIC; 
  signal ser_in_counter_bitcount_5_MC_D2_PT_3_431 : STD_LOGIC; 
  signal ser_in_counter_bitcount_5_MC_D2_PT_4_432 : STD_LOGIC; 
  signal ser_in_counter_bitcount_5_MC_D2_PT_5_433 : STD_LOGIC; 
  signal ser_in_counter_bitcount_8_MC_Q : STD_LOGIC; 
  signal ser_in_counter_bitcount_8_MC_D_435 : STD_LOGIC; 
  signal ser_in_counter_bitcount_8_MC_tsimcreated_xor_Q_436 : STD_LOGIC; 
  signal ser_in_counter_bitcount_8_MC_tsimcreated_prld_Q_437 : STD_LOGIC; 
  signal ser_in_counter_bitcount_8_MC_D1_438 : STD_LOGIC; 
  signal ser_in_counter_bitcount_8_MC_D2_439 : STD_LOGIC; 
  signal ser_in_counter_bitcount_8_MC_D2_PT_0_440 : STD_LOGIC; 
  signal ser_in_counter_bitcount_8_MC_D2_PT_1_441 : STD_LOGIC; 
  signal ser_in_counter_bitcount_7_MC_Q : STD_LOGIC; 
  signal ser_in_counter_bitcount_7_MC_D_443 : STD_LOGIC; 
  signal ser_in_counter_bitcount_7_MC_tsimcreated_xor_Q_444 : STD_LOGIC; 
  signal ser_in_counter_bitcount_7_MC_tsimcreated_prld_Q_445 : STD_LOGIC; 
  signal ser_in_counter_bitcount_7_MC_D1_446 : STD_LOGIC; 
  signal ser_in_counter_bitcount_7_MC_D2_447 : STD_LOGIC; 
  signal ser_in_counter_bitcount_9_MC_Q : STD_LOGIC; 
  signal ser_in_counter_bitcount_9_MC_D_449 : STD_LOGIC; 
  signal ser_in_counter_bitcount_9_MC_tsimcreated_xor_Q_450 : STD_LOGIC; 
  signal ser_in_counter_bitcount_9_MC_tsimcreated_prld_Q_451 : STD_LOGIC; 
  signal ser_in_counter_bitcount_9_MC_D1_452 : STD_LOGIC; 
  signal ser_in_counter_bitcount_9_MC_D2_453 : STD_LOGIC; 
  signal ser_in_counter_bitcount_9_MC_D2_PT_0_454 : STD_LOGIC; 
  signal ser_in_counter_bitcount_9_MC_D2_PT_1_455 : STD_LOGIC; 
  signal N_PZ_448_MC_Q_456 : STD_LOGIC; 
  signal N_PZ_448_MC_D_457 : STD_LOGIC; 
  signal N_PZ_448_MC_D1_458 : STD_LOGIC; 
  signal N_PZ_448_MC_D2_459 : STD_LOGIC; 
  signal ser_in_counter_latchcount_1_MC_Q : STD_LOGIC; 
  signal ser_in_counter_latchcount_1_MC_D_461 : STD_LOGIC; 
  signal ser_in_counter_latchcount_1_MC_tsimcreated_xor_Q_462 : STD_LOGIC; 
  signal ser_in_counter_latchcount_1_MC_tsimcreated_prld_Q_463 : STD_LOGIC; 
  signal ser_in_counter_latchcount_1_MC_D1_464 : STD_LOGIC; 
  signal ser_in_counter_latchcount_1_MC_D2_465 : STD_LOGIC; 
  signal ser_in_counter_latchcount_2_MC_Q : STD_LOGIC; 
  signal ser_in_counter_latchcount_2_MC_D_467 : STD_LOGIC; 
  signal ser_in_counter_latchcount_2_MC_tsimcreated_xor_Q_468 : STD_LOGIC; 
  signal ser_in_counter_latchcount_2_MC_tsimcreated_prld_Q_469 : STD_LOGIC; 
  signal ser_in_counter_latchcount_2_MC_D1_470 : STD_LOGIC; 
  signal ser_in_counter_latchcount_2_MC_D2_471 : STD_LOGIC; 
  signal ser_in_counter_latchcount_3_MC_Q : STD_LOGIC; 
  signal ser_in_counter_latchcount_3_MC_D_473 : STD_LOGIC; 
  signal ser_in_counter_latchcount_3_MC_tsimcreated_xor_Q_474 : STD_LOGIC; 
  signal ser_in_counter_latchcount_3_MC_tsimcreated_prld_Q_475 : STD_LOGIC; 
  signal ser_in_counter_latchcount_3_MC_D1_476 : STD_LOGIC; 
  signal ser_in_counter_latchcount_3_MC_D2_477 : STD_LOGIC; 
  signal ser_in_counter_latchcount_4_MC_Q : STD_LOGIC; 
  signal ser_in_counter_latchcount_4_MC_D_479 : STD_LOGIC; 
  signal ser_in_counter_latchcount_4_MC_tsimcreated_xor_Q_480 : STD_LOGIC; 
  signal ser_in_counter_latchcount_4_MC_tsimcreated_prld_Q_481 : STD_LOGIC; 
  signal ser_in_counter_latchcount_4_MC_D1_482 : STD_LOGIC; 
  signal ser_in_counter_latchcount_4_MC_D2_483 : STD_LOGIC; 
  signal ser_in_counter_latchcount_5_MC_Q : STD_LOGIC; 
  signal ser_in_counter_latchcount_5_MC_D_485 : STD_LOGIC; 
  signal ser_in_counter_latchcount_5_MC_tsimcreated_xor_Q_486 : STD_LOGIC; 
  signal ser_in_counter_latchcount_5_MC_tsimcreated_prld_Q_487 : STD_LOGIC; 
  signal ser_in_counter_latchcount_5_MC_D1_488 : STD_LOGIC; 
  signal ser_in_counter_latchcount_5_MC_D2_489 : STD_LOGIC; 
  signal ser_in_counter_latchcount_6_MC_Q : STD_LOGIC; 
  signal ser_in_counter_latchcount_6_MC_D_491 : STD_LOGIC; 
  signal ser_in_counter_latchcount_6_MC_tsimcreated_xor_Q_492 : STD_LOGIC; 
  signal ser_in_counter_latchcount_6_MC_tsimcreated_prld_Q_493 : STD_LOGIC; 
  signal ser_in_counter_latchcount_6_MC_D1_494 : STD_LOGIC; 
  signal ser_in_counter_latchcount_6_MC_D2_495 : STD_LOGIC; 
  signal N_PZ_383_MC_Q_496 : STD_LOGIC; 
  signal N_PZ_383_MC_D_497 : STD_LOGIC; 
  signal N_PZ_383_MC_D1_498 : STD_LOGIC; 
  signal N_PZ_383_MC_D2_499 : STD_LOGIC; 
  signal N_PZ_383_MC_D2_PT_0_500 : STD_LOGIC; 
  signal N_PZ_383_MC_D2_PT_1_501 : STD_LOGIC; 
  signal panel_select_MC_Q_tsimrenamed_net_Q_502 : STD_LOGIC; 
  signal panel_select_MC_D_503 : STD_LOGIC; 
  signal panel_select_MC_D1_504 : STD_LOGIC; 
  signal panel_select_MC_D2_505 : STD_LOGIC; 
  signal panel_select_MC_D2_PT_0_506 : STD_LOGIC; 
  signal panel_select_MC_D2_PT_1_507 : STD_LOGIC; 
  signal panel_select_MC_D2_PT_2_508 : STD_LOGIC; 
  signal panel_select_MC_D2_PT_3_509 : STD_LOGIC; 
  signal panel_select_MC_D2_PT_4_510 : STD_LOGIC; 
  signal panel_select_MC_D2_PT_5_511 : STD_LOGIC; 
  signal panel_select_MC_D2_PT_6_512 : STD_LOGIC; 
  signal panel_select_MC_D2_PT_7_513 : STD_LOGIC; 
  signal panel_select_MC_D2_PT_8_514 : STD_LOGIC; 
  signal panel_select_MC_D2_PT_9_515 : STD_LOGIC; 
  signal panel_select_MC_D2_PT_10_516 : STD_LOGIC; 
  signal panel_select_MC_D2_PT_11_517 : STD_LOGIC; 
  signal panel_select_MC_D2_PT_12_518 : STD_LOGIC; 
  signal panel_select_MC_D2_PT_13_519 : STD_LOGIC; 
  signal panel_select_MC_D2_PT_14_520 : STD_LOGIC; 
  signal panel_select_MC_D2_PT_15_521 : STD_LOGIC; 
  signal panel_select_MC_D2_PT_16_522 : STD_LOGIC; 
  signal panel_select_MC_D2_PT_17_523 : STD_LOGIC; 
  signal panel_select_MC_D2_PT_18_524 : STD_LOGIC; 
  signal grayscale_clk_MC_Q_tsimrenamed_net_Q_525 : STD_LOGIC; 
  signal grayscale_clk_MC_D_526 : STD_LOGIC; 
  signal grayscale_clk_MC_D1_527 : STD_LOGIC; 
  signal grayscale_clk_MC_D2_528 : STD_LOGIC; 
  signal grclkgen_grclk_ctr_sig_529 : STD_LOGIC; 
  signal grayscale_clk_MC_D2_PT_0_530 : STD_LOGIC; 
  signal N_PZ_372_531 : STD_LOGIC; 
  signal grayscale_clk_MC_D2_PT_1_532 : STD_LOGIC; 
  signal grclkgen_proc_sclk_hlf_533 : STD_LOGIC; 
  signal grayscale_clk_MC_D2_PT_2_534 : STD_LOGIC; 
  signal grclkgen_grclk_ctr_sig_MC_Q : STD_LOGIC; 
  signal grclkgen_grclk_ctr_sig_MC_D_536 : STD_LOGIC; 
  signal grclkgen_grclk_ctr_sig_MC_tsimcreated_xor_Q_537 : STD_LOGIC; 
  signal FOOBAR6_ctinst_5_538 : STD_LOGIC; 
  signal grclkgen_grclk_ctr_sig_MC_tsimcreated_prld_Q_539 : STD_LOGIC; 
  signal grclkgen_grclk_ctr_sig_MC_D1_540 : STD_LOGIC; 
  signal grclkgen_grclk_ctr_sig_MC_D2_541 : STD_LOGIC; 
  signal N_PZ_371_542 : STD_LOGIC; 
  signal grclkgen_grclk_ctr_sig_MC_D2_PT_0_543 : STD_LOGIC; 
  signal grclkgen_grclk_ctr_sig_MC_D2_PT_1_544 : STD_LOGIC; 
  signal N_PZ_372_MC_Q_545 : STD_LOGIC; 
  signal N_PZ_372_MC_D_546 : STD_LOGIC; 
  signal N_PZ_372_MC_D1_547 : STD_LOGIC; 
  signal N_PZ_372_MC_D2_548 : STD_LOGIC; 
  signal N_PZ_371_MC_Q_549 : STD_LOGIC; 
  signal N_PZ_371_MC_D_550 : STD_LOGIC; 
  signal N_PZ_371_MC_D1_551 : STD_LOGIC; 
  signal N_PZ_371_MC_D2_552 : STD_LOGIC; 
  signal N_PZ_371_MC_D2_PT_0_553 : STD_LOGIC; 
  signal grclkgen_sync_proc_sclk_554 : STD_LOGIC; 
  signal N_PZ_371_MC_D2_PT_1_555 : STD_LOGIC; 
  signal grclkgen_sync_proc_sclk_MC_Q : STD_LOGIC; 
  signal grclkgen_sync_proc_sclk_MC_tsimcreated_prld_Q_557 : STD_LOGIC; 
  signal grclkgen_sync_proc_sclk_MC_D_558 : STD_LOGIC; 
  signal grclkgen_sync_proc_sclk_MC_D1_559 : STD_LOGIC; 
  signal grclkgen_sync_proc_sclk_MC_D2_560 : STD_LOGIC; 
  signal grclkgen_pulser_curState_FSM_FFd1_561 : STD_LOGIC; 
  signal grclkgen_pulser_curState_FSM_FFd1_MC_Q : STD_LOGIC; 
  signal grclkgen_pulser_curState_FSM_FFd1_MC_tsimcreated_prld_Q_563 : STD_LOGIC; 
  signal grclkgen_pulser_curState_FSM_FFd1_MC_D_564 : STD_LOGIC; 
  signal grclkgen_pulser_curState_FSM_FFd1_MC_D1_565 : STD_LOGIC; 
  signal grclkgen_pulser_curState_FSM_FFd1_MC_D2_566 : STD_LOGIC; 
  signal grclkgen_pulser_curState_FSM_FFd1_MC_D2_PT_0_567 : STD_LOGIC; 
  signal grclkgen_pulser_curState_FSM_FFd1_MC_D2_PT_1_568 : STD_LOGIC; 
  signal N_PZ_794_MC_Q_569 : STD_LOGIC; 
  signal N_PZ_794_570 : STD_LOGIC; 
  signal N_PZ_794_MC_D_571 : STD_LOGIC; 
  signal N_PZ_794_MC_D1_572 : STD_LOGIC; 
  signal N_PZ_794_MC_D2_573 : STD_LOGIC; 
  signal N_PZ_794_MC_D2_PT_0_574 : STD_LOGIC; 
  signal N_PZ_794_MC_D2_PT_1_575 : STD_LOGIC; 
  signal grclkgen_proc_sclk_hlf_MC_Q : STD_LOGIC; 
  signal grclkgen_proc_sclk_hlf_MC_tsimcreated_prld_Q_577 : STD_LOGIC; 
  signal grclkgen_proc_sclk_hlf_MC_D_578 : STD_LOGIC; 
  signal grclkgen_proc_sclk_hlf_MC_D1_579 : STD_LOGIC; 
  signal grclkgen_proc_sclk_hlf_MC_D2_580 : STD_LOGIC; 
  signal grclkgen_proc_sclk_hlf_MC_D2_PT_0_581 : STD_LOGIC; 
  signal grclkgen_proc_sclk_hlf_MC_D2_PT_1_582 : STD_LOGIC; 
  signal latch_out1_MC_Q_tsimrenamed_net_Q_583 : STD_LOGIC; 
  signal latch_out1_MC_D_584 : STD_LOGIC; 
  signal latch_out1_MC_D1_585 : STD_LOGIC; 
  signal latch_out1_MC_D2_586 : STD_LOGIC; 
  signal latch_out1_MC_D2_PT_0_587 : STD_LOGIC; 
  signal latch_out1_MC_D2_PT_1_588 : STD_LOGIC; 
  signal latch_out1_MC_D2_PT_2_589 : STD_LOGIC; 
  signal latch_out2_MC_Q_tsimrenamed_net_Q_590 : STD_LOGIC; 
  signal latch_out2_MC_D_591 : STD_LOGIC; 
  signal latch_out2_MC_D1_592 : STD_LOGIC; 
  signal latch_out2_MC_D2_593 : STD_LOGIC; 
  signal latch_out2_MC_D2_PT_0_594 : STD_LOGIC; 
  signal latch_out2_MC_D2_PT_1_595 : STD_LOGIC; 
  signal line_select_0_MC_Q_tsimrenamed_net_Q_596 : STD_LOGIC; 
  signal line_select_0_MC_D_597 : STD_LOGIC; 
  signal line_select_0_MC_D1_598 : STD_LOGIC; 
  signal line_select_0_MC_D2_599 : STD_LOGIC; 
  signal grclkgen_ctr_line_en_603 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_lines_0_MC_Q : STD_LOGIC; 
  signal grclkgen_ctr_cnt_lines_0_MC_D_605 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_lines_0_MC_tsimcreated_xor_Q_606 : STD_LOGIC; 
  signal FOOBAR5_ctinst_6_607 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_lines_0_MC_D1_608 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_lines_0_MC_D2_609 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_618 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_619 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_0_MC_Q : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_0_MC_D_621 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_0_MC_tsimcreated_xor_Q_622 : STD_LOGIC; 
  signal FOOBAR5_ctinst_5_623 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_0_MC_tsimcreated_prld_Q_624 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_0_MC_D1_625 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_0_MC_D2_626 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_0_MC_D2_PT_0_627 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_0_MC_D2_PT_1_628 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_0_MC_D2_PT_2_629 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_0_MC_D2_PT_3_630 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_0_MC_D2_PT_4_631 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_632 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_1_MC_Q : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_1_MC_D_634 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_1_MC_tsimcreated_xor_Q_635 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_1_MC_tsimcreated_prld_Q_636 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_1_MC_D1_637 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_1_MC_D2_638 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_1_MC_D2_PT_0_639 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_1_MC_D2_PT_1_640 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_2_MC_Q : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_2_MC_D_642 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_2_MC_tsimcreated_xor_Q_643 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_2_MC_tsimcreated_prld_Q_644 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_2_MC_D1_645 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_2_MC_D2_646 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_2_MC_D2_PT_0_647 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_2_MC_D2_PT_1_648 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_3_MC_Q : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_3_MC_D_650 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_3_MC_tsimcreated_xor_Q_651 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_3_MC_tsimcreated_prld_Q_652 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_3_MC_D1_653 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_3_MC_D2_654 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_3_MC_D2_PT_0_655 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_3_MC_D2_PT_1_656 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_4_MC_Q : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_4_MC_D_658 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_4_MC_tsimcreated_xor_Q_659 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_4_MC_tsimcreated_prld_Q_660 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_4_MC_D1_661 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_4_MC_D2_662 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_4_MC_D2_PT_0_663 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_4_MC_D2_PT_1_664 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_5_MC_Q : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_5_MC_D_666 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_5_MC_tsimcreated_xor_Q_667 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_5_MC_tsimcreated_prld_Q_668 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_5_MC_D1_669 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_5_MC_D2_670 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_5_MC_D2_PT_0_671 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_672 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_6_MC_Q : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_6_MC_D_674 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_6_MC_tsimcreated_xor_Q_675 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_6_MC_tsimcreated_prld_Q_676 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_6_MC_D1_677 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_6_MC_D2_678 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_679 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_680 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_7_MC_Q : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_7_MC_D_682 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_7_MC_tsimcreated_xor_Q_683 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_7_MC_D1_684 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_7_MC_D2_685 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_686 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_687 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_688 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_689 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_lines_1_MC_Q : STD_LOGIC; 
  signal grclkgen_ctr_cnt_lines_1_MC_D_691 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_lines_1_MC_tsimcreated_xor_Q_692 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_lines_1_MC_D1_693 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_lines_1_MC_D2_694 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_695 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_696 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_lines_2_MC_Q : STD_LOGIC; 
  signal grclkgen_ctr_cnt_lines_2_MC_D_698 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_lines_2_MC_tsimcreated_xor_Q_699 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_lines_2_MC_D1_700 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_lines_2_MC_D2_701 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_702 : STD_LOGIC; 
  signal grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_703 : STD_LOGIC; 
  signal grclkgen_ctr_line_en_MC_Q : STD_LOGIC; 
  signal grclkgen_ctr_line_en_MC_D_705 : STD_LOGIC; 
  signal grclkgen_ctr_line_en_MC_tsimcreated_xor_Q_706 : STD_LOGIC; 
  signal grclkgen_ctr_line_en_MC_tsimcreated_prld_Q_707 : STD_LOGIC; 
  signal grclkgen_ctr_line_en_MC_D1_708 : STD_LOGIC; 
  signal grclkgen_ctr_line_en_MC_D2_709 : STD_LOGIC; 
  signal grclkgen_ctr_line_en_MC_D2_PT_0_710 : STD_LOGIC; 
  signal grclkgen_ctr_line_en_MC_D2_PT_1_711 : STD_LOGIC; 
  signal line_select_1_MC_Q_tsimrenamed_net_Q_712 : STD_LOGIC; 
  signal line_select_1_MC_D_713 : STD_LOGIC; 
  signal line_select_1_MC_D1_714 : STD_LOGIC; 
  signal line_select_1_MC_D2_715 : STD_LOGIC; 
  signal line_select_2_MC_Q_tsimrenamed_net_Q_716 : STD_LOGIC; 
  signal line_select_2_MC_D_717 : STD_LOGIC; 
  signal line_select_2_MC_D1_718 : STD_LOGIC; 
  signal line_select_2_MC_D2_719 : STD_LOGIC; 
  signal line_select_3_MC_Q_tsimrenamed_net_Q_720 : STD_LOGIC; 
  signal line_select_3_MC_D_721 : STD_LOGIC; 
  signal line_select_3_MC_D1_722 : STD_LOGIC; 
  signal line_select_3_MC_D2_723 : STD_LOGIC; 
  signal line_select_4_MC_Q_tsimrenamed_net_Q_724 : STD_LOGIC; 
  signal line_select_4_MC_D_725 : STD_LOGIC; 
  signal line_select_4_MC_D1_726 : STD_LOGIC; 
  signal line_select_4_MC_D2_727 : STD_LOGIC; 
  signal line_select_5_MC_Q_tsimrenamed_net_Q_728 : STD_LOGIC; 
  signal line_select_5_MC_D_729 : STD_LOGIC; 
  signal line_select_5_MC_D1_730 : STD_LOGIC; 
  signal line_select_5_MC_D2_731 : STD_LOGIC; 
  signal line_select_6_MC_Q_tsimrenamed_net_Q_732 : STD_LOGIC; 
  signal line_select_6_MC_D_733 : STD_LOGIC; 
  signal line_select_6_MC_D1_734 : STD_LOGIC; 
  signal line_select_6_MC_D2_735 : STD_LOGIC; 
  signal line_select_7_MC_Q_tsimrenamed_net_Q_736 : STD_LOGIC; 
  signal line_select_7_MC_D_737 : STD_LOGIC; 
  signal line_select_7_MC_D1_738 : STD_LOGIC; 
  signal line_select_7_MC_D2_739 : STD_LOGIC; 
  signal mosi_a_MC_Q_tsimrenamed_net_Q_740 : STD_LOGIC; 
  signal mosi_a_MC_D_741 : STD_LOGIC; 
  signal mosi_a_MC_D1_742 : STD_LOGIC; 
  signal mosi_a_MC_D2_743 : STD_LOGIC; 
  signal serinf_flipflop_a_744 : STD_LOGIC; 
  signal mosi_a_MC_D2_PT_0_745 : STD_LOGIC; 
  signal mosi_a_MC_D2_PT_1_746 : STD_LOGIC; 
  signal serinf_flipflop_a_MC_Q : STD_LOGIC; 
  signal serinf_flipflop_a_MC_RSTF_748 : STD_LOGIC; 
  signal serinf_flipflop_a_MC_tsimcreated_prld_Q_749 : STD_LOGIC; 
  signal serinf_flipflop_a_MC_D_750 : STD_LOGIC; 
  signal serinf_flipflop_a_MC_D1_751 : STD_LOGIC; 
  signal serinf_flipflop_a_MC_D2_752 : STD_LOGIC; 
  signal serinf_flipflop_a_MC_D2_PT_0_753 : STD_LOGIC; 
  signal serinf_flipflop_a_MC_D2_PT_1_754 : STD_LOGIC; 
  signal serinf_flipflop_a_MC_D2_PT_2_755 : STD_LOGIC; 
  signal mosi_b_MC_Q_tsimrenamed_net_Q_756 : STD_LOGIC; 
  signal mosi_b_MC_D_757 : STD_LOGIC; 
  signal mosi_b_MC_D1_758 : STD_LOGIC; 
  signal mosi_b_MC_D2_759 : STD_LOGIC; 
  signal serinf_flipflop_b_760 : STD_LOGIC; 
  signal mosi_b_MC_D2_PT_0_761 : STD_LOGIC; 
  signal mosi_b_MC_D2_PT_1_762 : STD_LOGIC; 
  signal serinf_flipflop_b_MC_Q : STD_LOGIC; 
  signal serinf_flipflop_b_MC_RSTF_764 : STD_LOGIC; 
  signal serinf_flipflop_b_MC_tsimcreated_prld_Q_765 : STD_LOGIC; 
  signal serinf_flipflop_b_MC_D_766 : STD_LOGIC; 
  signal serinf_flipflop_b_MC_D1_767 : STD_LOGIC; 
  signal serinf_flipflop_b_MC_D2_768 : STD_LOGIC; 
  signal serinf_flipflop_b_MC_D2_PT_0_769 : STD_LOGIC; 
  signal serinf_flipflop_b_MC_D2_PT_1_770 : STD_LOGIC; 
  signal serinf_flipflop_b_MC_D2_PT_2_771 : STD_LOGIC; 
  signal reset_MC_Q_tsimrenamed_net_Q_772 : STD_LOGIC; 
  signal reset_MC_D_773 : STD_LOGIC; 
  signal reset_MC_D1_774 : STD_LOGIC; 
  signal reset_MC_D2_775 : STD_LOGIC; 
  signal sdout_MC_Q_tsimrenamed_net_Q_776 : STD_LOGIC; 
  signal sdout_MC_D_777 : STD_LOGIC; 
  signal sdout_MC_D1_778 : STD_LOGIC; 
  signal sdout_MC_D2_779 : STD_LOGIC; 
  signal sdout_MC_D2_PT_0_780 : STD_LOGIC; 
  signal sdout_MC_D2_PT_1_781 : STD_LOGIC; 
  signal sdprev_en_MC_UIM_782 : STD_LOGIC; 
  signal sdout_MC_D2_PT_2_783 : STD_LOGIC; 
  signal sdprev_en_MC_Q_tsimrenamed_net_Q_784 : STD_LOGIC; 
  signal sdprev_en_MC_D_785 : STD_LOGIC; 
  signal sdprev_en_MC_D1_786 : STD_LOGIC; 
  signal sdprev_en_MC_D2_787 : STD_LOGIC; 
  signal tsclk_a_MC_Q_tsimrenamed_net_Q_788 : STD_LOGIC; 
  signal tsclk_a_MC_D_789 : STD_LOGIC; 
  signal tsclk_a_MC_D1_790 : STD_LOGIC; 
  signal tsclk_a_MC_D2_791 : STD_LOGIC; 
  signal tsclk_a_MC_D2_PT_0_792 : STD_LOGIC; 
  signal serinf_ff_a_en_793 : STD_LOGIC; 
  signal tsclk_a_MC_D2_PT_1_794 : STD_LOGIC; 
  signal serinf_ff_a_en_MC_Q : STD_LOGIC; 
  signal serinf_ff_a_en_MC_RSTF_796 : STD_LOGIC; 
  signal serinf_ff_a_en_MC_tsimcreated_prld_Q_797 : STD_LOGIC; 
  signal serinf_ff_a_en_MC_D_798 : STD_LOGIC; 
  signal serinf_ff_a_en_MC_D1_799 : STD_LOGIC; 
  signal serinf_ff_a_en_MC_D2_800 : STD_LOGIC; 
  signal serinf_ff_a_en_MC_D2_PT_0_801 : STD_LOGIC; 
  signal serinf_ff_a_en_MC_D2_PT_1_802 : STD_LOGIC; 
  signal serinf_ff_a_en_MC_D2_PT_2_803 : STD_LOGIC; 
  signal tsclk_b_MC_Q_tsimrenamed_net_Q_804 : STD_LOGIC; 
  signal tsclk_b_MC_D_805 : STD_LOGIC; 
  signal tsclk_b_MC_D1_806 : STD_LOGIC; 
  signal tsclk_b_MC_D2_807 : STD_LOGIC; 
  signal tsclk_b_MC_D2_PT_0_808 : STD_LOGIC; 
  signal serinf_ff_b_en_809 : STD_LOGIC; 
  signal tsclk_b_MC_D2_PT_1_810 : STD_LOGIC; 
  signal serinf_ff_b_en_MC_Q : STD_LOGIC; 
  signal serinf_ff_b_en_MC_RSTF_812 : STD_LOGIC; 
  signal serinf_ff_b_en_MC_tsimcreated_prld_Q_813 : STD_LOGIC; 
  signal serinf_ff_b_en_MC_D_814 : STD_LOGIC; 
  signal serinf_ff_b_en_MC_D1_815 : STD_LOGIC; 
  signal serinf_ff_b_en_MC_D2_816 : STD_LOGIC; 
  signal serinf_ff_b_en_MC_D2_PT_0_817 : STD_LOGIC; 
  signal serinf_ff_b_en_MC_D2_PT_1_818 : STD_LOGIC; 
  signal serinf_ff_b_en_MC_D2_PT_2_819 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_serial_dout_0_MC_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_serial_dout_0_MC_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_serial_dout_0_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_serial_dout_0_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_0_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_0_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_0_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_0_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_0_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_0_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_0_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_0_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_0_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_0_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_0_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_0_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_0_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_0_IN16 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_0_IN17 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_0_IN18 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_0_IN19 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_0_IN20 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_0_IN21 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_0_IN22 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_0_IN23 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_0_IN24 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_0_IN25 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_0_IN26 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_0_IN27 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_0_IN28 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_0_IN29 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_0_IN30 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_0_IN31 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_1_IN16 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_1_IN17 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_1_IN18 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_1_IN19 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_1_IN20 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_1_IN21 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_1_IN22 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_1_IN23 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_1_IN24 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_1_IN25 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_1_IN26 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_1_IN27 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_1_IN28 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_1_IN29 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_1_IN30 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_1_IN31 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_2_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_2_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_2_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_2_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_2_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_2_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_2_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_2_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_2_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_2_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_2_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_2_IN16 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_2_IN17 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_2_IN18 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_2_IN19 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_2_IN20 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_2_IN21 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_2_IN22 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_2_IN23 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_2_IN24 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_2_IN25 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_2_IN26 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_2_IN27 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_2_IN28 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_2_IN29 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_2_IN30 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_PT_2_IN31 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_done_MC_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_mode_data_2_MC_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_mode_data_2_MC_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_mode_data_2_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_mode_data_2_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_mode_data_2_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_mode_data_2_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_mode_data_2_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_mode_data_2_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_mode_data_2_MC_RSTF_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_mode_data_2_MC_RSTF_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_mode_data_2_MC_CE_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_mode_data_2_MC_CE_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_mode_data_1_MC_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_mode_data_1_MC_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_mode_data_1_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_mode_data_1_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_mode_data_1_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_mode_data_1_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_mode_data_1_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_mode_data_1_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_mode_data_1_MC_RSTF_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_mode_data_1_MC_RSTF_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_mode_data_1_MC_CE_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_mode_data_1_MC_CE_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_mode_data_0_MC_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_mode_data_0_MC_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_mode_data_0_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_mode_data_0_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_mode_data_0_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_mode_data_0_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_mode_data_0_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_mode_data_0_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_mode_data_0_MC_RSTF_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_mode_data_0_MC_RSTF_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_mode_data_0_MC_CE_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_mode_data_0_MC_CE_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_serial_dout_3_MC_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_serial_dout_3_MC_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_serial_dout_3_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_serial_dout_3_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_serial_dout_3_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_serial_dout_3_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_serial_dout_3_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_serial_dout_3_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_serial_dout_3_MC_CE_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_serial_dout_3_MC_CE_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_serial_dout_2_MC_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_serial_dout_2_MC_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_serial_dout_2_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_serial_dout_2_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_serial_dout_2_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_serial_dout_2_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_serial_dout_2_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_serial_dout_2_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_serial_dout_2_MC_CE_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_serial_dout_2_MC_CE_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_serial_dout_1_MC_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_serial_dout_1_MC_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_serial_dout_1_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_serial_dout_1_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_serial_dout_1_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_serial_dout_1_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_serial_dout_1_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_serial_dout_1_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_serial_dout_1_MC_CE_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_serial_dout_1_MC_CE_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_serial_dout_0_MC_CE_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_serial_dout_0_MC_CE_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN16 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN17 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN18 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN19 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN20 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN21 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN22 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN23 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN24 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN25 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN26 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN27 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN28 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN29 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN30 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN31 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_0_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_0_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_0_MC_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_0_MC_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_0_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_0_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_0_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_0_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_0_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_0_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_0_MC_D1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_0_MC_D1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_0_MC_D1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_0_MC_D1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_0_MC_D1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_0_MC_D1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_0_MC_D1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_0_MC_D1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_0_MC_D1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_0_MC_D1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_0_MC_D1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_0_MC_D1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_0_MC_D1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_0_MC_D1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_1_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_1_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_1_MC_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_1_MC_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_1_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_1_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_1_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_1_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_0_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_0_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_0_MC_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_0_MC_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_0_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_0_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_0_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_0_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_0_MC_RSTF_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_0_MC_RSTF_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_2_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_3_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_3_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_3_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_4_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_4_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_4_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_4_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_4_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_4_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_reset_BUFR_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_reset_BUFR_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_reset_BUFR_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_reset_BUFR_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_reset_BUFR_MC_D1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_reset_BUFR_MC_D1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_reset_BUFR_MC_D1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_reset_BUFR_MC_D1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_reset_BUFR_MC_D1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_reset_BUFR_MC_D1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_reset_BUFR_MC_D1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_reset_BUFR_MC_D1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_reset_BUFR_MC_D1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_reset_BUFR_MC_D1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_reset_BUFR_MC_D1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_reset_BUFR_MC_D1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_reset_BUFR_MC_D1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_reset_BUFR_MC_D1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_0_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_0_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_0_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_0_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_0_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_0_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_0_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_0_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_0_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_0_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_0_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_0_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_0_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_tick_MC_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_tick_MC_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_tick_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_tick_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tick_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_tick_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_tick_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_tick_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_tgen_cnt_0_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_tgen_cnt_0_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_tgen_cnt_0_MC_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_tgen_cnt_0_MC_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_tgen_cnt_0_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_tgen_cnt_0_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_tgen_cnt_0_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_tgen_cnt_0_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_tgen_cnt_1_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_tgen_cnt_1_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_tgen_cnt_1_MC_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_tgen_cnt_1_MC_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_tgen_cnt_1_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_tgen_cnt_1_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_tgen_cnt_1_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_tgen_cnt_1_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_tgen_cnt_1_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_tgen_cnt_1_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_10_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_10_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_10_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_10_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_10_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_10_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_10_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_10_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_10_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_10_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_10_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_10_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_10_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_10_MC_D2_PT_1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_10_MC_D2_PT_1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_10_MC_D2_PT_1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_10_MC_D2_PT_1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_10_MC_D2_PT_1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_10_MC_D2_PT_1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_10_MC_D2_PT_1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_10_MC_D2_PT_1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_10_MC_D2_PT_1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_10_MC_D2_PT_1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_10_MC_D2_PT_1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_10_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_10_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_1_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_1_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_1_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_1_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_1_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_1_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_1_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_1_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_1_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_1_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_1_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_1_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_1_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_1_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_2_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_2_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_2_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_2_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_2_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_2_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_2_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_2_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_2_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_2_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_2_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_2_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_2_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_2_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_2_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_3_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_3_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_3_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_3_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_3_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_3_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_3_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_3_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_3_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_3_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_3_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_3_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_3_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_3_MC_D2_PT_1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_3_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_3_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_4_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_4_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_4_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_4_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_4_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_4_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_4_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_4_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_4_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_4_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_4_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_4_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_4_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_4_MC_D2_PT_1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_4_MC_D2_PT_1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_4_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_4_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_5_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_5_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_5_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_5_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_5_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_5_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_5_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_5_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_5_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_5_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_5_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_5_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_5_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_5_MC_D2_PT_1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_5_MC_D2_PT_1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_5_MC_D2_PT_1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_5_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_5_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_6_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_6_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_6_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_6_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_6_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_6_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_6_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_6_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_6_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_6_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_6_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_6_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_6_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_6_MC_D2_PT_1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_6_MC_D2_PT_1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_6_MC_D2_PT_1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_6_MC_D2_PT_1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_6_MC_D2_PT_1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_6_MC_D2_PT_1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_6_MC_D2_PT_1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_6_MC_D2_PT_1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_6_MC_D2_PT_1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_6_MC_D2_PT_1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_6_MC_D2_PT_1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_6_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_6_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_7_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_7_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_7_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_7_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_7_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_7_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_7_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_7_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_7_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_7_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_7_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_7_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_7_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_7_MC_D2_PT_1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_7_MC_D2_PT_1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_7_MC_D2_PT_1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_7_MC_D2_PT_1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_7_MC_D2_PT_1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_7_MC_D2_PT_1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_7_MC_D2_PT_1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_7_MC_D2_PT_1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_7_MC_D2_PT_1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_7_MC_D2_PT_1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_7_MC_D2_PT_1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_7_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_7_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_8_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_8_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_8_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_8_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_8_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_8_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_8_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_8_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_8_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_8_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_8_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_8_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_8_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_8_MC_D2_PT_1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_8_MC_D2_PT_1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_8_MC_D2_PT_1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_8_MC_D2_PT_1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_8_MC_D2_PT_1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_8_MC_D2_PT_1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_8_MC_D2_PT_1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_8_MC_D2_PT_1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_8_MC_D2_PT_1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_8_MC_D2_PT_1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_8_MC_D2_PT_1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_8_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_8_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_9_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_9_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_9_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_9_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_9_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_9_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_9_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_9_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_9_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_9_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_9_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_9_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_9_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_9_MC_D2_PT_1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_9_MC_D2_PT_1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_9_MC_D2_PT_1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_9_MC_D2_PT_1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_9_MC_D2_PT_1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_9_MC_D2_PT_1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_9_MC_D2_PT_1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_9_MC_D2_PT_1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_9_MC_D2_PT_1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_9_MC_D2_PT_1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_9_MC_D2_PT_1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_9_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_9_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_11_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_11_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_11_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_11_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_11_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_11_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_11_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_11_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_11_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_11_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_11_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_11_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_11_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_11_MC_D2_PT_1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_11_MC_D2_PT_1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_11_MC_D2_PT_1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_11_MC_D2_PT_1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_11_MC_D2_PT_1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_11_MC_D2_PT_1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_11_MC_D2_PT_1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_11_MC_D2_PT_1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_11_MC_D2_PT_1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_11_MC_D2_PT_1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_11_MC_D2_PT_1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_11_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_11_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_12_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_12_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_12_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_12_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_12_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_12_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_12_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_12_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_12_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_12_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_12_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_12_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_12_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_12_MC_D2_PT_1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_12_MC_D2_PT_1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_12_MC_D2_PT_1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_12_MC_D2_PT_1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_12_MC_D2_PT_1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_12_MC_D2_PT_1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_12_MC_D2_PT_1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_12_MC_D2_PT_1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_12_MC_D2_PT_1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_12_MC_D2_PT_1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_12_MC_D2_PT_1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_12_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_12_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_13_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_13_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_13_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_13_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_13_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_13_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_13_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_13_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_13_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_13_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_13_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_13_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_13_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_13_MC_D2_PT_1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_13_MC_D2_PT_1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_13_MC_D2_PT_1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_13_MC_D2_PT_1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_13_MC_D2_PT_1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_13_MC_D2_PT_1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_13_MC_D2_PT_1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_13_MC_D2_PT_1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_13_MC_D2_PT_1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_13_MC_D2_PT_1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_13_MC_D2_PT_1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_13_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_13_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_14_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_14_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_14_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_14_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_14_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_14_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_14_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_14_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN16 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN17 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN18 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN19 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN20 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN21 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN22 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN23 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN24 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN25 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN26 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN27 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN28 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN29 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN30 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN31 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_14_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_14_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_15_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_15_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_15_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_15_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_15_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_15_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_15_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_15_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN16 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN17 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN18 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN19 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN20 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN21 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN22 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN23 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN24 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN25 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN26 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN27 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN28 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN29 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN30 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN31 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_15_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_res_reg_15_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_serial_dout_7_MC_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_serial_dout_7_MC_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_serial_dout_7_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_serial_dout_7_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_serial_dout_7_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_serial_dout_7_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_serial_dout_7_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_serial_dout_7_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_serial_dout_7_MC_CE_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_serial_dout_7_MC_CE_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_2_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_2_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_2_MC_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_2_MC_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_2_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_2_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_2_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_2_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_2_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_2_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_3_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_3_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_3_MC_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_3_MC_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_3_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_3_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_3_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_3_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_4_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_4_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_4_MC_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_4_MC_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_4_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_4_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_4_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_4_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_4_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_4_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_4_MC_D1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_4_MC_D1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_6_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_6_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_6_MC_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_6_MC_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_6_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_6_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_6_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_6_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_0_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_0_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_0_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_5_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_5_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_5_MC_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_5_MC_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_5_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_5_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_5_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_5_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_PT_4_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_PT_4_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_PT_5_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_PT_5_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_PT_5_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_PT_5_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_PT_5_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_PT_5_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_8_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_8_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_8_MC_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_8_MC_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_8_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_8_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_8_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_8_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_0_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_0_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_0_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_0_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_0_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_7_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_7_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_7_MC_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_7_MC_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_7_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_7_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_7_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_7_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_7_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_7_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_7_MC_D1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_7_MC_D1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_7_MC_D1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_7_MC_D1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_7_MC_D1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_9_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_9_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_9_MC_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_9_MC_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_9_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_9_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_9_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_9_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_0_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_0_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_0_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_0_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_0_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_0_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_0_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_0_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_0_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_0_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_0_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_0_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_0_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_N_PZ_448_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_N_PZ_448_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_N_PZ_448_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_N_PZ_448_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_1_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_1_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_1_MC_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_1_MC_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_1_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_1_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_1_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_1_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_1_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_1_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_1_MC_D1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_1_MC_D1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_1_MC_D1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_1_MC_D1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_1_MC_D1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_1_MC_D1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_1_MC_D1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_1_MC_D1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_1_MC_D1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_1_MC_D1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_1_MC_D1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_1_MC_D1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_1_MC_D1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_1_MC_D1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_2_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_2_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_2_MC_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_2_MC_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_2_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_2_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_2_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_2_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_2_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_2_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_2_MC_D1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_2_MC_D1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_2_MC_D1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_2_MC_D1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_2_MC_D1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_2_MC_D1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_2_MC_D1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_2_MC_D1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_2_MC_D1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_2_MC_D1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_2_MC_D1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_2_MC_D1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_2_MC_D1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_2_MC_D1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_3_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_3_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_3_MC_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_3_MC_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_3_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_3_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_3_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_3_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_3_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_3_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_3_MC_D1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_3_MC_D1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_3_MC_D1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_3_MC_D1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_3_MC_D1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_3_MC_D1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_3_MC_D1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_3_MC_D1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_3_MC_D1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_3_MC_D1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_3_MC_D1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_3_MC_D1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_3_MC_D1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_3_MC_D1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_4_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_4_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_4_MC_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_4_MC_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_4_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_4_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_4_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_4_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_4_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_4_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_4_MC_D1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_4_MC_D1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_4_MC_D1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_4_MC_D1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_4_MC_D1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_4_MC_D1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_4_MC_D1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_4_MC_D1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_4_MC_D1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_4_MC_D1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_4_MC_D1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_4_MC_D1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_4_MC_D1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_4_MC_D1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_5_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_5_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_5_MC_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_5_MC_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_5_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_5_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_5_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_5_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_5_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_5_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_5_MC_D1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_5_MC_D1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_5_MC_D1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_5_MC_D1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_5_MC_D1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_5_MC_D1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_5_MC_D1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_5_MC_D1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_5_MC_D1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_5_MC_D1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_5_MC_D1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_5_MC_D1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_5_MC_D1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_5_MC_D1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_6_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_6_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_6_MC_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_6_MC_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_6_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_6_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_6_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_6_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN16 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN17 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN18 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN19 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN20 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN21 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN22 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN23 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN24 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN25 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN26 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN27 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN28 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN29 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN30 : STD_LOGIC; 
  signal NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN31 : STD_LOGIC; 
  signal NlwBufferSignal_N_PZ_383_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_N_PZ_383_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_N_PZ_383_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_N_PZ_383_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_N_PZ_383_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_N_PZ_383_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_N_PZ_383_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_N_PZ_383_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_4_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_4_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_4_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_5_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_5_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_5_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_6_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_6_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_6_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_7_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_7_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_7_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_8_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_8_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_8_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_9_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_9_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_9_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_10_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_10_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_10_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_11_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_11_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_11_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_12_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_12_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_12_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_13_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_13_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_13_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_14_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_14_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_14_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_15_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_15_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_15_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_16_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_16_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_16_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_17_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_17_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_17_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_18_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_18_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_PT_18_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_IN16 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_IN17 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_IN18 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_IN19 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_IN20 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_IN21 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_IN22 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_IN23 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_IN24 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_IN25 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_IN26 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_IN27 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_IN28 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_IN29 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_IN30 : STD_LOGIC; 
  signal NlwBufferSignal_panel_select_MC_D2_IN31 : STD_LOGIC; 
  signal NlwBufferSignal_grayscale_clk_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grayscale_clk_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grayscale_clk_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grayscale_clk_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grayscale_clk_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grayscale_clk_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grayscale_clk_MC_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grayscale_clk_MC_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grayscale_clk_MC_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_grayscale_clk_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grayscale_clk_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grayscale_clk_MC_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_grclk_ctr_sig_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_grclk_ctr_sig_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_grclk_ctr_sig_MC_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_grclk_ctr_sig_MC_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_grclk_ctr_sig_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_grclk_ctr_sig_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_grclk_ctr_sig_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_grclk_ctr_sig_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_grclk_ctr_sig_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_grclk_ctr_sig_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_grclk_ctr_sig_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_grclk_ctr_sig_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_grclk_ctr_sig_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_grclk_ctr_sig_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_grclk_ctr_sig_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_N_PZ_372_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_N_PZ_372_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_N_PZ_372_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_N_PZ_372_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_N_PZ_371_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_N_PZ_371_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_N_PZ_371_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_N_PZ_371_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_N_PZ_371_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_N_PZ_371_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_N_PZ_371_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_N_PZ_371_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_N_PZ_371_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_sync_proc_sclk_MC_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_sync_proc_sclk_MC_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_sync_proc_sclk_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_sync_proc_sclk_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_sync_proc_sclk_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_sync_proc_sclk_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_sync_proc_sclk_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_sync_proc_sclk_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_sync_proc_sclk_MC_D1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_pulser_curState_FSM_FFd1_MC_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_pulser_curState_FSM_FFd1_MC_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_pulser_curState_FSM_FFd1_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_pulser_curState_FSM_FFd1_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_pulser_curState_FSM_FFd1_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_pulser_curState_FSM_FFd1_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_pulser_curState_FSM_FFd1_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_pulser_curState_FSM_FFd1_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_pulser_curState_FSM_FFd1_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_pulser_curState_FSM_FFd1_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_pulser_curState_FSM_FFd1_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_pulser_curState_FSM_FFd1_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_N_PZ_794_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_N_PZ_794_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_N_PZ_794_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_N_PZ_794_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_N_PZ_794_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_N_PZ_794_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_N_PZ_794_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_N_PZ_794_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_proc_sclk_hlf_MC_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_proc_sclk_hlf_MC_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_proc_sclk_hlf_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_proc_sclk_hlf_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_proc_sclk_hlf_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_proc_sclk_hlf_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_proc_sclk_hlf_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_proc_sclk_hlf_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_proc_sclk_hlf_MC_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_proc_sclk_hlf_MC_D2_PT_0_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_proc_sclk_hlf_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_proc_sclk_hlf_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_proc_sclk_hlf_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_proc_sclk_hlf_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_proc_sclk_hlf_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_proc_sclk_hlf_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out1_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out1_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out1_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out1_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out1_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out1_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out1_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out1_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out1_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out1_MC_D2_PT_1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out1_MC_D2_PT_1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out1_MC_D2_PT_1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out1_MC_D2_PT_1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out1_MC_D2_PT_1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out1_MC_D2_PT_1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out1_MC_D2_PT_1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out1_MC_D2_PT_1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out1_MC_D2_PT_1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out1_MC_D2_PT_1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out1_MC_D2_PT_1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out1_MC_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out1_MC_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out1_MC_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out1_MC_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out1_MC_D2_PT_2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out1_MC_D2_PT_2_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out1_MC_D2_PT_2_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out1_MC_D2_PT_2_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out1_MC_D2_PT_2_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out1_MC_D2_PT_2_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out1_MC_D2_PT_2_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out1_MC_D2_PT_2_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out1_MC_D2_PT_2_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out1_MC_D2_PT_2_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out1_MC_D2_PT_2_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out1_MC_D2_PT_2_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out1_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out1_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out1_MC_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out2_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out2_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out2_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out2_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out2_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out2_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out2_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out2_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out2_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out2_MC_D2_PT_1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out2_MC_D2_PT_1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out2_MC_D2_PT_1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out2_MC_D2_PT_1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out2_MC_D2_PT_1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out2_MC_D2_PT_1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out2_MC_D2_PT_1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out2_MC_D2_PT_1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out2_MC_D2_PT_1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out2_MC_D2_PT_1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out2_MC_D2_PT_1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out2_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_latch_out2_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_0_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_0_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_0_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_0_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_0_MC_D1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_0_MC_D1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_0_MC_D1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_4_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_4_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_4_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_D2_PT_0_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_0_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_0_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_0_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_0_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_0_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_0_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_0_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_0_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_0_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_0_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_0_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_0_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_0_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_0_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_line_en_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_line_en_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_line_en_MC_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_line_en_MC_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_line_en_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_line_en_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_line_en_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_line_en_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_line_en_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_line_en_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_line_en_MC_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_line_en_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_line_en_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_line_en_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_line_en_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_line_en_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_grclkgen_ctr_line_en_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_1_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_1_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_1_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_1_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_1_MC_D1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_1_MC_D1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_1_MC_D1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_2_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_2_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_2_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_2_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_2_MC_D1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_2_MC_D1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_2_MC_D1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_3_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_3_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_3_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_3_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_3_MC_D1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_3_MC_D1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_3_MC_D1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_4_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_4_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_4_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_4_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_4_MC_D1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_4_MC_D1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_4_MC_D1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_5_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_5_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_5_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_5_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_5_MC_D1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_5_MC_D1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_5_MC_D1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_6_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_6_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_6_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_6_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_6_MC_D1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_6_MC_D1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_6_MC_D1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_7_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_7_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_7_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_7_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_7_MC_D1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_7_MC_D1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_line_select_7_MC_D1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_mosi_a_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_mosi_a_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_mosi_a_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_mosi_a_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_mosi_a_MC_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_mosi_a_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_mosi_a_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_mosi_a_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_mosi_a_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_mosi_a_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_a_MC_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_a_MC_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_a_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_a_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_a_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_a_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_2_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_2_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_2_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_2_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_2_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_2_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_2_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_2_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_2_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_2_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_2_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_a_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_a_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_a_MC_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_a_MC_RSTF_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_a_MC_RSTF_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_mosi_b_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_mosi_b_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_mosi_b_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_mosi_b_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_mosi_b_MC_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_mosi_b_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_mosi_b_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_mosi_b_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_mosi_b_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_mosi_b_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_b_MC_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_b_MC_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_b_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_b_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_b_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_b_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_2_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_2_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_2_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_2_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_2_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_2_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_2_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_2_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_2_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_2_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_2_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_b_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_b_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_b_MC_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_b_MC_RSTF_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_flipflop_b_MC_RSTF_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_reset_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_reset_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_reset_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_reset_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_sdout_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_sdout_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_sdout_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_sdout_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_sdout_MC_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_sdout_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_sdout_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_sdout_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_sdout_MC_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_sdout_MC_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_sdout_MC_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_sdout_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_sdout_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_sdout_MC_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_sdprev_en_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_sdprev_en_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_sdprev_en_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_sdprev_en_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_sdprev_en_MC_D1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_sdprev_en_MC_D1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_tsclk_a_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_tsclk_a_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_tsclk_a_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_tsclk_a_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_tsclk_a_MC_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_tsclk_a_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_tsclk_a_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_tsclk_a_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_tsclk_a_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_tsclk_a_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_tsclk_a_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_a_en_MC_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_a_en_MC_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_a_en_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_a_en_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_a_en_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_a_en_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_2_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_2_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_2_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_2_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_2_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_2_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_2_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_2_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_2_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_2_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_2_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_a_en_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_a_en_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_a_en_MC_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_a_en_MC_RSTF_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_a_en_MC_RSTF_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_tsclk_b_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_tsclk_b_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_tsclk_b_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_tsclk_b_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_tsclk_b_MC_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_tsclk_b_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_tsclk_b_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_tsclk_b_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_tsclk_b_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_tsclk_b_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_tsclk_b_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_b_en_MC_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_b_en_MC_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_b_en_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_b_en_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_b_en_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_b_en_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_2_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_2_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_2_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_2_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_2_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_2_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_2_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_2_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_2_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_2_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_2_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_b_en_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_b_en_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_b_en_MC_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_b_en_MC_RSTF_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_serinf_ff_b_en_MC_RSTF_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_FOOBAR1_ctinst_5_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_FOOBAR1_ctinst_5_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_FOOBAR2_ctinst_5_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_FOOBAR2_ctinst_5_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_FOOBAR3_ctinst_5_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_FOOBAR3_ctinst_5_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_FOOBAR5_ctinst_5_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_FOOBAR5_ctinst_5_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_FOOBAR5_ctinst_6_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_FOOBAR5_ctinst_6_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_FOOBAR6_ctinst_5_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_FOOBAR6_ctinst_5_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_FOOBAR7_ctinst_5_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_FOOBAR7_ctinst_5_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_done_MC_D2_PT_0_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_done_MC_D2_PT_0_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_done_MC_D2_PT_0_IN10 : STD_LOGIC; 
  signal NlwInverterSignal_done_MC_D2_PT_0_IN12 : STD_LOGIC; 
  signal NlwInverterSignal_done_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_done_MC_D2_PT_1_IN9 : STD_LOGIC; 
  signal NlwInverterSignal_done_MC_D2_PT_1_IN11 : STD_LOGIC; 
  signal NlwInverterSignal_done_MC_D2_PT_2_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_done_MC_D2_PT_2_IN9 : STD_LOGIC; 
  signal NlwInverterSignal_done_MC_D2_PT_2_IN11 : STD_LOGIC; 
  signal NlwInverterSignal_done_MC_D2_PT_2_IN20 : STD_LOGIC; 
  signal NlwInverterSignal_mode_data_2_MC_CE_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_mode_data_2_MC_CE_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_mode_data_1_MC_CE_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_mode_data_1_MC_CE_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_mode_data_0_MC_CE_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_mode_data_0_MC_CE_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_serial_dout_3_MC_CE_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_serial_dout_3_MC_CE_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_serial_dout_2_MC_CE_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_serial_dout_2_MC_CE_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_serial_dout_1_MC_CE_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_serial_dout_1_MC_CE_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_serial_dout_0_MC_CE_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_serial_dout_0_MC_CE_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN6 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN7 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN8 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN9 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN10 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN8 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN10 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_latchcount_0_MC_D1_IN7 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_latchcount_0_MC_D1_IN9 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_bitcount_1_MC_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_bitcount_1_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_bitcount_1_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN6 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN7 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN8 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_bitcount_0_MC_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_STATE_or0000_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_STATE_or0000_MC_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_STATE_or0000_MC_D2_PT_2_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_STATE_or0000_MC_D2_PT_2_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_STATE_or0000_MC_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_STATE_or0000_MC_D2_PT_4_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_STATE_or0000_MC_D2_PT_4_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_STATE_or0000_MC_D2_PT_4_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_res_reg_0_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_res_reg_0_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_tgen_cnt_0_MC_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_res_reg_10_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_res_reg_10_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_res_reg_1_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_res_reg_1_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_res_reg_2_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_res_reg_2_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_res_reg_3_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_res_reg_3_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_res_reg_4_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_res_reg_4_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_res_reg_5_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_res_reg_5_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_res_reg_6_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_res_reg_6_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_res_reg_7_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_res_reg_7_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_res_reg_8_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_res_reg_8_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_res_reg_9_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_res_reg_9_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_res_reg_11_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_res_reg_11_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_res_reg_12_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_res_reg_12_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_res_reg_13_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_res_reg_13_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_res_reg_14_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_res_reg_14_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_res_reg_15_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_res_reg_15_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_serial_dout_7_MC_CE_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_serial_dout_7_MC_CE_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN6 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN7 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN8 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN9 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN6 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN7 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN8 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN9 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN10 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN11 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_bitcount_3_MC_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_bitcount_3_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_bitcount_3_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_bitcount_3_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_bitcount_3_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_bitcount_3_MC_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_bitcount_3_MC_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN6 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN7 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN8 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_bitcount_6_MC_D2_PT_1_IN8 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_bitcount_5_MC_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_bitcount_5_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_bitcount_5_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_bitcount_5_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_bitcount_5_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_bitcount_5_MC_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_bitcount_5_MC_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_bitcount_5_MC_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_bitcount_5_MC_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_bitcount_5_MC_D2_PT_4_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_bitcount_5_MC_D2_PT_4_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_bitcount_5_MC_D2_PT_5_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_bitcount_5_MC_D2_PT_5_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN7 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN9 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN7 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN9 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_latchcount_1_MC_D1_IN8 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_latchcount_1_MC_D1_IN10 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_latchcount_2_MC_D1_IN8 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_latchcount_2_MC_D1_IN10 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_latchcount_3_MC_D1_IN8 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_latchcount_3_MC_D1_IN10 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_latchcount_4_MC_D1_IN8 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_latchcount_4_MC_D1_IN10 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_latchcount_5_MC_D1_IN8 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_latchcount_5_MC_D1_IN10 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_latchcount_6_MC_D1_IN8 : STD_LOGIC; 
  signal NlwInverterSignal_ser_in_counter_latchcount_6_MC_D1_IN10 : STD_LOGIC; 
  signal NlwInverterSignal_N_PZ_383_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_N_PZ_383_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_N_PZ_383_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_N_PZ_383_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_panel_select_MC_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_panel_select_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_panel_select_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_panel_select_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_panel_select_MC_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_panel_select_MC_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_panel_select_MC_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_panel_select_MC_D2_PT_4_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_panel_select_MC_D2_PT_4_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_panel_select_MC_D2_PT_5_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_panel_select_MC_D2_PT_5_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_panel_select_MC_D2_PT_6_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_panel_select_MC_D2_PT_6_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_panel_select_MC_D2_PT_7_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_panel_select_MC_D2_PT_7_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_panel_select_MC_D2_PT_8_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_panel_select_MC_D2_PT_8_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_panel_select_MC_D2_PT_9_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_panel_select_MC_D2_PT_9_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_panel_select_MC_D2_PT_10_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_panel_select_MC_D2_PT_10_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_panel_select_MC_D2_PT_11_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_panel_select_MC_D2_PT_11_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_panel_select_MC_D2_PT_12_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_panel_select_MC_D2_PT_12_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_panel_select_MC_D2_PT_13_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_panel_select_MC_D2_PT_13_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_panel_select_MC_D2_PT_14_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_panel_select_MC_D2_PT_14_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_panel_select_MC_D2_PT_15_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_panel_select_MC_D2_PT_15_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_panel_select_MC_D2_PT_16_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_panel_select_MC_D2_PT_16_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_panel_select_MC_D2_PT_17_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_panel_select_MC_D2_PT_17_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_panel_select_MC_D2_PT_18_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_panel_select_MC_D2_PT_18_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_grayscale_clk_MC_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_grayscale_clk_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_grayscale_clk_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_grayscale_clk_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_grayscale_clk_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_grayscale_clk_MC_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_grclk_ctr_sig_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_N_PZ_371_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_sync_proc_sclk_MC_D1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_sync_proc_sclk_MC_D1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_pulser_curState_FSM_FFd1_MC_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_pulser_curState_FSM_FFd1_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_pulser_curState_FSM_FFd1_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_pulser_curState_FSM_FFd1_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_pulser_curState_FSM_FFd1_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_N_PZ_794_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_proc_sclk_hlf_MC_D2_PT_0_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_proc_sclk_hlf_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_latch_out1_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_latch_out1_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_latch_out1_MC_D2_PT_1_IN7 : STD_LOGIC; 
  signal NlwInverterSignal_latch_out1_MC_D2_PT_1_IN9 : STD_LOGIC; 
  signal NlwInverterSignal_latch_out1_MC_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_latch_out1_MC_D2_PT_2_IN7 : STD_LOGIC; 
  signal NlwInverterSignal_latch_out1_MC_D2_PT_2_IN9 : STD_LOGIC; 
  signal NlwInverterSignal_latch_out2_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_latch_out2_MC_D2_PT_1_IN6 : STD_LOGIC; 
  signal NlwInverterSignal_latch_out2_MC_D2_PT_1_IN8 : STD_LOGIC; 
  signal NlwInverterSignal_line_select_0_MC_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_line_select_0_MC_D1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_line_select_0_MC_D1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_line_select_0_MC_D1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_line_select_0_MC_D1_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN6 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN7 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN8 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN9 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN6 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN7 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN8 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN9 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN10 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_0_MC_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_4_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN6 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_1_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_1_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_1_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN6 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN7 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN8 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN9 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN6 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN7 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN8 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN9 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN10 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN6 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN7 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN8 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN9 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN10 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN6 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN7 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN8 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN9 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN10 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN11 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN6 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN7 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN8 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN9 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN10 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN11 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN6 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN7 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN8 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN9 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN10 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN11 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN12 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_line_en_MC_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_line_en_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_grclkgen_ctr_line_en_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_line_select_1_MC_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_line_select_1_MC_D1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_line_select_1_MC_D1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_line_select_1_MC_D1_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_line_select_2_MC_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_line_select_2_MC_D1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_line_select_2_MC_D1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_line_select_2_MC_D1_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_line_select_3_MC_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_line_select_3_MC_D1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_line_select_3_MC_D1_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_line_select_4_MC_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_line_select_4_MC_D1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_line_select_4_MC_D1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_line_select_4_MC_D1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_line_select_5_MC_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_line_select_5_MC_D1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_line_select_5_MC_D1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_line_select_6_MC_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_line_select_6_MC_D1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_line_select_6_MC_D1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_line_select_7_MC_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_line_select_7_MC_D1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_mosi_a_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_flipflop_a_MC_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_flipflop_a_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_flipflop_a_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_flipflop_a_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_flipflop_a_MC_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_flipflop_a_MC_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_flipflop_a_MC_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_flipflop_a_MC_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_flipflop_a_MC_D2_PT_2_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_flipflop_a_MC_D2_PT_2_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_flipflop_a_MC_D2_PT_2_IN6 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_flipflop_a_MC_D2_PT_2_IN7 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_flipflop_a_MC_D2_PT_2_IN8 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_flipflop_a_MC_D2_PT_2_IN9 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_flipflop_a_MC_D2_PT_2_IN10 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_flipflop_a_MC_D2_PT_2_IN11 : STD_LOGIC; 
  signal NlwInverterSignal_mosi_b_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_flipflop_b_MC_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_flipflop_b_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_flipflop_b_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_flipflop_b_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_flipflop_b_MC_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_flipflop_b_MC_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_flipflop_b_MC_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_flipflop_b_MC_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_flipflop_b_MC_D2_PT_2_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_flipflop_b_MC_D2_PT_2_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_flipflop_b_MC_D2_PT_2_IN6 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_flipflop_b_MC_D2_PT_2_IN7 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_flipflop_b_MC_D2_PT_2_IN8 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_flipflop_b_MC_D2_PT_2_IN9 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_flipflop_b_MC_D2_PT_2_IN10 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_flipflop_b_MC_D2_PT_2_IN11 : STD_LOGIC; 
  signal NlwInverterSignal_sdout_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_sdout_MC_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_sdprev_en_MC_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_sdprev_en_MC_D1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_sdprev_en_MC_D1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_sdprev_en_MC_D1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_sdprev_en_MC_D1_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_tsclk_a_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_ff_a_en_MC_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_ff_a_en_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_ff_a_en_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_ff_a_en_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_ff_a_en_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_ff_a_en_MC_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_ff_a_en_MC_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_ff_a_en_MC_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_ff_a_en_MC_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_ff_a_en_MC_D2_PT_2_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_ff_a_en_MC_D2_PT_2_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_ff_a_en_MC_D2_PT_2_IN6 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_ff_a_en_MC_D2_PT_2_IN7 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_ff_a_en_MC_D2_PT_2_IN8 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_ff_a_en_MC_D2_PT_2_IN9 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_ff_a_en_MC_D2_PT_2_IN10 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_ff_a_en_MC_D2_PT_2_IN11 : STD_LOGIC; 
  signal NlwInverterSignal_tsclk_b_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_tsclk_b_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_ff_b_en_MC_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_ff_b_en_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_ff_b_en_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_ff_b_en_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_ff_b_en_MC_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_ff_b_en_MC_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_ff_b_en_MC_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_ff_b_en_MC_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_ff_b_en_MC_D2_PT_2_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_ff_b_en_MC_D2_PT_2_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_ff_b_en_MC_D2_PT_2_IN6 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_ff_b_en_MC_D2_PT_2_IN7 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_ff_b_en_MC_D2_PT_2_IN8 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_ff_b_en_MC_D2_PT_2_IN9 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_ff_b_en_MC_D2_PT_2_IN10 : STD_LOGIC; 
  signal NlwInverterSignal_serinf_ff_b_en_MC_D2_PT_2_IN11 : STD_LOGIC; 
  signal ser_in_counter_latchcount : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal ser_in_counter_bitcount : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal res_reg : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal grclkgen_tgen_cnt : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal grclkgen_ctr_cnt_lines : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal grclkgen_ctr_cnt_gclk : STD_LOGIC_VECTOR ( 7 downto 0 ); 
begin
  addr_sel_0_II_UIM : X_BUF
    port map (
      I => addr_sel(0),
      O => addr_sel_0_II_UIM_1
    );
  addr_sel_1_II_UIM : X_BUF
    port map (
      I => addr_sel(1),
      O => addr_sel_1_II_UIM_3
    );
  addr_sel_2_II_UIM : X_BUF
    port map (
      I => addr_sel(2),
      O => addr_sel_2_II_UIM_5
    );
  addr_sel_3_II_UIM : X_BUF
    port map (
      I => addr_sel(3),
      O => addr_sel_3_II_UIM_7
    );
  sclk_II_UIM : X_BUF
    port map (
      I => sclk,
      O => sclk_II_UIM_9
    );
  sclk_II_FCLK : X_BUF
    port map (
      I => sclk,
      O => sclk_II_FCLK_10
    );
  gclk_II_UIM : X_BUF
    port map (
      I => gclk,
      O => gclk_II_UIM_12
    );
  gclk_II_FCLK : X_BUF
    port map (
      I => gclk,
      O => gclk_II_FCLK_13
    );
  proc_rcv_en_II_UIM : X_BUF
    port map (
      I => proc_rcv_en,
      O => proc_rcv_en_II_UIM_15
    );
  proc_grclk_en_II_UIM : X_BUF
    port map (
      I => proc_grclk_en,
      O => proc_grclk_en_II_UIM_17
    );
  proc_wr_b_II_UIM : X_BUF
    port map (
      I => proc_wr_b,
      O => proc_wr_b_II_UIM_19
    );
  proc_wr_a_II_UIM : X_BUF
    port map (
      I => proc_wr_a,
      O => proc_wr_a_II_UIM_21
    );
  proc_sclk_II_UIM : X_BUF
    port map (
      I => proc_sclk,
      O => proc_sclk_II_UIM_23
    );
  proc_latch_II_UIM : X_BUF
    port map (
      I => proc_latch,
      O => proc_latch_II_UIM_25
    );
  miso_a_II_UIM : X_BUF
    port map (
      I => miso_a,
      O => miso_a_II_UIM_27
    );
  miso_b_II_UIM : X_BUF
    port map (
      I => miso_b,
      O => miso_b_II_UIM_29
    );
  proc_mosi_II_UIM : X_BUF
    port map (
      I => proc_mosi,
      O => proc_mosi_II_UIM_31
    );
  sdin_II_UIM : X_BUF
    port map (
      I => sdin,
      O => sdin_II_UIM_33
    );
  sdin_II_IREG : X_BUF
    port map (
      I => sdin,
      O => sdin_II_IREG_34
    );
  ser_in_serial_dout_0_MC_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_ser_in_serial_dout_0_MC_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_ser_in_serial_dout_0_MC_tsimcreated_prld_IN1,
      O => ser_in_serial_dout_0_MC_tsimcreated_prld_Q_37
    );
  Gnd : X_ZERO
    port map (
      O => Gnd_36
    );
  ser_in_serial_dout_0_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_ser_in_serial_dout_0_MC_REG_IN,
      CE => ser_in_serial_dout_0_MC_CE_38,
      CLK => NlwBufferSignal_ser_in_serial_dout_0_MC_REG_CLK,
      SET => Gnd_36,
      RST => ser_in_serial_dout_0_MC_tsimcreated_prld_Q_37,
      O => ser_in_serial_dout_0_Q
    );
  sdprev_II_UIM : X_BUF
    port map (
      I => sdprev,
      O => sdprev_II_UIM_41
    );
  done_42 : X_BUF
    port map (
      I => done_MC_Q_43,
      O => done
    );
  grayscale_clk_44 : X_BUF
    port map (
      I => grayscale_clk_MC_Q_45,
      O => grayscale_clk
    );
  latch_out1_46 : X_BUF
    port map (
      I => latch_out1_MC_Q_47,
      O => latch_out1
    );
  latch_out2_48 : X_BUF
    port map (
      I => latch_out2_MC_Q_49,
      O => latch_out2
    );
  line_select_0_Q : X_BUF
    port map (
      I => line_select_0_MC_Q_51,
      O => line_select(0)
    );
  line_select_1_Q : X_BUF
    port map (
      I => line_select_1_MC_Q_53,
      O => line_select(1)
    );
  line_select_2_Q : X_BUF
    port map (
      I => line_select_2_MC_Q_55,
      O => line_select(2)
    );
  line_select_3_Q : X_BUF
    port map (
      I => line_select_3_MC_Q_57,
      O => line_select(3)
    );
  line_select_4_Q : X_BUF
    port map (
      I => line_select_4_MC_Q_59,
      O => line_select(4)
    );
  line_select_5_Q : X_BUF
    port map (
      I => line_select_5_MC_Q_61,
      O => line_select(5)
    );
  line_select_6_Q : X_BUF
    port map (
      I => line_select_6_MC_Q_63,
      O => line_select(6)
    );
  line_select_7_Q : X_BUF
    port map (
      I => line_select_7_MC_Q_65,
      O => line_select(7)
    );
  mode_data_0_Q : X_BUF
    port map (
      I => mode_data_0_MC_Q_67,
      O => mode_data(0)
    );
  mode_data_1_Q : X_BUF
    port map (
      I => mode_data_1_MC_Q_69,
      O => mode_data(1)
    );
  mode_data_2_Q : X_BUF
    port map (
      I => mode_data_2_MC_Q_71,
      O => mode_data(2)
    );
  mosi_a_72 : X_BUF
    port map (
      I => mosi_a_MC_Q_73,
      O => mosi_a
    );
  mosi_b_74 : X_BUF
    port map (
      I => mosi_b_MC_Q_75,
      O => mosi_b
    );
  panel_select_76 : X_BUF
    port map (
      I => panel_select_MC_Q_77,
      O => panel_select
    );
  reset_78 : X_BUF
    port map (
      I => reset_MC_Q_79,
      O => reset
    );
  sdout_80 : X_BUF
    port map (
      I => sdout_MC_Q_81,
      O => sdout
    );
  sdprev_en_82 : X_BUF
    port map (
      I => sdprev_en_MC_Q_83,
      O => sdprev_en
    );
  tsclk_a_84 : X_BUF
    port map (
      I => tsclk_a_MC_Q_85,
      O => tsclk_a
    );
  tsclk_b_86 : X_BUF
    port map (
      I => tsclk_b_MC_Q_87,
      O => tsclk_b
    );
  done_MC_Q : X_BUF
    port map (
      I => done_MC_Q_tsimrenamed_net_Q,
      O => done_MC_Q_43
    );
  done_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_done_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_done_MC_tsimcreated_xor_IN1,
      O => done_MC_tsimcreated_xor_Q_90
    );
  done_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_done_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_done_MC_REG_CLK,
      SET => Gnd_36,
      RST => Gnd_36,
      O => done_MC_Q_tsimrenamed_net_Q
    );
  Vcc : X_ONE
    port map (
      O => Vcc_91
    );
  done_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_done_MC_D_IN0,
      I1 => NlwBufferSignal_done_MC_D_IN1,
      O => done_MC_D_89
    );
  done_MC_D1 : X_ZERO
    port map (
      O => done_MC_D1_92
    );
  done_MC_D2_PT_0 : X_AND32
    port map (
      I0 => NlwBufferSignal_done_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_done_MC_D2_PT_0_IN1,
      I2 => NlwBufferSignal_done_MC_D2_PT_0_IN2,
      I3 => NlwBufferSignal_done_MC_D2_PT_0_IN3,
      I4 => NlwInverterSignal_done_MC_D2_PT_0_IN4,
      I5 => NlwInverterSignal_done_MC_D2_PT_0_IN5,
      I6 => NlwBufferSignal_done_MC_D2_PT_0_IN6,
      I7 => NlwBufferSignal_done_MC_D2_PT_0_IN7,
      I8 => NlwBufferSignal_done_MC_D2_PT_0_IN8,
      I9 => NlwBufferSignal_done_MC_D2_PT_0_IN9,
      I10 => NlwInverterSignal_done_MC_D2_PT_0_IN10,
      I11 => NlwBufferSignal_done_MC_D2_PT_0_IN11,
      I12 => NlwInverterSignal_done_MC_D2_PT_0_IN12,
      I13 => NlwBufferSignal_done_MC_D2_PT_0_IN13,
      I14 => NlwBufferSignal_done_MC_D2_PT_0_IN14,
      I15 => NlwBufferSignal_done_MC_D2_PT_0_IN15,
      I16 => NlwBufferSignal_done_MC_D2_PT_0_IN16,
      I17 => NlwBufferSignal_done_MC_D2_PT_0_IN17,
      I18 => NlwBufferSignal_done_MC_D2_PT_0_IN18,
      I19 => NlwBufferSignal_done_MC_D2_PT_0_IN19,
      I20 => NlwBufferSignal_done_MC_D2_PT_0_IN20,
      I21 => NlwBufferSignal_done_MC_D2_PT_0_IN21,
      I22 => NlwBufferSignal_done_MC_D2_PT_0_IN22,
      I23 => NlwBufferSignal_done_MC_D2_PT_0_IN23,
      I24 => NlwBufferSignal_done_MC_D2_PT_0_IN24,
      I25 => NlwBufferSignal_done_MC_D2_PT_0_IN25,
      I26 => NlwBufferSignal_done_MC_D2_PT_0_IN26,
      I27 => NlwBufferSignal_done_MC_D2_PT_0_IN27,
      I28 => NlwBufferSignal_done_MC_D2_PT_0_IN28,
      I29 => NlwBufferSignal_done_MC_D2_PT_0_IN29,
      I30 => NlwBufferSignal_done_MC_D2_PT_0_IN30,
      I31 => NlwBufferSignal_done_MC_D2_PT_0_IN31,
      O => done_MC_D2_PT_0_115
    );
  done_MC_D2_PT_1 : X_AND32
    port map (
      I0 => NlwBufferSignal_done_MC_D2_PT_1_IN0,
      I1 => NlwBufferSignal_done_MC_D2_PT_1_IN1,
      I2 => NlwBufferSignal_done_MC_D2_PT_1_IN2,
      I3 => NlwBufferSignal_done_MC_D2_PT_1_IN3,
      I4 => NlwInverterSignal_done_MC_D2_PT_1_IN4,
      I5 => NlwBufferSignal_done_MC_D2_PT_1_IN5,
      I6 => NlwBufferSignal_done_MC_D2_PT_1_IN6,
      I7 => NlwBufferSignal_done_MC_D2_PT_1_IN7,
      I8 => NlwBufferSignal_done_MC_D2_PT_1_IN8,
      I9 => NlwInverterSignal_done_MC_D2_PT_1_IN9,
      I10 => NlwBufferSignal_done_MC_D2_PT_1_IN10,
      I11 => NlwInverterSignal_done_MC_D2_PT_1_IN11,
      I12 => NlwBufferSignal_done_MC_D2_PT_1_IN12,
      I13 => NlwBufferSignal_done_MC_D2_PT_1_IN13,
      I14 => NlwBufferSignal_done_MC_D2_PT_1_IN14,
      I15 => NlwBufferSignal_done_MC_D2_PT_1_IN15,
      I16 => NlwBufferSignal_done_MC_D2_PT_1_IN16,
      I17 => NlwBufferSignal_done_MC_D2_PT_1_IN17,
      I18 => NlwBufferSignal_done_MC_D2_PT_1_IN18,
      I19 => NlwBufferSignal_done_MC_D2_PT_1_IN19,
      I20 => NlwBufferSignal_done_MC_D2_PT_1_IN20,
      I21 => NlwBufferSignal_done_MC_D2_PT_1_IN21,
      I22 => NlwBufferSignal_done_MC_D2_PT_1_IN22,
      I23 => NlwBufferSignal_done_MC_D2_PT_1_IN23,
      I24 => NlwBufferSignal_done_MC_D2_PT_1_IN24,
      I25 => NlwBufferSignal_done_MC_D2_PT_1_IN25,
      I26 => NlwBufferSignal_done_MC_D2_PT_1_IN26,
      I27 => NlwBufferSignal_done_MC_D2_PT_1_IN27,
      I28 => NlwBufferSignal_done_MC_D2_PT_1_IN28,
      I29 => NlwBufferSignal_done_MC_D2_PT_1_IN29,
      I30 => NlwBufferSignal_done_MC_D2_PT_1_IN30,
      I31 => NlwBufferSignal_done_MC_D2_PT_1_IN31,
      O => done_MC_D2_PT_1_116
    );
  done_MC_D2_PT_2 : X_AND32
    port map (
      I0 => NlwBufferSignal_done_MC_D2_PT_2_IN0,
      I1 => NlwBufferSignal_done_MC_D2_PT_2_IN1,
      I2 => NlwBufferSignal_done_MC_D2_PT_2_IN2,
      I3 => NlwBufferSignal_done_MC_D2_PT_2_IN3,
      I4 => NlwInverterSignal_done_MC_D2_PT_2_IN4,
      I5 => NlwBufferSignal_done_MC_D2_PT_2_IN5,
      I6 => NlwBufferSignal_done_MC_D2_PT_2_IN6,
      I7 => NlwBufferSignal_done_MC_D2_PT_2_IN7,
      I8 => NlwBufferSignal_done_MC_D2_PT_2_IN8,
      I9 => NlwInverterSignal_done_MC_D2_PT_2_IN9,
      I10 => NlwBufferSignal_done_MC_D2_PT_2_IN10,
      I11 => NlwInverterSignal_done_MC_D2_PT_2_IN11,
      I12 => NlwBufferSignal_done_MC_D2_PT_2_IN12,
      I13 => NlwBufferSignal_done_MC_D2_PT_2_IN13,
      I14 => NlwBufferSignal_done_MC_D2_PT_2_IN14,
      I15 => NlwBufferSignal_done_MC_D2_PT_2_IN15,
      I16 => NlwBufferSignal_done_MC_D2_PT_2_IN16,
      I17 => NlwBufferSignal_done_MC_D2_PT_2_IN17,
      I18 => NlwBufferSignal_done_MC_D2_PT_2_IN18,
      I19 => NlwBufferSignal_done_MC_D2_PT_2_IN19,
      I20 => NlwInverterSignal_done_MC_D2_PT_2_IN20,
      I21 => NlwBufferSignal_done_MC_D2_PT_2_IN21,
      I22 => NlwBufferSignal_done_MC_D2_PT_2_IN22,
      I23 => NlwBufferSignal_done_MC_D2_PT_2_IN23,
      I24 => NlwBufferSignal_done_MC_D2_PT_2_IN24,
      I25 => NlwBufferSignal_done_MC_D2_PT_2_IN25,
      I26 => NlwBufferSignal_done_MC_D2_PT_2_IN26,
      I27 => NlwBufferSignal_done_MC_D2_PT_2_IN27,
      I28 => NlwBufferSignal_done_MC_D2_PT_2_IN28,
      I29 => NlwBufferSignal_done_MC_D2_PT_2_IN29,
      I30 => NlwBufferSignal_done_MC_D2_PT_2_IN30,
      I31 => NlwBufferSignal_done_MC_D2_PT_2_IN31,
      O => done_MC_D2_PT_2_118
    );
  done_MC_D2 : X_OR3
    port map (
      I0 => NlwBufferSignal_done_MC_D2_IN0,
      I1 => NlwBufferSignal_done_MC_D2_IN1,
      I2 => NlwBufferSignal_done_MC_D2_IN2,
      O => done_MC_D2_93
    );
  mode_data_2_MC_Q : X_BUF
    port map (
      I => mode_data_2_MC_Q_tsimrenamed_net_Q,
      O => mode_data_2_MC_Q_71
    );
  mode_data_2_MC_UIM : X_BUF
    port map (
      I => mode_data_2_MC_Q_tsimrenamed_net_Q,
      O => mode_data_2_MC_UIM_99
    );
  mode_data_2_MC_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_mode_data_2_MC_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_mode_data_2_MC_tsimcreated_prld_IN1,
      O => mode_data_2_MC_tsimcreated_prld_Q_121
    );
  mode_data_2_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_mode_data_2_MC_REG_IN,
      CE => mode_data_2_MC_CE_123,
      CLK => NlwBufferSignal_mode_data_2_MC_REG_CLK,
      SET => Gnd_36,
      RST => mode_data_2_MC_tsimcreated_prld_Q_121,
      O => mode_data_2_MC_Q_tsimrenamed_net_Q
    );
  mode_data_2_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_mode_data_2_MC_D_IN0,
      I1 => NlwBufferSignal_mode_data_2_MC_D_IN1,
      O => mode_data_2_MC_D_122
    );
  mode_data_2_MC_D1 : X_ZERO
    port map (
      O => mode_data_2_MC_D1_124
    );
  mode_data_2_MC_D2 : X_AND2
    port map (
      I0 => NlwBufferSignal_mode_data_2_MC_D2_IN0,
      I1 => NlwBufferSignal_mode_data_2_MC_D2_IN1,
      O => mode_data_2_MC_D2_125
    );
  mode_data_2_MC_RSTF : X_AND2
    port map (
      I0 => NlwBufferSignal_mode_data_2_MC_RSTF_IN0,
      I1 => NlwBufferSignal_mode_data_2_MC_RSTF_IN1,
      O => mode_data_2_MC_RSTF_120
    );
  mode_data_2_MC_CE : X_AND2
    port map (
      I0 => NlwInverterSignal_mode_data_2_MC_CE_IN0,
      I1 => NlwInverterSignal_mode_data_2_MC_CE_IN1,
      O => mode_data_2_MC_CE_123
    );
  mode_data_1_MC_Q : X_BUF
    port map (
      I => mode_data_1_MC_Q_tsimrenamed_net_Q,
      O => mode_data_1_MC_Q_69
    );
  mode_data_1_MC_UIM : X_BUF
    port map (
      I => mode_data_1_MC_Q_tsimrenamed_net_Q,
      O => mode_data_1_MC_UIM_126
    );
  mode_data_1_MC_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_mode_data_1_MC_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_mode_data_1_MC_tsimcreated_prld_IN1,
      O => mode_data_1_MC_tsimcreated_prld_Q_131
    );
  mode_data_1_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_mode_data_1_MC_REG_IN,
      CE => mode_data_1_MC_CE_133,
      CLK => NlwBufferSignal_mode_data_1_MC_REG_CLK,
      SET => Gnd_36,
      RST => mode_data_1_MC_tsimcreated_prld_Q_131,
      O => mode_data_1_MC_Q_tsimrenamed_net_Q
    );
  mode_data_1_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_mode_data_1_MC_D_IN0,
      I1 => NlwBufferSignal_mode_data_1_MC_D_IN1,
      O => mode_data_1_MC_D_132
    );
  mode_data_1_MC_D1 : X_ZERO
    port map (
      O => mode_data_1_MC_D1_134
    );
  mode_data_1_MC_D2 : X_AND2
    port map (
      I0 => NlwBufferSignal_mode_data_1_MC_D2_IN0,
      I1 => NlwBufferSignal_mode_data_1_MC_D2_IN1,
      O => mode_data_1_MC_D2_135
    );
  mode_data_1_MC_RSTF : X_AND2
    port map (
      I0 => NlwBufferSignal_mode_data_1_MC_RSTF_IN0,
      I1 => NlwBufferSignal_mode_data_1_MC_RSTF_IN1,
      O => mode_data_1_MC_RSTF_130
    );
  mode_data_1_MC_CE : X_AND2
    port map (
      I0 => NlwInverterSignal_mode_data_1_MC_CE_IN0,
      I1 => NlwInverterSignal_mode_data_1_MC_CE_IN1,
      O => mode_data_1_MC_CE_133
    );
  mode_data_0_MC_Q : X_BUF
    port map (
      I => mode_data_0_MC_Q_tsimrenamed_net_Q,
      O => mode_data_0_MC_Q_67
    );
  mode_data_0_MC_UIM : X_BUF
    port map (
      I => mode_data_0_MC_Q_tsimrenamed_net_Q,
      O => mode_data_0_MC_UIM_136
    );
  mode_data_0_MC_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_mode_data_0_MC_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_mode_data_0_MC_tsimcreated_prld_IN1,
      O => mode_data_0_MC_tsimcreated_prld_Q_139
    );
  mode_data_0_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_mode_data_0_MC_REG_IN,
      CE => mode_data_0_MC_CE_141,
      CLK => NlwBufferSignal_mode_data_0_MC_REG_CLK,
      SET => Gnd_36,
      RST => mode_data_0_MC_tsimcreated_prld_Q_139,
      O => mode_data_0_MC_Q_tsimrenamed_net_Q
    );
  mode_data_0_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_mode_data_0_MC_D_IN0,
      I1 => NlwBufferSignal_mode_data_0_MC_D_IN1,
      O => mode_data_0_MC_D_140
    );
  mode_data_0_MC_D1 : X_ZERO
    port map (
      O => mode_data_0_MC_D1_142
    );
  mode_data_0_MC_D2 : X_AND2
    port map (
      I0 => NlwBufferSignal_mode_data_0_MC_D2_IN0,
      I1 => NlwBufferSignal_mode_data_0_MC_D2_IN1,
      O => mode_data_0_MC_D2_143
    );
  mode_data_0_MC_RSTF : X_AND2
    port map (
      I0 => NlwBufferSignal_mode_data_0_MC_RSTF_IN0,
      I1 => NlwBufferSignal_mode_data_0_MC_RSTF_IN1,
      O => mode_data_0_MC_RSTF_138
    );
  mode_data_0_MC_CE : X_AND2
    port map (
      I0 => NlwInverterSignal_mode_data_0_MC_CE_IN0,
      I1 => NlwInverterSignal_mode_data_0_MC_CE_IN1,
      O => mode_data_0_MC_CE_141
    );
  ser_in_serial_dout_3_Q : X_BUF
    port map (
      I => ser_in_serial_dout_3_MC_Q,
      O => ser_in_serial_dout_3_Q_144
    );
  ser_in_serial_dout_3_MC_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_ser_in_serial_dout_3_MC_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_ser_in_serial_dout_3_MC_tsimcreated_prld_IN1,
      O => ser_in_serial_dout_3_MC_tsimcreated_prld_Q_147
    );
  ser_in_serial_dout_3_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_ser_in_serial_dout_3_MC_REG_IN,
      CE => ser_in_serial_dout_3_MC_CE_149,
      CLK => NlwBufferSignal_ser_in_serial_dout_3_MC_REG_CLK,
      SET => Gnd_36,
      RST => ser_in_serial_dout_3_MC_tsimcreated_prld_Q_147,
      O => ser_in_serial_dout_3_MC_Q
    );
  ser_in_serial_dout_3_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_ser_in_serial_dout_3_MC_D_IN0,
      I1 => NlwBufferSignal_ser_in_serial_dout_3_MC_D_IN1,
      O => ser_in_serial_dout_3_MC_D_148
    );
  ser_in_serial_dout_3_MC_D1 : X_ZERO
    port map (
      O => ser_in_serial_dout_3_MC_D1_150
    );
  ser_in_serial_dout_3_MC_D2 : X_AND2
    port map (
      I0 => NlwBufferSignal_ser_in_serial_dout_3_MC_D2_IN0,
      I1 => NlwBufferSignal_ser_in_serial_dout_3_MC_D2_IN1,
      O => ser_in_serial_dout_3_MC_D2_151
    );
  ser_in_serial_dout_3_MC_CE : X_AND2
    port map (
      I0 => NlwInverterSignal_ser_in_serial_dout_3_MC_CE_IN0,
      I1 => NlwInverterSignal_ser_in_serial_dout_3_MC_CE_IN1,
      O => ser_in_serial_dout_3_MC_CE_149
    );
  ser_in_serial_dout_2_Q : X_BUF
    port map (
      I => ser_in_serial_dout_2_MC_Q,
      O => ser_in_serial_dout_2_Q_152
    );
  ser_in_serial_dout_2_MC_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_ser_in_serial_dout_2_MC_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_ser_in_serial_dout_2_MC_tsimcreated_prld_IN1,
      O => ser_in_serial_dout_2_MC_tsimcreated_prld_Q_154
    );
  ser_in_serial_dout_2_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_ser_in_serial_dout_2_MC_REG_IN,
      CE => ser_in_serial_dout_2_MC_CE_156,
      CLK => NlwBufferSignal_ser_in_serial_dout_2_MC_REG_CLK,
      SET => Gnd_36,
      RST => ser_in_serial_dout_2_MC_tsimcreated_prld_Q_154,
      O => ser_in_serial_dout_2_MC_Q
    );
  ser_in_serial_dout_2_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_ser_in_serial_dout_2_MC_D_IN0,
      I1 => NlwBufferSignal_ser_in_serial_dout_2_MC_D_IN1,
      O => ser_in_serial_dout_2_MC_D_155
    );
  ser_in_serial_dout_2_MC_D1 : X_ZERO
    port map (
      O => ser_in_serial_dout_2_MC_D1_157
    );
  ser_in_serial_dout_2_MC_D2 : X_AND2
    port map (
      I0 => NlwBufferSignal_ser_in_serial_dout_2_MC_D2_IN0,
      I1 => NlwBufferSignal_ser_in_serial_dout_2_MC_D2_IN1,
      O => ser_in_serial_dout_2_MC_D2_158
    );
  ser_in_serial_dout_2_MC_CE : X_AND2
    port map (
      I0 => NlwInverterSignal_ser_in_serial_dout_2_MC_CE_IN0,
      I1 => NlwInverterSignal_ser_in_serial_dout_2_MC_CE_IN1,
      O => ser_in_serial_dout_2_MC_CE_156
    );
  ser_in_serial_dout_1_Q : X_BUF
    port map (
      I => ser_in_serial_dout_1_MC_Q,
      O => ser_in_serial_dout_1_Q_159
    );
  ser_in_serial_dout_1_MC_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_ser_in_serial_dout_1_MC_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_ser_in_serial_dout_1_MC_tsimcreated_prld_IN1,
      O => ser_in_serial_dout_1_MC_tsimcreated_prld_Q_161
    );
  ser_in_serial_dout_1_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_ser_in_serial_dout_1_MC_REG_IN,
      CE => ser_in_serial_dout_1_MC_CE_163,
      CLK => NlwBufferSignal_ser_in_serial_dout_1_MC_REG_CLK,
      SET => Gnd_36,
      RST => ser_in_serial_dout_1_MC_tsimcreated_prld_Q_161,
      O => ser_in_serial_dout_1_MC_Q
    );
  ser_in_serial_dout_1_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_ser_in_serial_dout_1_MC_D_IN0,
      I1 => NlwBufferSignal_ser_in_serial_dout_1_MC_D_IN1,
      O => ser_in_serial_dout_1_MC_D_162
    );
  ser_in_serial_dout_1_MC_D1 : X_ZERO
    port map (
      O => ser_in_serial_dout_1_MC_D1_164
    );
  ser_in_serial_dout_1_MC_D2 : X_AND2
    port map (
      I0 => NlwBufferSignal_ser_in_serial_dout_1_MC_D2_IN0,
      I1 => NlwBufferSignal_ser_in_serial_dout_1_MC_D2_IN1,
      O => ser_in_serial_dout_1_MC_D2_165
    );
  ser_in_serial_dout_1_MC_CE : X_AND2
    port map (
      I0 => NlwInverterSignal_ser_in_serial_dout_1_MC_CE_IN0,
      I1 => NlwInverterSignal_ser_in_serial_dout_1_MC_CE_IN1,
      O => ser_in_serial_dout_1_MC_CE_163
    );
  ser_in_serial_dout_0_MC_CE : X_AND2
    port map (
      I0 => NlwInverterSignal_ser_in_serial_dout_0_MC_CE_IN0,
      I1 => NlwInverterSignal_ser_in_serial_dout_0_MC_CE_IN1,
      O => ser_in_serial_dout_0_MC_CE_38
    );
  ser_in_counter_STATE_FSM_FFd1 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd1_MC_Q,
      O => ser_in_counter_STATE_FSM_FFd1_94
    );
  ser_in_counter_STATE_FSM_FFd1_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_tsimcreated_xor_IN1,
      O => ser_in_counter_STATE_FSM_FFd1_MC_tsimcreated_xor_Q_168
    );
  ser_in_counter_STATE_FSM_FFd1_MC_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_tsimcreated_prld_IN1,
      O => ser_in_counter_STATE_FSM_FFd1_MC_tsimcreated_prld_Q_169
    );
  ser_in_counter_STATE_FSM_FFd1_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_REG_CLK,
      SET => Gnd_36,
      RST => ser_in_counter_STATE_FSM_FFd1_MC_tsimcreated_prld_Q_169,
      O => ser_in_counter_STATE_FSM_FFd1_MC_Q
    );
  ser_in_counter_STATE_FSM_FFd1_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D_IN0,
      I1 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D_IN1,
      O => ser_in_counter_STATE_FSM_FFd1_MC_D_167
    );
  ser_in_counter_STATE_FSM_FFd1_MC_D1 : X_ZERO
    port map (
      O => ser_in_counter_STATE_FSM_FFd1_MC_D1_170
    );
  ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0 : X_AND16
    port map (
      I0 => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN0,
      I1 => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN1,
      I2 => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN2,
      I3 => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN3,
      I4 => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN4,
      I5 => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN5,
      I6 => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN6,
      I7 => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN7,
      I8 => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN8,
      I9 => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN9,
      I10 => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN10,
      I11 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN11,
      I12 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN12,
      I13 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN13,
      I14 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN14,
      I15 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN15,
      O => ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_173
    );
  ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1 : X_AND32
    port map (
      I0 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN0,
      I1 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN1,
      I2 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN2,
      I3 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN3,
      I4 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN4,
      I5 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN5,
      I6 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN6,
      I7 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN7,
      I8 => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN8,
      I9 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN9,
      I10 => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN10,
      I11 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN11,
      I12 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN12,
      I13 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN13,
      I14 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN14,
      I15 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN15,
      I16 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN16,
      I17 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN17,
      I18 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN18,
      I19 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN19,
      I20 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN20,
      I21 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN21,
      I22 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN22,
      I23 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN23,
      I24 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN24,
      I25 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN25,
      I26 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN26,
      I27 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN27,
      I28 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN28,
      I29 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN29,
      I30 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN30,
      I31 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN31,
      O => ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_174
    );
  ser_in_counter_STATE_FSM_FFd1_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_IN0,
      I1 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_IN1,
      O => ser_in_counter_STATE_FSM_FFd1_MC_D2_171
    );
  ser_in_counter_latchcount_0_Q : X_BUF
    port map (
      I => ser_in_counter_latchcount_0_MC_Q,
      O => ser_in_counter_latchcount(0)
    );
  ser_in_counter_latchcount_0_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_latchcount_0_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_ser_in_counter_latchcount_0_MC_tsimcreated_xor_IN1,
      O => ser_in_counter_latchcount_0_MC_tsimcreated_xor_Q_177
    );
  ser_in_counter_latchcount_0_MC_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_latchcount_0_MC_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_ser_in_counter_latchcount_0_MC_tsimcreated_prld_IN1,
      O => ser_in_counter_latchcount_0_MC_tsimcreated_prld_Q_178
    );
  ser_in_counter_latchcount_0_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_ser_in_counter_latchcount_0_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_ser_in_counter_latchcount_0_MC_REG_CLK,
      SET => Gnd_36,
      RST => ser_in_counter_latchcount_0_MC_tsimcreated_prld_Q_178,
      O => ser_in_counter_latchcount_0_MC_Q
    );
  ser_in_counter_latchcount_0_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_latchcount_0_MC_D_IN0,
      I1 => NlwBufferSignal_ser_in_counter_latchcount_0_MC_D_IN1,
      O => ser_in_counter_latchcount_0_MC_D_176
    );
  ser_in_counter_latchcount_0_MC_D1 : X_AND16
    port map (
      I0 => NlwBufferSignal_ser_in_counter_latchcount_0_MC_D1_IN0,
      I1 => NlwBufferSignal_ser_in_counter_latchcount_0_MC_D1_IN1,
      I2 => NlwBufferSignal_ser_in_counter_latchcount_0_MC_D1_IN2,
      I3 => NlwBufferSignal_ser_in_counter_latchcount_0_MC_D1_IN3,
      I4 => NlwBufferSignal_ser_in_counter_latchcount_0_MC_D1_IN4,
      I5 => NlwBufferSignal_ser_in_counter_latchcount_0_MC_D1_IN5,
      I6 => NlwBufferSignal_ser_in_counter_latchcount_0_MC_D1_IN6,
      I7 => NlwInverterSignal_ser_in_counter_latchcount_0_MC_D1_IN7,
      I8 => NlwBufferSignal_ser_in_counter_latchcount_0_MC_D1_IN8,
      I9 => NlwInverterSignal_ser_in_counter_latchcount_0_MC_D1_IN9,
      I10 => NlwBufferSignal_ser_in_counter_latchcount_0_MC_D1_IN10,
      I11 => NlwBufferSignal_ser_in_counter_latchcount_0_MC_D1_IN11,
      I12 => NlwBufferSignal_ser_in_counter_latchcount_0_MC_D1_IN12,
      I13 => NlwBufferSignal_ser_in_counter_latchcount_0_MC_D1_IN13,
      I14 => NlwBufferSignal_ser_in_counter_latchcount_0_MC_D1_IN14,
      I15 => NlwBufferSignal_ser_in_counter_latchcount_0_MC_D1_IN15,
      O => ser_in_counter_latchcount_0_MC_D1_179
    );
  ser_in_counter_latchcount_0_MC_D2 : X_ZERO
    port map (
      O => ser_in_counter_latchcount_0_MC_D2_180
    );
  ser_in_counter_bitcount_1_Q : X_BUF
    port map (
      I => ser_in_counter_bitcount_1_MC_Q,
      O => ser_in_counter_bitcount(1)
    );
  ser_in_counter_bitcount_1_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_bitcount_1_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_ser_in_counter_bitcount_1_MC_tsimcreated_xor_IN1,
      O => ser_in_counter_bitcount_1_MC_tsimcreated_xor_Q_183
    );
  ser_in_counter_bitcount_1_MC_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_bitcount_1_MC_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_ser_in_counter_bitcount_1_MC_tsimcreated_prld_IN1,
      O => ser_in_counter_bitcount_1_MC_tsimcreated_prld_Q_184
    );
  ser_in_counter_bitcount_1_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_1_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_ser_in_counter_bitcount_1_MC_REG_CLK,
      SET => Gnd_36,
      RST => ser_in_counter_bitcount_1_MC_tsimcreated_prld_Q_184,
      O => ser_in_counter_bitcount_1_MC_Q
    );
  ser_in_counter_bitcount_1_MC_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_ser_in_counter_bitcount_1_MC_D_IN0,
      I1 => NlwBufferSignal_ser_in_counter_bitcount_1_MC_D_IN1,
      O => ser_in_counter_bitcount_1_MC_D_182
    );
  ser_in_counter_bitcount_1_MC_D1 : X_ZERO
    port map (
      O => ser_in_counter_bitcount_1_MC_D1_185
    );
  ser_in_counter_bitcount_1_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwInverterSignal_ser_in_counter_bitcount_1_MC_D2_PT_0_IN0,
      I1 => NlwInverterSignal_ser_in_counter_bitcount_1_MC_D2_PT_0_IN1,
      O => ser_in_counter_bitcount_1_MC_D2_PT_0_187
    );
  ser_in_counter_bitcount_1_MC_D2_PT_1 : X_AND16
    port map (
      I0 => NlwInverterSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN0,
      I1 => NlwInverterSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN1,
      I2 => NlwInverterSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN2,
      I3 => NlwInverterSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN3,
      I4 => NlwInverterSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN4,
      I5 => NlwInverterSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN5,
      I6 => NlwInverterSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN6,
      I7 => NlwInverterSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN7,
      I8 => NlwInverterSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN8,
      I9 => NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN9,
      I10 => NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN10,
      I11 => NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN11,
      I12 => NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN12,
      I13 => NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN13,
      I14 => NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN14,
      I15 => NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN15,
      O => ser_in_counter_bitcount_1_MC_D2_PT_1_188
    );
  ser_in_counter_bitcount_1_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_IN0,
      I1 => NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_IN1,
      O => ser_in_counter_bitcount_1_MC_D2_186
    );
  ser_in_counter_bitcount_0_Q : X_BUF
    port map (
      I => ser_in_counter_bitcount_0_MC_Q,
      O => ser_in_counter_bitcount(0)
    );
  ser_in_counter_bitcount_0_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_bitcount_0_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_ser_in_counter_bitcount_0_MC_tsimcreated_xor_IN1,
      O => ser_in_counter_bitcount_0_MC_tsimcreated_xor_Q_191
    );
  ser_in_counter_bitcount_0_MC_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_bitcount_0_MC_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_ser_in_counter_bitcount_0_MC_tsimcreated_prld_IN1,
      O => ser_in_counter_bitcount_0_MC_tsimcreated_prld_Q_193
    );
  ser_in_counter_bitcount_0_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_0_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_ser_in_counter_bitcount_0_MC_REG_CLK,
      SET => Gnd_36,
      RST => ser_in_counter_bitcount_0_MC_tsimcreated_prld_Q_193,
      O => ser_in_counter_bitcount_0_MC_Q
    );
  ser_in_counter_bitcount_0_MC_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_ser_in_counter_bitcount_0_MC_D_IN0,
      I1 => NlwBufferSignal_ser_in_counter_bitcount_0_MC_D_IN1,
      O => ser_in_counter_bitcount_0_MC_D_190
    );
  ser_in_counter_bitcount_0_MC_D1 : X_ZERO
    port map (
      O => ser_in_counter_bitcount_0_MC_D1_194
    );
  ser_in_counter_bitcount_0_MC_D2 : X_ZERO
    port map (
      O => ser_in_counter_bitcount_0_MC_D2_195
    );
  ser_in_counter_bitcount_0_MC_RSTF : X_AND2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_bitcount_0_MC_RSTF_IN0,
      I1 => NlwBufferSignal_ser_in_counter_bitcount_0_MC_RSTF_IN1,
      O => ser_in_counter_bitcount_0_MC_RSTF_192
    );
  ser_in_counter_STATE_or0000 : X_BUF
    port map (
      I => ser_in_counter_STATE_or0000_MC_Q_196,
      O => ser_in_counter_STATE_or0000_127
    );
  ser_in_counter_STATE_or0000_MC_Q : X_BUF
    port map (
      I => ser_in_counter_STATE_or0000_MC_D_197,
      O => ser_in_counter_STATE_or0000_MC_Q_196
    );
  ser_in_counter_STATE_or0000_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D_IN0,
      I1 => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D_IN1,
      O => ser_in_counter_STATE_or0000_MC_D_197
    );
  ser_in_counter_STATE_or0000_MC_D1 : X_ZERO
    port map (
      O => ser_in_counter_STATE_or0000_MC_D1_198
    );
  ser_in_counter_STATE_or0000_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_0_IN1,
      O => ser_in_counter_STATE_or0000_MC_D2_PT_0_200
    );
  ser_in_counter_STATE_or0000_MC_D2_PT_1 : X_AND6
    port map (
      I0 => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_1_IN0,
      I1 => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_1_IN1,
      I2 => NlwInverterSignal_ser_in_counter_STATE_or0000_MC_D2_PT_1_IN2,
      I3 => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_1_IN3,
      I4 => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_1_IN4,
      I5 => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_1_IN5,
      O => ser_in_counter_STATE_or0000_MC_D2_PT_1_203
    );
  ser_in_counter_STATE_or0000_MC_D2_PT_2 : X_AND6
    port map (
      I0 => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_2_IN0,
      I1 => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_2_IN1,
      I2 => NlwInverterSignal_ser_in_counter_STATE_or0000_MC_D2_PT_2_IN2,
      I3 => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_2_IN3,
      I4 => NlwInverterSignal_ser_in_counter_STATE_or0000_MC_D2_PT_2_IN4,
      I5 => NlwInverterSignal_ser_in_counter_STATE_or0000_MC_D2_PT_2_IN5,
      O => ser_in_counter_STATE_or0000_MC_D2_PT_2_204
    );
  ser_in_counter_STATE_or0000_MC_D2_PT_3 : X_AND6
    port map (
      I0 => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_3_IN0,
      I1 => NlwInverterSignal_ser_in_counter_STATE_or0000_MC_D2_PT_3_IN1,
      I2 => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_3_IN2,
      I3 => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_3_IN3,
      I4 => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_3_IN4,
      I5 => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_3_IN5,
      O => ser_in_counter_STATE_or0000_MC_D2_PT_3_205
    );
  ser_in_counter_STATE_or0000_MC_D2_PT_4 : X_AND6
    port map (
      I0 => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_4_IN0,
      I1 => NlwInverterSignal_ser_in_counter_STATE_or0000_MC_D2_PT_4_IN1,
      I2 => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_4_IN2,
      I3 => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_4_IN3,
      I4 => NlwInverterSignal_ser_in_counter_STATE_or0000_MC_D2_PT_4_IN4,
      I5 => NlwInverterSignal_ser_in_counter_STATE_or0000_MC_D2_PT_4_IN5,
      O => ser_in_counter_STATE_or0000_MC_D2_PT_4_206
    );
  ser_in_counter_STATE_or0000_MC_D2 : X_OR5
    port map (
      I0 => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_IN0,
      I1 => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_IN1,
      I2 => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_IN2,
      I3 => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_IN3,
      I4 => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_IN4,
      O => ser_in_counter_STATE_or0000_MC_D2_199
    );
  reset_BUFR : X_BUF
    port map (
      I => reset_BUFR_MC_Q_207,
      O => reset_BUFR_98
    );
  reset_BUFR_MC_Q : X_BUF
    port map (
      I => reset_BUFR_MC_D_208,
      O => reset_BUFR_MC_Q_207
    );
  reset_BUFR_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_reset_BUFR_MC_D_IN0,
      I1 => NlwBufferSignal_reset_BUFR_MC_D_IN1,
      O => reset_BUFR_MC_D_208
    );
  reset_BUFR_MC_D1 : X_AND16
    port map (
      I0 => NlwBufferSignal_reset_BUFR_MC_D1_IN0,
      I1 => NlwBufferSignal_reset_BUFR_MC_D1_IN1,
      I2 => NlwBufferSignal_reset_BUFR_MC_D1_IN2,
      I3 => NlwBufferSignal_reset_BUFR_MC_D1_IN3,
      I4 => NlwBufferSignal_reset_BUFR_MC_D1_IN4,
      I5 => NlwBufferSignal_reset_BUFR_MC_D1_IN5,
      I6 => NlwBufferSignal_reset_BUFR_MC_D1_IN6,
      I7 => NlwBufferSignal_reset_BUFR_MC_D1_IN7,
      I8 => NlwBufferSignal_reset_BUFR_MC_D1_IN8,
      I9 => NlwBufferSignal_reset_BUFR_MC_D1_IN9,
      I10 => NlwBufferSignal_reset_BUFR_MC_D1_IN10,
      I11 => NlwBufferSignal_reset_BUFR_MC_D1_IN11,
      I12 => NlwBufferSignal_reset_BUFR_MC_D1_IN12,
      I13 => NlwBufferSignal_reset_BUFR_MC_D1_IN13,
      I14 => NlwBufferSignal_reset_BUFR_MC_D1_IN14,
      I15 => NlwBufferSignal_reset_BUFR_MC_D1_IN15,
      O => reset_BUFR_MC_D1_209
    );
  reset_BUFR_MC_D2 : X_ZERO
    port map (
      O => reset_BUFR_MC_D2_210
    );
  res_reg_0_Q : X_BUF
    port map (
      I => res_reg_0_MC_Q,
      O => res_reg(0)
    );
  res_reg_0_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_res_reg_0_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_res_reg_0_MC_tsimcreated_xor_IN1,
      O => res_reg_0_MC_tsimcreated_xor_Q_229
    );
  res_reg_0_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_res_reg_0_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_res_reg_0_MC_REG_CLK,
      SET => Gnd_36,
      RST => Gnd_36,
      O => res_reg_0_MC_Q
    );
  res_reg_0_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_res_reg_0_MC_D_IN0,
      I1 => NlwBufferSignal_res_reg_0_MC_D_IN1,
      O => res_reg_0_MC_D_228
    );
  res_reg_0_MC_D1 : X_ZERO
    port map (
      O => res_reg_0_MC_D1_230
    );
  res_reg_0_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwInverterSignal_res_reg_0_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_res_reg_0_MC_D2_PT_0_IN1,
      O => res_reg_0_MC_D2_PT_0_232
    );
  res_reg_0_MC_D2_PT_1 : X_AND3
    port map (
      I0 => NlwInverterSignal_res_reg_0_MC_D2_PT_1_IN0,
      I1 => NlwBufferSignal_res_reg_0_MC_D2_PT_1_IN1,
      I2 => NlwBufferSignal_res_reg_0_MC_D2_PT_1_IN2,
      O => res_reg_0_MC_D2_PT_1_234
    );
  res_reg_0_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_res_reg_0_MC_D2_IN0,
      I1 => NlwBufferSignal_res_reg_0_MC_D2_IN1,
      O => res_reg_0_MC_D2_231
    );
  tick : X_BUF
    port map (
      I => tick_MC_Q,
      O => tick_233
    );
  tick_MC_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_tick_MC_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_tick_MC_tsimcreated_prld_IN1,
      O => tick_MC_tsimcreated_prld_Q_237
    );
  tick_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_tick_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_tick_MC_REG_CLK,
      SET => Gnd_36,
      RST => tick_MC_tsimcreated_prld_Q_237,
      O => tick_MC_Q
    );
  tick_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_tick_MC_D_IN0,
      I1 => NlwBufferSignal_tick_MC_D_IN1,
      O => tick_MC_D_238
    );
  tick_MC_D1 : X_AND2
    port map (
      I0 => NlwBufferSignal_tick_MC_D1_IN0,
      I1 => NlwBufferSignal_tick_MC_D1_IN1,
      O => tick_MC_D1_239
    );
  tick_MC_D2 : X_ZERO
    port map (
      O => tick_MC_D2_240
    );
  grclkgen_tgen_cnt_0_Q : X_BUF
    port map (
      I => grclkgen_tgen_cnt_0_MC_Q,
      O => grclkgen_tgen_cnt(0)
    );
  grclkgen_tgen_cnt_0_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_grclkgen_tgen_cnt_0_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_grclkgen_tgen_cnt_0_MC_tsimcreated_xor_IN1,
      O => grclkgen_tgen_cnt_0_MC_tsimcreated_xor_Q_245
    );
  grclkgen_tgen_cnt_0_MC_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_grclkgen_tgen_cnt_0_MC_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_grclkgen_tgen_cnt_0_MC_tsimcreated_prld_IN1,
      O => grclkgen_tgen_cnt_0_MC_tsimcreated_prld_Q_247
    );
  grclkgen_tgen_cnt_0_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_grclkgen_tgen_cnt_0_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_grclkgen_tgen_cnt_0_MC_REG_CLK,
      SET => Gnd_36,
      RST => grclkgen_tgen_cnt_0_MC_tsimcreated_prld_Q_247,
      O => grclkgen_tgen_cnt_0_MC_Q
    );
  grclkgen_tgen_cnt_0_MC_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_grclkgen_tgen_cnt_0_MC_D_IN0,
      I1 => NlwBufferSignal_grclkgen_tgen_cnt_0_MC_D_IN1,
      O => grclkgen_tgen_cnt_0_MC_D_244
    );
  grclkgen_tgen_cnt_0_MC_D1 : X_ZERO
    port map (
      O => grclkgen_tgen_cnt_0_MC_D1_248
    );
  grclkgen_tgen_cnt_0_MC_D2 : X_ZERO
    port map (
      O => grclkgen_tgen_cnt_0_MC_D2_249
    );
  grclkgen_tgen_cnt_1_Q : X_BUF
    port map (
      I => grclkgen_tgen_cnt_1_MC_Q,
      O => grclkgen_tgen_cnt(1)
    );
  grclkgen_tgen_cnt_1_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_grclkgen_tgen_cnt_1_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_grclkgen_tgen_cnt_1_MC_tsimcreated_xor_IN1,
      O => grclkgen_tgen_cnt_1_MC_tsimcreated_xor_Q_252
    );
  grclkgen_tgen_cnt_1_MC_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_grclkgen_tgen_cnt_1_MC_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_grclkgen_tgen_cnt_1_MC_tsimcreated_prld_IN1,
      O => grclkgen_tgen_cnt_1_MC_tsimcreated_prld_Q_253
    );
  grclkgen_tgen_cnt_1_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_grclkgen_tgen_cnt_1_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_grclkgen_tgen_cnt_1_MC_REG_CLK,
      SET => Gnd_36,
      RST => grclkgen_tgen_cnt_1_MC_tsimcreated_prld_Q_253,
      O => grclkgen_tgen_cnt_1_MC_Q
    );
  grclkgen_tgen_cnt_1_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_grclkgen_tgen_cnt_1_MC_D_IN0,
      I1 => NlwBufferSignal_grclkgen_tgen_cnt_1_MC_D_IN1,
      O => grclkgen_tgen_cnt_1_MC_D_251
    );
  grclkgen_tgen_cnt_1_MC_D1 : X_AND2
    port map (
      I0 => NlwBufferSignal_grclkgen_tgen_cnt_1_MC_D1_IN0,
      I1 => NlwBufferSignal_grclkgen_tgen_cnt_1_MC_D1_IN1,
      O => grclkgen_tgen_cnt_1_MC_D1_254
    );
  grclkgen_tgen_cnt_1_MC_D2 : X_ZERO
    port map (
      O => grclkgen_tgen_cnt_1_MC_D2_255
    );
  res_reg_10_Q : X_BUF
    port map (
      I => res_reg_10_MC_Q,
      O => res_reg(10)
    );
  res_reg_10_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_res_reg_10_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_res_reg_10_MC_tsimcreated_xor_IN1,
      O => res_reg_10_MC_tsimcreated_xor_Q_258
    );
  res_reg_10_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_res_reg_10_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_res_reg_10_MC_REG_CLK,
      SET => Gnd_36,
      RST => Gnd_36,
      O => res_reg_10_MC_Q
    );
  res_reg_10_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_res_reg_10_MC_D_IN0,
      I1 => NlwBufferSignal_res_reg_10_MC_D_IN1,
      O => res_reg_10_MC_D_257
    );
  res_reg_10_MC_D1 : X_ZERO
    port map (
      O => res_reg_10_MC_D1_259
    );
  res_reg_10_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwInverterSignal_res_reg_10_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_res_reg_10_MC_D2_PT_0_IN1,
      O => res_reg_10_MC_D2_PT_0_261
    );
  res_reg_10_MC_D2_PT_1 : X_AND16
    port map (
      I0 => NlwInverterSignal_res_reg_10_MC_D2_PT_1_IN0,
      I1 => NlwBufferSignal_res_reg_10_MC_D2_PT_1_IN1,
      I2 => NlwBufferSignal_res_reg_10_MC_D2_PT_1_IN2,
      I3 => NlwBufferSignal_res_reg_10_MC_D2_PT_1_IN3,
      I4 => NlwBufferSignal_res_reg_10_MC_D2_PT_1_IN4,
      I5 => NlwBufferSignal_res_reg_10_MC_D2_PT_1_IN5,
      I6 => NlwBufferSignal_res_reg_10_MC_D2_PT_1_IN6,
      I7 => NlwBufferSignal_res_reg_10_MC_D2_PT_1_IN7,
      I8 => NlwBufferSignal_res_reg_10_MC_D2_PT_1_IN8,
      I9 => NlwBufferSignal_res_reg_10_MC_D2_PT_1_IN9,
      I10 => NlwBufferSignal_res_reg_10_MC_D2_PT_1_IN10,
      I11 => NlwBufferSignal_res_reg_10_MC_D2_PT_1_IN11,
      I12 => NlwBufferSignal_res_reg_10_MC_D2_PT_1_IN12,
      I13 => NlwBufferSignal_res_reg_10_MC_D2_PT_1_IN13,
      I14 => NlwBufferSignal_res_reg_10_MC_D2_PT_1_IN14,
      I15 => NlwBufferSignal_res_reg_10_MC_D2_PT_1_IN15,
      O => res_reg_10_MC_D2_PT_1_262
    );
  res_reg_10_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_res_reg_10_MC_D2_IN0,
      I1 => NlwBufferSignal_res_reg_10_MC_D2_IN1,
      O => res_reg_10_MC_D2_260
    );
  res_reg_1_Q : X_BUF
    port map (
      I => res_reg_1_MC_Q,
      O => res_reg(1)
    );
  res_reg_1_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_res_reg_1_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_res_reg_1_MC_tsimcreated_xor_IN1,
      O => res_reg_1_MC_tsimcreated_xor_Q_265
    );
  res_reg_1_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_res_reg_1_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_res_reg_1_MC_REG_CLK,
      SET => Gnd_36,
      RST => Gnd_36,
      O => res_reg_1_MC_Q
    );
  res_reg_1_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_res_reg_1_MC_D_IN0,
      I1 => NlwBufferSignal_res_reg_1_MC_D_IN1,
      O => res_reg_1_MC_D_264
    );
  res_reg_1_MC_D1 : X_ZERO
    port map (
      O => res_reg_1_MC_D1_266
    );
  res_reg_1_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwInverterSignal_res_reg_1_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_res_reg_1_MC_D2_PT_0_IN1,
      O => res_reg_1_MC_D2_PT_0_268
    );
  res_reg_1_MC_D2_PT_1 : X_AND4
    port map (
      I0 => NlwInverterSignal_res_reg_1_MC_D2_PT_1_IN0,
      I1 => NlwBufferSignal_res_reg_1_MC_D2_PT_1_IN1,
      I2 => NlwBufferSignal_res_reg_1_MC_D2_PT_1_IN2,
      I3 => NlwBufferSignal_res_reg_1_MC_D2_PT_1_IN3,
      O => res_reg_1_MC_D2_PT_1_269
    );
  res_reg_1_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_res_reg_1_MC_D2_IN0,
      I1 => NlwBufferSignal_res_reg_1_MC_D2_IN1,
      O => res_reg_1_MC_D2_267
    );
  res_reg_2_Q : X_BUF
    port map (
      I => res_reg_2_MC_Q,
      O => res_reg(2)
    );
  res_reg_2_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_res_reg_2_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_res_reg_2_MC_tsimcreated_xor_IN1,
      O => res_reg_2_MC_tsimcreated_xor_Q_272
    );
  res_reg_2_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_res_reg_2_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_res_reg_2_MC_REG_CLK,
      SET => Gnd_36,
      RST => Gnd_36,
      O => res_reg_2_MC_Q
    );
  res_reg_2_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_res_reg_2_MC_D_IN0,
      I1 => NlwBufferSignal_res_reg_2_MC_D_IN1,
      O => res_reg_2_MC_D_271
    );
  res_reg_2_MC_D1 : X_ZERO
    port map (
      O => res_reg_2_MC_D1_273
    );
  res_reg_2_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwInverterSignal_res_reg_2_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_res_reg_2_MC_D2_PT_0_IN1,
      O => res_reg_2_MC_D2_PT_0_275
    );
  res_reg_2_MC_D2_PT_1 : X_AND5
    port map (
      I0 => NlwInverterSignal_res_reg_2_MC_D2_PT_1_IN0,
      I1 => NlwBufferSignal_res_reg_2_MC_D2_PT_1_IN1,
      I2 => NlwBufferSignal_res_reg_2_MC_D2_PT_1_IN2,
      I3 => NlwBufferSignal_res_reg_2_MC_D2_PT_1_IN3,
      I4 => NlwBufferSignal_res_reg_2_MC_D2_PT_1_IN4,
      O => res_reg_2_MC_D2_PT_1_276
    );
  res_reg_2_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_res_reg_2_MC_D2_IN0,
      I1 => NlwBufferSignal_res_reg_2_MC_D2_IN1,
      O => res_reg_2_MC_D2_274
    );
  res_reg_3_Q : X_BUF
    port map (
      I => res_reg_3_MC_Q,
      O => res_reg(3)
    );
  res_reg_3_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_res_reg_3_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_res_reg_3_MC_tsimcreated_xor_IN1,
      O => res_reg_3_MC_tsimcreated_xor_Q_279
    );
  res_reg_3_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_res_reg_3_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_res_reg_3_MC_REG_CLK,
      SET => Gnd_36,
      RST => Gnd_36,
      O => res_reg_3_MC_Q
    );
  res_reg_3_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_res_reg_3_MC_D_IN0,
      I1 => NlwBufferSignal_res_reg_3_MC_D_IN1,
      O => res_reg_3_MC_D_278
    );
  res_reg_3_MC_D1 : X_ZERO
    port map (
      O => res_reg_3_MC_D1_280
    );
  res_reg_3_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwInverterSignal_res_reg_3_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_res_reg_3_MC_D2_PT_0_IN1,
      O => res_reg_3_MC_D2_PT_0_282
    );
  res_reg_3_MC_D2_PT_1 : X_AND6
    port map (
      I0 => NlwInverterSignal_res_reg_3_MC_D2_PT_1_IN0,
      I1 => NlwBufferSignal_res_reg_3_MC_D2_PT_1_IN1,
      I2 => NlwBufferSignal_res_reg_3_MC_D2_PT_1_IN2,
      I3 => NlwBufferSignal_res_reg_3_MC_D2_PT_1_IN3,
      I4 => NlwBufferSignal_res_reg_3_MC_D2_PT_1_IN4,
      I5 => NlwBufferSignal_res_reg_3_MC_D2_PT_1_IN5,
      O => res_reg_3_MC_D2_PT_1_283
    );
  res_reg_3_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_res_reg_3_MC_D2_IN0,
      I1 => NlwBufferSignal_res_reg_3_MC_D2_IN1,
      O => res_reg_3_MC_D2_281
    );
  res_reg_4_Q : X_BUF
    port map (
      I => res_reg_4_MC_Q,
      O => res_reg(4)
    );
  res_reg_4_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_res_reg_4_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_res_reg_4_MC_tsimcreated_xor_IN1,
      O => res_reg_4_MC_tsimcreated_xor_Q_286
    );
  res_reg_4_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_res_reg_4_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_res_reg_4_MC_REG_CLK,
      SET => Gnd_36,
      RST => Gnd_36,
      O => res_reg_4_MC_Q
    );
  res_reg_4_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_res_reg_4_MC_D_IN0,
      I1 => NlwBufferSignal_res_reg_4_MC_D_IN1,
      O => res_reg_4_MC_D_285
    );
  res_reg_4_MC_D1 : X_ZERO
    port map (
      O => res_reg_4_MC_D1_287
    );
  res_reg_4_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwInverterSignal_res_reg_4_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_res_reg_4_MC_D2_PT_0_IN1,
      O => res_reg_4_MC_D2_PT_0_289
    );
  res_reg_4_MC_D2_PT_1 : X_AND7
    port map (
      I0 => NlwInverterSignal_res_reg_4_MC_D2_PT_1_IN0,
      I1 => NlwBufferSignal_res_reg_4_MC_D2_PT_1_IN1,
      I2 => NlwBufferSignal_res_reg_4_MC_D2_PT_1_IN2,
      I3 => NlwBufferSignal_res_reg_4_MC_D2_PT_1_IN3,
      I4 => NlwBufferSignal_res_reg_4_MC_D2_PT_1_IN4,
      I5 => NlwBufferSignal_res_reg_4_MC_D2_PT_1_IN5,
      I6 => NlwBufferSignal_res_reg_4_MC_D2_PT_1_IN6,
      O => res_reg_4_MC_D2_PT_1_290
    );
  res_reg_4_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_res_reg_4_MC_D2_IN0,
      I1 => NlwBufferSignal_res_reg_4_MC_D2_IN1,
      O => res_reg_4_MC_D2_288
    );
  res_reg_5_Q : X_BUF
    port map (
      I => res_reg_5_MC_Q,
      O => res_reg(5)
    );
  res_reg_5_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_res_reg_5_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_res_reg_5_MC_tsimcreated_xor_IN1,
      O => res_reg_5_MC_tsimcreated_xor_Q_293
    );
  res_reg_5_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_res_reg_5_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_res_reg_5_MC_REG_CLK,
      SET => Gnd_36,
      RST => Gnd_36,
      O => res_reg_5_MC_Q
    );
  res_reg_5_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_res_reg_5_MC_D_IN0,
      I1 => NlwBufferSignal_res_reg_5_MC_D_IN1,
      O => res_reg_5_MC_D_292
    );
  res_reg_5_MC_D1 : X_ZERO
    port map (
      O => res_reg_5_MC_D1_294
    );
  res_reg_5_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwInverterSignal_res_reg_5_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_res_reg_5_MC_D2_PT_0_IN1,
      O => res_reg_5_MC_D2_PT_0_296
    );
  res_reg_5_MC_D2_PT_1 : X_AND8
    port map (
      I0 => NlwInverterSignal_res_reg_5_MC_D2_PT_1_IN0,
      I1 => NlwBufferSignal_res_reg_5_MC_D2_PT_1_IN1,
      I2 => NlwBufferSignal_res_reg_5_MC_D2_PT_1_IN2,
      I3 => NlwBufferSignal_res_reg_5_MC_D2_PT_1_IN3,
      I4 => NlwBufferSignal_res_reg_5_MC_D2_PT_1_IN4,
      I5 => NlwBufferSignal_res_reg_5_MC_D2_PT_1_IN5,
      I6 => NlwBufferSignal_res_reg_5_MC_D2_PT_1_IN6,
      I7 => NlwBufferSignal_res_reg_5_MC_D2_PT_1_IN7,
      O => res_reg_5_MC_D2_PT_1_297
    );
  res_reg_5_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_res_reg_5_MC_D2_IN0,
      I1 => NlwBufferSignal_res_reg_5_MC_D2_IN1,
      O => res_reg_5_MC_D2_295
    );
  res_reg_6_Q : X_BUF
    port map (
      I => res_reg_6_MC_Q,
      O => res_reg(6)
    );
  res_reg_6_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_res_reg_6_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_res_reg_6_MC_tsimcreated_xor_IN1,
      O => res_reg_6_MC_tsimcreated_xor_Q_300
    );
  res_reg_6_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_res_reg_6_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_res_reg_6_MC_REG_CLK,
      SET => Gnd_36,
      RST => Gnd_36,
      O => res_reg_6_MC_Q
    );
  res_reg_6_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_res_reg_6_MC_D_IN0,
      I1 => NlwBufferSignal_res_reg_6_MC_D_IN1,
      O => res_reg_6_MC_D_299
    );
  res_reg_6_MC_D1 : X_ZERO
    port map (
      O => res_reg_6_MC_D1_301
    );
  res_reg_6_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwInverterSignal_res_reg_6_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_res_reg_6_MC_D2_PT_0_IN1,
      O => res_reg_6_MC_D2_PT_0_303
    );
  res_reg_6_MC_D2_PT_1 : X_AND16
    port map (
      I0 => NlwInverterSignal_res_reg_6_MC_D2_PT_1_IN0,
      I1 => NlwBufferSignal_res_reg_6_MC_D2_PT_1_IN1,
      I2 => NlwBufferSignal_res_reg_6_MC_D2_PT_1_IN2,
      I3 => NlwBufferSignal_res_reg_6_MC_D2_PT_1_IN3,
      I4 => NlwBufferSignal_res_reg_6_MC_D2_PT_1_IN4,
      I5 => NlwBufferSignal_res_reg_6_MC_D2_PT_1_IN5,
      I6 => NlwBufferSignal_res_reg_6_MC_D2_PT_1_IN6,
      I7 => NlwBufferSignal_res_reg_6_MC_D2_PT_1_IN7,
      I8 => NlwBufferSignal_res_reg_6_MC_D2_PT_1_IN8,
      I9 => NlwBufferSignal_res_reg_6_MC_D2_PT_1_IN9,
      I10 => NlwBufferSignal_res_reg_6_MC_D2_PT_1_IN10,
      I11 => NlwBufferSignal_res_reg_6_MC_D2_PT_1_IN11,
      I12 => NlwBufferSignal_res_reg_6_MC_D2_PT_1_IN12,
      I13 => NlwBufferSignal_res_reg_6_MC_D2_PT_1_IN13,
      I14 => NlwBufferSignal_res_reg_6_MC_D2_PT_1_IN14,
      I15 => NlwBufferSignal_res_reg_6_MC_D2_PT_1_IN15,
      O => res_reg_6_MC_D2_PT_1_304
    );
  res_reg_6_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_res_reg_6_MC_D2_IN0,
      I1 => NlwBufferSignal_res_reg_6_MC_D2_IN1,
      O => res_reg_6_MC_D2_302
    );
  res_reg_7_Q : X_BUF
    port map (
      I => res_reg_7_MC_Q,
      O => res_reg(7)
    );
  res_reg_7_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_res_reg_7_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_res_reg_7_MC_tsimcreated_xor_IN1,
      O => res_reg_7_MC_tsimcreated_xor_Q_307
    );
  res_reg_7_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_res_reg_7_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_res_reg_7_MC_REG_CLK,
      SET => Gnd_36,
      RST => Gnd_36,
      O => res_reg_7_MC_Q
    );
  res_reg_7_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_res_reg_7_MC_D_IN0,
      I1 => NlwBufferSignal_res_reg_7_MC_D_IN1,
      O => res_reg_7_MC_D_306
    );
  res_reg_7_MC_D1 : X_ZERO
    port map (
      O => res_reg_7_MC_D1_308
    );
  res_reg_7_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwInverterSignal_res_reg_7_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_res_reg_7_MC_D2_PT_0_IN1,
      O => res_reg_7_MC_D2_PT_0_310
    );
  res_reg_7_MC_D2_PT_1 : X_AND16
    port map (
      I0 => NlwInverterSignal_res_reg_7_MC_D2_PT_1_IN0,
      I1 => NlwBufferSignal_res_reg_7_MC_D2_PT_1_IN1,
      I2 => NlwBufferSignal_res_reg_7_MC_D2_PT_1_IN2,
      I3 => NlwBufferSignal_res_reg_7_MC_D2_PT_1_IN3,
      I4 => NlwBufferSignal_res_reg_7_MC_D2_PT_1_IN4,
      I5 => NlwBufferSignal_res_reg_7_MC_D2_PT_1_IN5,
      I6 => NlwBufferSignal_res_reg_7_MC_D2_PT_1_IN6,
      I7 => NlwBufferSignal_res_reg_7_MC_D2_PT_1_IN7,
      I8 => NlwBufferSignal_res_reg_7_MC_D2_PT_1_IN8,
      I9 => NlwBufferSignal_res_reg_7_MC_D2_PT_1_IN9,
      I10 => NlwBufferSignal_res_reg_7_MC_D2_PT_1_IN10,
      I11 => NlwBufferSignal_res_reg_7_MC_D2_PT_1_IN11,
      I12 => NlwBufferSignal_res_reg_7_MC_D2_PT_1_IN12,
      I13 => NlwBufferSignal_res_reg_7_MC_D2_PT_1_IN13,
      I14 => NlwBufferSignal_res_reg_7_MC_D2_PT_1_IN14,
      I15 => NlwBufferSignal_res_reg_7_MC_D2_PT_1_IN15,
      O => res_reg_7_MC_D2_PT_1_311
    );
  res_reg_7_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_res_reg_7_MC_D2_IN0,
      I1 => NlwBufferSignal_res_reg_7_MC_D2_IN1,
      O => res_reg_7_MC_D2_309
    );
  res_reg_8_Q : X_BUF
    port map (
      I => res_reg_8_MC_Q,
      O => res_reg(8)
    );
  res_reg_8_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_res_reg_8_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_res_reg_8_MC_tsimcreated_xor_IN1,
      O => res_reg_8_MC_tsimcreated_xor_Q_314
    );
  res_reg_8_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_res_reg_8_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_res_reg_8_MC_REG_CLK,
      SET => Gnd_36,
      RST => Gnd_36,
      O => res_reg_8_MC_Q
    );
  res_reg_8_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_res_reg_8_MC_D_IN0,
      I1 => NlwBufferSignal_res_reg_8_MC_D_IN1,
      O => res_reg_8_MC_D_313
    );
  res_reg_8_MC_D1 : X_ZERO
    port map (
      O => res_reg_8_MC_D1_315
    );
  res_reg_8_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwInverterSignal_res_reg_8_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_res_reg_8_MC_D2_PT_0_IN1,
      O => res_reg_8_MC_D2_PT_0_317
    );
  res_reg_8_MC_D2_PT_1 : X_AND16
    port map (
      I0 => NlwInverterSignal_res_reg_8_MC_D2_PT_1_IN0,
      I1 => NlwBufferSignal_res_reg_8_MC_D2_PT_1_IN1,
      I2 => NlwBufferSignal_res_reg_8_MC_D2_PT_1_IN2,
      I3 => NlwBufferSignal_res_reg_8_MC_D2_PT_1_IN3,
      I4 => NlwBufferSignal_res_reg_8_MC_D2_PT_1_IN4,
      I5 => NlwBufferSignal_res_reg_8_MC_D2_PT_1_IN5,
      I6 => NlwBufferSignal_res_reg_8_MC_D2_PT_1_IN6,
      I7 => NlwBufferSignal_res_reg_8_MC_D2_PT_1_IN7,
      I8 => NlwBufferSignal_res_reg_8_MC_D2_PT_1_IN8,
      I9 => NlwBufferSignal_res_reg_8_MC_D2_PT_1_IN9,
      I10 => NlwBufferSignal_res_reg_8_MC_D2_PT_1_IN10,
      I11 => NlwBufferSignal_res_reg_8_MC_D2_PT_1_IN11,
      I12 => NlwBufferSignal_res_reg_8_MC_D2_PT_1_IN12,
      I13 => NlwBufferSignal_res_reg_8_MC_D2_PT_1_IN13,
      I14 => NlwBufferSignal_res_reg_8_MC_D2_PT_1_IN14,
      I15 => NlwBufferSignal_res_reg_8_MC_D2_PT_1_IN15,
      O => res_reg_8_MC_D2_PT_1_318
    );
  res_reg_8_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_res_reg_8_MC_D2_IN0,
      I1 => NlwBufferSignal_res_reg_8_MC_D2_IN1,
      O => res_reg_8_MC_D2_316
    );
  res_reg_9_Q : X_BUF
    port map (
      I => res_reg_9_MC_Q,
      O => res_reg(9)
    );
  res_reg_9_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_res_reg_9_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_res_reg_9_MC_tsimcreated_xor_IN1,
      O => res_reg_9_MC_tsimcreated_xor_Q_321
    );
  res_reg_9_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_res_reg_9_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_res_reg_9_MC_REG_CLK,
      SET => Gnd_36,
      RST => Gnd_36,
      O => res_reg_9_MC_Q
    );
  res_reg_9_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_res_reg_9_MC_D_IN0,
      I1 => NlwBufferSignal_res_reg_9_MC_D_IN1,
      O => res_reg_9_MC_D_320
    );
  res_reg_9_MC_D1 : X_ZERO
    port map (
      O => res_reg_9_MC_D1_322
    );
  res_reg_9_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwInverterSignal_res_reg_9_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_res_reg_9_MC_D2_PT_0_IN1,
      O => res_reg_9_MC_D2_PT_0_324
    );
  res_reg_9_MC_D2_PT_1 : X_AND16
    port map (
      I0 => NlwInverterSignal_res_reg_9_MC_D2_PT_1_IN0,
      I1 => NlwBufferSignal_res_reg_9_MC_D2_PT_1_IN1,
      I2 => NlwBufferSignal_res_reg_9_MC_D2_PT_1_IN2,
      I3 => NlwBufferSignal_res_reg_9_MC_D2_PT_1_IN3,
      I4 => NlwBufferSignal_res_reg_9_MC_D2_PT_1_IN4,
      I5 => NlwBufferSignal_res_reg_9_MC_D2_PT_1_IN5,
      I6 => NlwBufferSignal_res_reg_9_MC_D2_PT_1_IN6,
      I7 => NlwBufferSignal_res_reg_9_MC_D2_PT_1_IN7,
      I8 => NlwBufferSignal_res_reg_9_MC_D2_PT_1_IN8,
      I9 => NlwBufferSignal_res_reg_9_MC_D2_PT_1_IN9,
      I10 => NlwBufferSignal_res_reg_9_MC_D2_PT_1_IN10,
      I11 => NlwBufferSignal_res_reg_9_MC_D2_PT_1_IN11,
      I12 => NlwBufferSignal_res_reg_9_MC_D2_PT_1_IN12,
      I13 => NlwBufferSignal_res_reg_9_MC_D2_PT_1_IN13,
      I14 => NlwBufferSignal_res_reg_9_MC_D2_PT_1_IN14,
      I15 => NlwBufferSignal_res_reg_9_MC_D2_PT_1_IN15,
      O => res_reg_9_MC_D2_PT_1_325
    );
  res_reg_9_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_res_reg_9_MC_D2_IN0,
      I1 => NlwBufferSignal_res_reg_9_MC_D2_IN1,
      O => res_reg_9_MC_D2_323
    );
  res_reg_11_Q : X_BUF
    port map (
      I => res_reg_11_MC_Q,
      O => res_reg(11)
    );
  res_reg_11_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_res_reg_11_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_res_reg_11_MC_tsimcreated_xor_IN1,
      O => res_reg_11_MC_tsimcreated_xor_Q_328
    );
  res_reg_11_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_res_reg_11_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_res_reg_11_MC_REG_CLK,
      SET => Gnd_36,
      RST => Gnd_36,
      O => res_reg_11_MC_Q
    );
  res_reg_11_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_res_reg_11_MC_D_IN0,
      I1 => NlwBufferSignal_res_reg_11_MC_D_IN1,
      O => res_reg_11_MC_D_327
    );
  res_reg_11_MC_D1 : X_ZERO
    port map (
      O => res_reg_11_MC_D1_329
    );
  res_reg_11_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwInverterSignal_res_reg_11_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_res_reg_11_MC_D2_PT_0_IN1,
      O => res_reg_11_MC_D2_PT_0_331
    );
  res_reg_11_MC_D2_PT_1 : X_AND16
    port map (
      I0 => NlwInverterSignal_res_reg_11_MC_D2_PT_1_IN0,
      I1 => NlwBufferSignal_res_reg_11_MC_D2_PT_1_IN1,
      I2 => NlwBufferSignal_res_reg_11_MC_D2_PT_1_IN2,
      I3 => NlwBufferSignal_res_reg_11_MC_D2_PT_1_IN3,
      I4 => NlwBufferSignal_res_reg_11_MC_D2_PT_1_IN4,
      I5 => NlwBufferSignal_res_reg_11_MC_D2_PT_1_IN5,
      I6 => NlwBufferSignal_res_reg_11_MC_D2_PT_1_IN6,
      I7 => NlwBufferSignal_res_reg_11_MC_D2_PT_1_IN7,
      I8 => NlwBufferSignal_res_reg_11_MC_D2_PT_1_IN8,
      I9 => NlwBufferSignal_res_reg_11_MC_D2_PT_1_IN9,
      I10 => NlwBufferSignal_res_reg_11_MC_D2_PT_1_IN10,
      I11 => NlwBufferSignal_res_reg_11_MC_D2_PT_1_IN11,
      I12 => NlwBufferSignal_res_reg_11_MC_D2_PT_1_IN12,
      I13 => NlwBufferSignal_res_reg_11_MC_D2_PT_1_IN13,
      I14 => NlwBufferSignal_res_reg_11_MC_D2_PT_1_IN14,
      I15 => NlwBufferSignal_res_reg_11_MC_D2_PT_1_IN15,
      O => res_reg_11_MC_D2_PT_1_332
    );
  res_reg_11_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_res_reg_11_MC_D2_IN0,
      I1 => NlwBufferSignal_res_reg_11_MC_D2_IN1,
      O => res_reg_11_MC_D2_330
    );
  res_reg_12_Q : X_BUF
    port map (
      I => res_reg_12_MC_Q,
      O => res_reg(12)
    );
  res_reg_12_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_res_reg_12_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_res_reg_12_MC_tsimcreated_xor_IN1,
      O => res_reg_12_MC_tsimcreated_xor_Q_335
    );
  res_reg_12_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_res_reg_12_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_res_reg_12_MC_REG_CLK,
      SET => Gnd_36,
      RST => Gnd_36,
      O => res_reg_12_MC_Q
    );
  res_reg_12_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_res_reg_12_MC_D_IN0,
      I1 => NlwBufferSignal_res_reg_12_MC_D_IN1,
      O => res_reg_12_MC_D_334
    );
  res_reg_12_MC_D1 : X_ZERO
    port map (
      O => res_reg_12_MC_D1_336
    );
  res_reg_12_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwInverterSignal_res_reg_12_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_res_reg_12_MC_D2_PT_0_IN1,
      O => res_reg_12_MC_D2_PT_0_338
    );
  res_reg_12_MC_D2_PT_1 : X_AND16
    port map (
      I0 => NlwInverterSignal_res_reg_12_MC_D2_PT_1_IN0,
      I1 => NlwBufferSignal_res_reg_12_MC_D2_PT_1_IN1,
      I2 => NlwBufferSignal_res_reg_12_MC_D2_PT_1_IN2,
      I3 => NlwBufferSignal_res_reg_12_MC_D2_PT_1_IN3,
      I4 => NlwBufferSignal_res_reg_12_MC_D2_PT_1_IN4,
      I5 => NlwBufferSignal_res_reg_12_MC_D2_PT_1_IN5,
      I6 => NlwBufferSignal_res_reg_12_MC_D2_PT_1_IN6,
      I7 => NlwBufferSignal_res_reg_12_MC_D2_PT_1_IN7,
      I8 => NlwBufferSignal_res_reg_12_MC_D2_PT_1_IN8,
      I9 => NlwBufferSignal_res_reg_12_MC_D2_PT_1_IN9,
      I10 => NlwBufferSignal_res_reg_12_MC_D2_PT_1_IN10,
      I11 => NlwBufferSignal_res_reg_12_MC_D2_PT_1_IN11,
      I12 => NlwBufferSignal_res_reg_12_MC_D2_PT_1_IN12,
      I13 => NlwBufferSignal_res_reg_12_MC_D2_PT_1_IN13,
      I14 => NlwBufferSignal_res_reg_12_MC_D2_PT_1_IN14,
      I15 => NlwBufferSignal_res_reg_12_MC_D2_PT_1_IN15,
      O => res_reg_12_MC_D2_PT_1_339
    );
  res_reg_12_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_res_reg_12_MC_D2_IN0,
      I1 => NlwBufferSignal_res_reg_12_MC_D2_IN1,
      O => res_reg_12_MC_D2_337
    );
  res_reg_13_Q : X_BUF
    port map (
      I => res_reg_13_MC_Q,
      O => res_reg(13)
    );
  res_reg_13_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_res_reg_13_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_res_reg_13_MC_tsimcreated_xor_IN1,
      O => res_reg_13_MC_tsimcreated_xor_Q_342
    );
  res_reg_13_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_res_reg_13_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_res_reg_13_MC_REG_CLK,
      SET => Gnd_36,
      RST => Gnd_36,
      O => res_reg_13_MC_Q
    );
  res_reg_13_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_res_reg_13_MC_D_IN0,
      I1 => NlwBufferSignal_res_reg_13_MC_D_IN1,
      O => res_reg_13_MC_D_341
    );
  res_reg_13_MC_D1 : X_ZERO
    port map (
      O => res_reg_13_MC_D1_343
    );
  res_reg_13_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwInverterSignal_res_reg_13_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_res_reg_13_MC_D2_PT_0_IN1,
      O => res_reg_13_MC_D2_PT_0_345
    );
  res_reg_13_MC_D2_PT_1 : X_AND16
    port map (
      I0 => NlwInverterSignal_res_reg_13_MC_D2_PT_1_IN0,
      I1 => NlwBufferSignal_res_reg_13_MC_D2_PT_1_IN1,
      I2 => NlwBufferSignal_res_reg_13_MC_D2_PT_1_IN2,
      I3 => NlwBufferSignal_res_reg_13_MC_D2_PT_1_IN3,
      I4 => NlwBufferSignal_res_reg_13_MC_D2_PT_1_IN4,
      I5 => NlwBufferSignal_res_reg_13_MC_D2_PT_1_IN5,
      I6 => NlwBufferSignal_res_reg_13_MC_D2_PT_1_IN6,
      I7 => NlwBufferSignal_res_reg_13_MC_D2_PT_1_IN7,
      I8 => NlwBufferSignal_res_reg_13_MC_D2_PT_1_IN8,
      I9 => NlwBufferSignal_res_reg_13_MC_D2_PT_1_IN9,
      I10 => NlwBufferSignal_res_reg_13_MC_D2_PT_1_IN10,
      I11 => NlwBufferSignal_res_reg_13_MC_D2_PT_1_IN11,
      I12 => NlwBufferSignal_res_reg_13_MC_D2_PT_1_IN12,
      I13 => NlwBufferSignal_res_reg_13_MC_D2_PT_1_IN13,
      I14 => NlwBufferSignal_res_reg_13_MC_D2_PT_1_IN14,
      I15 => NlwBufferSignal_res_reg_13_MC_D2_PT_1_IN15,
      O => res_reg_13_MC_D2_PT_1_346
    );
  res_reg_13_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_res_reg_13_MC_D2_IN0,
      I1 => NlwBufferSignal_res_reg_13_MC_D2_IN1,
      O => res_reg_13_MC_D2_344
    );
  res_reg_14_Q : X_BUF
    port map (
      I => res_reg_14_MC_Q,
      O => res_reg(14)
    );
  res_reg_14_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_res_reg_14_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_res_reg_14_MC_tsimcreated_xor_IN1,
      O => res_reg_14_MC_tsimcreated_xor_Q_349
    );
  res_reg_14_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_res_reg_14_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_res_reg_14_MC_REG_CLK,
      SET => Gnd_36,
      RST => Gnd_36,
      O => res_reg_14_MC_Q
    );
  res_reg_14_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_res_reg_14_MC_D_IN0,
      I1 => NlwBufferSignal_res_reg_14_MC_D_IN1,
      O => res_reg_14_MC_D_348
    );
  res_reg_14_MC_D1 : X_ZERO
    port map (
      O => res_reg_14_MC_D1_350
    );
  res_reg_14_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwInverterSignal_res_reg_14_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_res_reg_14_MC_D2_PT_0_IN1,
      O => res_reg_14_MC_D2_PT_0_352
    );
  res_reg_14_MC_D2_PT_1 : X_AND32
    port map (
      I0 => NlwInverterSignal_res_reg_14_MC_D2_PT_1_IN0,
      I1 => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN1,
      I2 => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN2,
      I3 => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN3,
      I4 => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN4,
      I5 => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN5,
      I6 => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN6,
      I7 => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN7,
      I8 => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN8,
      I9 => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN9,
      I10 => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN10,
      I11 => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN11,
      I12 => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN12,
      I13 => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN13,
      I14 => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN14,
      I15 => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN15,
      I16 => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN16,
      I17 => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN17,
      I18 => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN18,
      I19 => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN19,
      I20 => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN20,
      I21 => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN21,
      I22 => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN22,
      I23 => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN23,
      I24 => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN24,
      I25 => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN25,
      I26 => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN26,
      I27 => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN27,
      I28 => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN28,
      I29 => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN29,
      I30 => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN30,
      I31 => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN31,
      O => res_reg_14_MC_D2_PT_1_353
    );
  res_reg_14_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_res_reg_14_MC_D2_IN0,
      I1 => NlwBufferSignal_res_reg_14_MC_D2_IN1,
      O => res_reg_14_MC_D2_351
    );
  res_reg_15_Q : X_BUF
    port map (
      I => res_reg_15_MC_Q,
      O => res_reg(15)
    );
  res_reg_15_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_res_reg_15_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_res_reg_15_MC_tsimcreated_xor_IN1,
      O => res_reg_15_MC_tsimcreated_xor_Q_356
    );
  res_reg_15_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_res_reg_15_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_res_reg_15_MC_REG_CLK,
      SET => Gnd_36,
      RST => Gnd_36,
      O => res_reg_15_MC_Q
    );
  res_reg_15_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_res_reg_15_MC_D_IN0,
      I1 => NlwBufferSignal_res_reg_15_MC_D_IN1,
      O => res_reg_15_MC_D_355
    );
  res_reg_15_MC_D1 : X_ZERO
    port map (
      O => res_reg_15_MC_D1_357
    );
  res_reg_15_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwInverterSignal_res_reg_15_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_res_reg_15_MC_D2_PT_0_IN1,
      O => res_reg_15_MC_D2_PT_0_359
    );
  res_reg_15_MC_D2_PT_1 : X_AND32
    port map (
      I0 => NlwInverterSignal_res_reg_15_MC_D2_PT_1_IN0,
      I1 => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN1,
      I2 => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN2,
      I3 => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN3,
      I4 => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN4,
      I5 => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN5,
      I6 => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN6,
      I7 => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN7,
      I8 => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN8,
      I9 => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN9,
      I10 => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN10,
      I11 => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN11,
      I12 => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN12,
      I13 => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN13,
      I14 => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN14,
      I15 => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN15,
      I16 => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN16,
      I17 => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN17,
      I18 => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN18,
      I19 => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN19,
      I20 => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN20,
      I21 => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN21,
      I22 => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN22,
      I23 => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN23,
      I24 => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN24,
      I25 => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN25,
      I26 => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN26,
      I27 => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN27,
      I28 => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN28,
      I29 => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN29,
      I30 => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN30,
      I31 => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN31,
      O => res_reg_15_MC_D2_PT_1_360
    );
  res_reg_15_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_res_reg_15_MC_D2_IN0,
      I1 => NlwBufferSignal_res_reg_15_MC_D2_IN1,
      O => res_reg_15_MC_D2_358
    );
  ser_in_comparator_Mxor_addr_valid_xor0000_xor0000 : X_BUF
    port map (
      I => ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_Q_361,
      O => ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_201
    );
  ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_Q : X_BUF
    port map (
      I => ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D_362,
      O => ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_Q_361
    );
  ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D_IN0,
      I1 => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D_IN1,
      O => ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D_362
    );
  ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D1 : X_AND2
    port map (
      I0 => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D1_IN0,
      I1 => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D1_IN1,
      O => ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D1_363
    );
  ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_0 : X_AND3
    port map (
      I0 => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_0_IN1,
      I2 => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_0_IN2,
      O => ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_0_365
    );
  ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_1 : X_AND3
    port map (
      I0 => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_1_IN0,
      I1 => NlwInverterSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_1_IN1,
      I2 => NlwInverterSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_1_IN2,
      O => ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_1_366
    );
  ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_2 : X_AND3
    port map (
      I0 => NlwInverterSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_2_IN0,
      I1 => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_2_IN1,
      I2 => NlwInverterSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_2_IN2,
      O => ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_2_367
    );
  ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_3 : X_AND3
    port map (
      I0 => NlwInverterSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_3_IN0,
      I1 => NlwInverterSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_3_IN1,
      I2 => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_3_IN2,
      O => ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_3_368
    );
  ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2 : X_OR4
    port map (
      I0 => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_IN0,
      I1 => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_IN1,
      I2 => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_IN2,
      I3 => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_IN3,
      O => ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_364
    );
  ser_in_comparator_Mxor_addr_valid_xor0000_xor0001 : X_BUF
    port map (
      I => ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_Q_369,
      O => ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_202
    );
  ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_Q : X_BUF
    port map (
      I => ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D_370,
      O => ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_Q_369
    );
  ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D_IN0,
      I1 => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D_IN1,
      O => ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D_370
    );
  ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D1 : X_AND2
    port map (
      I0 => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D1_IN0,
      I1 => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D1_IN1,
      O => ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D1_371
    );
  ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_0 : X_AND3
    port map (
      I0 => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_0_IN1,
      I2 => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_0_IN2,
      O => ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_0_374
    );
  ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_1 : X_AND3
    port map (
      I0 => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_1_IN0,
      I1 => NlwInverterSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_1_IN1,
      I2 => NlwInverterSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_1_IN2,
      O => ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_1_375
    );
  ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_2 : X_AND3
    port map (
      I0 => NlwInverterSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_2_IN0,
      I1 => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_2_IN1,
      I2 => NlwInverterSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_2_IN2,
      O => ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_2_376
    );
  ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_3 : X_AND3
    port map (
      I0 => NlwInverterSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_3_IN0,
      I1 => NlwInverterSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_3_IN1,
      I2 => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_3_IN2,
      O => ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_3_377
    );
  ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2 : X_OR4
    port map (
      I0 => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_IN0,
      I1 => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_IN1,
      I2 => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_IN2,
      I3 => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_IN3,
      O => ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_372
    );
  ser_in_serial_dout_7_Q : X_BUF
    port map (
      I => ser_in_serial_dout_7_MC_Q,
      O => ser_in_serial_dout_7_Q_373
    );
  ser_in_serial_dout_7_MC_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_ser_in_serial_dout_7_MC_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_ser_in_serial_dout_7_MC_tsimcreated_prld_IN1,
      O => ser_in_serial_dout_7_MC_tsimcreated_prld_Q_379
    );
  ser_in_serial_dout_7_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_ser_in_serial_dout_7_MC_REG_IN,
      CE => ser_in_serial_dout_7_MC_CE_381,
      CLK => NlwBufferSignal_ser_in_serial_dout_7_MC_REG_CLK,
      SET => Gnd_36,
      RST => ser_in_serial_dout_7_MC_tsimcreated_prld_Q_379,
      O => ser_in_serial_dout_7_MC_Q
    );
  ser_in_serial_dout_7_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_ser_in_serial_dout_7_MC_D_IN0,
      I1 => NlwBufferSignal_ser_in_serial_dout_7_MC_D_IN1,
      O => ser_in_serial_dout_7_MC_D_380
    );
  ser_in_serial_dout_7_MC_D1 : X_ZERO
    port map (
      O => ser_in_serial_dout_7_MC_D1_382
    );
  ser_in_serial_dout_7_MC_D2 : X_AND2
    port map (
      I0 => NlwBufferSignal_ser_in_serial_dout_7_MC_D2_IN0,
      I1 => NlwBufferSignal_ser_in_serial_dout_7_MC_D2_IN1,
      O => ser_in_serial_dout_7_MC_D2_383
    );
  ser_in_serial_dout_7_MC_CE : X_AND2
    port map (
      I0 => NlwInverterSignal_ser_in_serial_dout_7_MC_CE_IN0,
      I1 => NlwInverterSignal_ser_in_serial_dout_7_MC_CE_IN1,
      O => ser_in_serial_dout_7_MC_CE_381
    );
  ser_in_counter_STATE_FSM_FFd2 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd2_MC_Q,
      O => ser_in_counter_STATE_FSM_FFd2_128
    );
  ser_in_counter_STATE_FSM_FFd2_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_tsimcreated_xor_IN1,
      O => ser_in_counter_STATE_FSM_FFd2_MC_tsimcreated_xor_Q_386
    );
  ser_in_counter_STATE_FSM_FFd2_MC_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_tsimcreated_prld_IN1,
      O => ser_in_counter_STATE_FSM_FFd2_MC_tsimcreated_prld_Q_387
    );
  ser_in_counter_STATE_FSM_FFd2_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_REG_CLK,
      SET => Gnd_36,
      RST => ser_in_counter_STATE_FSM_FFd2_MC_tsimcreated_prld_Q_387,
      O => ser_in_counter_STATE_FSM_FFd2_MC_Q
    );
  ser_in_counter_STATE_FSM_FFd2_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D_IN0,
      I1 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D_IN1,
      O => ser_in_counter_STATE_FSM_FFd2_MC_D_385
    );
  ser_in_counter_STATE_FSM_FFd2_MC_D1 : X_ZERO
    port map (
      O => ser_in_counter_STATE_FSM_FFd2_MC_D1_388
    );
  ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0 : X_AND16
    port map (
      I0 => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN1,
      I2 => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN2,
      I3 => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN3,
      I4 => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN4,
      I5 => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN5,
      I6 => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN6,
      I7 => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN7,
      I8 => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN8,
      I9 => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN9,
      I10 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN10,
      I11 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN11,
      I12 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN12,
      I13 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN13,
      I14 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN14,
      I15 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN15,
      O => ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_390
    );
  ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1 : X_AND16
    port map (
      I0 => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN0,
      I1 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN1,
      I2 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN2,
      I3 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN3,
      I4 => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN4,
      I5 => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN5,
      I6 => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN6,
      I7 => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN7,
      I8 => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN8,
      I9 => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN9,
      I10 => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN10,
      I11 => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN11,
      I12 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN12,
      I13 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN13,
      I14 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN14,
      I15 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN15,
      O => ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_391
    );
  ser_in_counter_STATE_FSM_FFd2_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_IN0,
      I1 => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_IN1,
      O => ser_in_counter_STATE_FSM_FFd2_MC_D2_389
    );
  ser_in_counter_bitcount_2_Q : X_BUF
    port map (
      I => ser_in_counter_bitcount_2_MC_Q,
      O => ser_in_counter_bitcount(2)
    );
  ser_in_counter_bitcount_2_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_bitcount_2_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_ser_in_counter_bitcount_2_MC_tsimcreated_xor_IN1,
      O => ser_in_counter_bitcount_2_MC_tsimcreated_xor_Q_394
    );
  ser_in_counter_bitcount_2_MC_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_bitcount_2_MC_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_ser_in_counter_bitcount_2_MC_tsimcreated_prld_IN1,
      O => ser_in_counter_bitcount_2_MC_tsimcreated_prld_Q_395
    );
  ser_in_counter_bitcount_2_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_2_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_ser_in_counter_bitcount_2_MC_REG_CLK,
      SET => Gnd_36,
      RST => ser_in_counter_bitcount_2_MC_tsimcreated_prld_Q_395,
      O => ser_in_counter_bitcount_2_MC_Q
    );
  ser_in_counter_bitcount_2_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_bitcount_2_MC_D_IN0,
      I1 => NlwBufferSignal_ser_in_counter_bitcount_2_MC_D_IN1,
      O => ser_in_counter_bitcount_2_MC_D_393
    );
  ser_in_counter_bitcount_2_MC_D1 : X_AND2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_bitcount_2_MC_D1_IN0,
      I1 => NlwBufferSignal_ser_in_counter_bitcount_2_MC_D1_IN1,
      O => ser_in_counter_bitcount_2_MC_D1_396
    );
  ser_in_counter_bitcount_2_MC_D2 : X_ZERO
    port map (
      O => ser_in_counter_bitcount_2_MC_D2_397
    );
  ser_in_counter_bitcount_3_Q : X_BUF
    port map (
      I => ser_in_counter_bitcount_3_MC_Q,
      O => ser_in_counter_bitcount(3)
    );
  ser_in_counter_bitcount_3_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_bitcount_3_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_ser_in_counter_bitcount_3_MC_tsimcreated_xor_IN1,
      O => ser_in_counter_bitcount_3_MC_tsimcreated_xor_Q_400
    );
  ser_in_counter_bitcount_3_MC_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_bitcount_3_MC_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_ser_in_counter_bitcount_3_MC_tsimcreated_prld_IN1,
      O => ser_in_counter_bitcount_3_MC_tsimcreated_prld_Q_401
    );
  ser_in_counter_bitcount_3_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_3_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_ser_in_counter_bitcount_3_MC_REG_CLK,
      SET => Gnd_36,
      RST => ser_in_counter_bitcount_3_MC_tsimcreated_prld_Q_401,
      O => ser_in_counter_bitcount_3_MC_Q
    );
  ser_in_counter_bitcount_3_MC_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_ser_in_counter_bitcount_3_MC_D_IN0,
      I1 => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D_IN1,
      O => ser_in_counter_bitcount_3_MC_D_399
    );
  ser_in_counter_bitcount_3_MC_D1 : X_ZERO
    port map (
      O => ser_in_counter_bitcount_3_MC_D1_402
    );
  ser_in_counter_bitcount_3_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwInverterSignal_ser_in_counter_bitcount_3_MC_D2_PT_0_IN0,
      I1 => NlwInverterSignal_ser_in_counter_bitcount_3_MC_D2_PT_0_IN1,
      O => ser_in_counter_bitcount_3_MC_D2_PT_0_404
    );
  ser_in_counter_bitcount_3_MC_D2_PT_1 : X_AND2
    port map (
      I0 => NlwInverterSignal_ser_in_counter_bitcount_3_MC_D2_PT_1_IN0,
      I1 => NlwInverterSignal_ser_in_counter_bitcount_3_MC_D2_PT_1_IN1,
      O => ser_in_counter_bitcount_3_MC_D2_PT_1_405
    );
  ser_in_counter_bitcount_3_MC_D2_PT_2 : X_AND2
    port map (
      I0 => NlwInverterSignal_ser_in_counter_bitcount_3_MC_D2_PT_2_IN0,
      I1 => NlwInverterSignal_ser_in_counter_bitcount_3_MC_D2_PT_2_IN1,
      O => ser_in_counter_bitcount_3_MC_D2_PT_2_406
    );
  ser_in_counter_bitcount_3_MC_D2_PT_3 : X_AND16
    port map (
      I0 => NlwInverterSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN0,
      I1 => NlwInverterSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN1,
      I2 => NlwInverterSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN2,
      I3 => NlwInverterSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN3,
      I4 => NlwInverterSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN4,
      I5 => NlwInverterSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN5,
      I6 => NlwInverterSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN6,
      I7 => NlwInverterSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN7,
      I8 => NlwInverterSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN8,
      I9 => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN9,
      I10 => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN10,
      I11 => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN11,
      I12 => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN12,
      I13 => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN13,
      I14 => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN14,
      I15 => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN15,
      O => ser_in_counter_bitcount_3_MC_D2_PT_3_407
    );
  ser_in_counter_bitcount_3_MC_D2 : X_OR4
    port map (
      I0 => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_IN0,
      I1 => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_IN1,
      I2 => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_IN2,
      I3 => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_IN3,
      O => ser_in_counter_bitcount_3_MC_D2_403
    );
  ser_in_counter_bitcount_4_Q : X_BUF
    port map (
      I => ser_in_counter_bitcount_4_MC_Q,
      O => ser_in_counter_bitcount(4)
    );
  ser_in_counter_bitcount_4_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_bitcount_4_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_ser_in_counter_bitcount_4_MC_tsimcreated_xor_IN1,
      O => ser_in_counter_bitcount_4_MC_tsimcreated_xor_Q_410
    );
  ser_in_counter_bitcount_4_MC_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_bitcount_4_MC_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_ser_in_counter_bitcount_4_MC_tsimcreated_prld_IN1,
      O => ser_in_counter_bitcount_4_MC_tsimcreated_prld_Q_411
    );
  ser_in_counter_bitcount_4_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_4_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_ser_in_counter_bitcount_4_MC_REG_CLK,
      SET => Gnd_36,
      RST => ser_in_counter_bitcount_4_MC_tsimcreated_prld_Q_411,
      O => ser_in_counter_bitcount_4_MC_Q
    );
  ser_in_counter_bitcount_4_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_bitcount_4_MC_D_IN0,
      I1 => NlwBufferSignal_ser_in_counter_bitcount_4_MC_D_IN1,
      O => ser_in_counter_bitcount_4_MC_D_409
    );
  ser_in_counter_bitcount_4_MC_D1 : X_AND4
    port map (
      I0 => NlwBufferSignal_ser_in_counter_bitcount_4_MC_D1_IN0,
      I1 => NlwBufferSignal_ser_in_counter_bitcount_4_MC_D1_IN1,
      I2 => NlwBufferSignal_ser_in_counter_bitcount_4_MC_D1_IN2,
      I3 => NlwBufferSignal_ser_in_counter_bitcount_4_MC_D1_IN3,
      O => ser_in_counter_bitcount_4_MC_D1_412
    );
  ser_in_counter_bitcount_4_MC_D2 : X_ZERO
    port map (
      O => ser_in_counter_bitcount_4_MC_D2_413
    );
  ser_in_counter_bitcount_6_Q : X_BUF
    port map (
      I => ser_in_counter_bitcount_6_MC_Q,
      O => ser_in_counter_bitcount(6)
    );
  ser_in_counter_bitcount_6_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_bitcount_6_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_ser_in_counter_bitcount_6_MC_tsimcreated_xor_IN1,
      O => ser_in_counter_bitcount_6_MC_tsimcreated_xor_Q_416
    );
  ser_in_counter_bitcount_6_MC_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_bitcount_6_MC_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_ser_in_counter_bitcount_6_MC_tsimcreated_prld_IN1,
      O => ser_in_counter_bitcount_6_MC_tsimcreated_prld_Q_417
    );
  ser_in_counter_bitcount_6_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_6_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_ser_in_counter_bitcount_6_MC_REG_CLK,
      SET => Gnd_36,
      RST => ser_in_counter_bitcount_6_MC_tsimcreated_prld_Q_417,
      O => ser_in_counter_bitcount_6_MC_Q
    );
  ser_in_counter_bitcount_6_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_bitcount_6_MC_D_IN0,
      I1 => NlwBufferSignal_ser_in_counter_bitcount_6_MC_D_IN1,
      O => ser_in_counter_bitcount_6_MC_D_415
    );
  ser_in_counter_bitcount_6_MC_D1 : X_ZERO
    port map (
      O => ser_in_counter_bitcount_6_MC_D1_418
    );
  ser_in_counter_bitcount_6_MC_D2_PT_0 : X_AND6
    port map (
      I0 => NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_0_IN1,
      I2 => NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_0_IN2,
      I3 => NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_0_IN3,
      I4 => NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_0_IN4,
      I5 => NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_0_IN5,
      O => ser_in_counter_bitcount_6_MC_D2_PT_0_420
    );
  ser_in_counter_bitcount_6_MC_D2_PT_1 : X_AND16
    port map (
      I0 => NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_1_IN0,
      I1 => NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_1_IN1,
      I2 => NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_1_IN2,
      I3 => NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_1_IN3,
      I4 => NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_1_IN4,
      I5 => NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_1_IN5,
      I6 => NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_1_IN6,
      I7 => NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_1_IN7,
      I8 => NlwInverterSignal_ser_in_counter_bitcount_6_MC_D2_PT_1_IN8,
      I9 => NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_1_IN9,
      I10 => NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_1_IN10,
      I11 => NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_1_IN11,
      I12 => NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_1_IN12,
      I13 => NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_1_IN13,
      I14 => NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_1_IN14,
      I15 => NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_1_IN15,
      O => ser_in_counter_bitcount_6_MC_D2_PT_1_421
    );
  ser_in_counter_bitcount_6_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_IN0,
      I1 => NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_IN1,
      O => ser_in_counter_bitcount_6_MC_D2_419
    );
  ser_in_counter_bitcount_5_Q : X_BUF
    port map (
      I => ser_in_counter_bitcount_5_MC_Q,
      O => ser_in_counter_bitcount(5)
    );
  ser_in_counter_bitcount_5_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_bitcount_5_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_ser_in_counter_bitcount_5_MC_tsimcreated_xor_IN1,
      O => ser_in_counter_bitcount_5_MC_tsimcreated_xor_Q_424
    );
  ser_in_counter_bitcount_5_MC_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_bitcount_5_MC_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_ser_in_counter_bitcount_5_MC_tsimcreated_prld_IN1,
      O => ser_in_counter_bitcount_5_MC_tsimcreated_prld_Q_425
    );
  ser_in_counter_bitcount_5_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_5_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_ser_in_counter_bitcount_5_MC_REG_CLK,
      SET => Gnd_36,
      RST => ser_in_counter_bitcount_5_MC_tsimcreated_prld_Q_425,
      O => ser_in_counter_bitcount_5_MC_Q
    );
  ser_in_counter_bitcount_5_MC_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_ser_in_counter_bitcount_5_MC_D_IN0,
      I1 => NlwBufferSignal_ser_in_counter_bitcount_5_MC_D_IN1,
      O => ser_in_counter_bitcount_5_MC_D_423
    );
  ser_in_counter_bitcount_5_MC_D1 : X_ZERO
    port map (
      O => ser_in_counter_bitcount_5_MC_D1_426
    );
  ser_in_counter_bitcount_5_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwInverterSignal_ser_in_counter_bitcount_5_MC_D2_PT_0_IN0,
      I1 => NlwInverterSignal_ser_in_counter_bitcount_5_MC_D2_PT_0_IN1,
      O => ser_in_counter_bitcount_5_MC_D2_PT_0_428
    );
  ser_in_counter_bitcount_5_MC_D2_PT_1 : X_AND2
    port map (
      I0 => NlwInverterSignal_ser_in_counter_bitcount_5_MC_D2_PT_1_IN0,
      I1 => NlwInverterSignal_ser_in_counter_bitcount_5_MC_D2_PT_1_IN1,
      O => ser_in_counter_bitcount_5_MC_D2_PT_1_429
    );
  ser_in_counter_bitcount_5_MC_D2_PT_2 : X_AND2
    port map (
      I0 => NlwInverterSignal_ser_in_counter_bitcount_5_MC_D2_PT_2_IN0,
      I1 => NlwInverterSignal_ser_in_counter_bitcount_5_MC_D2_PT_2_IN1,
      O => ser_in_counter_bitcount_5_MC_D2_PT_2_430
    );
  ser_in_counter_bitcount_5_MC_D2_PT_3 : X_AND2
    port map (
      I0 => NlwInverterSignal_ser_in_counter_bitcount_5_MC_D2_PT_3_IN0,
      I1 => NlwInverterSignal_ser_in_counter_bitcount_5_MC_D2_PT_3_IN1,
      O => ser_in_counter_bitcount_5_MC_D2_PT_3_431
    );
  ser_in_counter_bitcount_5_MC_D2_PT_4 : X_AND2
    port map (
      I0 => NlwInverterSignal_ser_in_counter_bitcount_5_MC_D2_PT_4_IN0,
      I1 => NlwInverterSignal_ser_in_counter_bitcount_5_MC_D2_PT_4_IN1,
      O => ser_in_counter_bitcount_5_MC_D2_PT_4_432
    );
  ser_in_counter_bitcount_5_MC_D2_PT_5 : X_AND6
    port map (
      I0 => NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_PT_5_IN0,
      I1 => NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_PT_5_IN1,
      I2 => NlwInverterSignal_ser_in_counter_bitcount_5_MC_D2_PT_5_IN2,
      I3 => NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_PT_5_IN3,
      I4 => NlwInverterSignal_ser_in_counter_bitcount_5_MC_D2_PT_5_IN4,
      I5 => NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_PT_5_IN5,
      O => ser_in_counter_bitcount_5_MC_D2_PT_5_433
    );
  ser_in_counter_bitcount_5_MC_D2 : X_OR6
    port map (
      I0 => NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_IN0,
      I1 => NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_IN1,
      I2 => NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_IN2,
      I3 => NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_IN3,
      I4 => NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_IN4,
      I5 => NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_IN5,
      O => ser_in_counter_bitcount_5_MC_D2_427
    );
  ser_in_counter_bitcount_8_Q : X_BUF
    port map (
      I => ser_in_counter_bitcount_8_MC_Q,
      O => ser_in_counter_bitcount(8)
    );
  ser_in_counter_bitcount_8_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_bitcount_8_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_ser_in_counter_bitcount_8_MC_tsimcreated_xor_IN1,
      O => ser_in_counter_bitcount_8_MC_tsimcreated_xor_Q_436
    );
  ser_in_counter_bitcount_8_MC_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_bitcount_8_MC_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_ser_in_counter_bitcount_8_MC_tsimcreated_prld_IN1,
      O => ser_in_counter_bitcount_8_MC_tsimcreated_prld_Q_437
    );
  ser_in_counter_bitcount_8_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_8_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_ser_in_counter_bitcount_8_MC_REG_CLK,
      SET => Gnd_36,
      RST => ser_in_counter_bitcount_8_MC_tsimcreated_prld_Q_437,
      O => ser_in_counter_bitcount_8_MC_Q
    );
  ser_in_counter_bitcount_8_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D_IN0,
      I1 => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D_IN1,
      O => ser_in_counter_bitcount_8_MC_D_435
    );
  ser_in_counter_bitcount_8_MC_D1 : X_ZERO
    port map (
      O => ser_in_counter_bitcount_8_MC_D1_438
    );
  ser_in_counter_bitcount_8_MC_D2_PT_0 : X_AND8
    port map (
      I0 => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_0_IN1,
      I2 => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_0_IN2,
      I3 => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_0_IN3,
      I4 => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_0_IN4,
      I5 => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_0_IN5,
      I6 => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_0_IN6,
      I7 => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_0_IN7,
      O => ser_in_counter_bitcount_8_MC_D2_PT_0_440
    );
  ser_in_counter_bitcount_8_MC_D2_PT_1 : X_AND16
    port map (
      I0 => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN0,
      I1 => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN1,
      I2 => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN2,
      I3 => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN3,
      I4 => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN4,
      I5 => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN5,
      I6 => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN6,
      I7 => NlwInverterSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN7,
      I8 => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN8,
      I9 => NlwInverterSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN9,
      I10 => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN10,
      I11 => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN11,
      I12 => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN12,
      I13 => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN13,
      I14 => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN14,
      I15 => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN15,
      O => ser_in_counter_bitcount_8_MC_D2_PT_1_441
    );
  ser_in_counter_bitcount_8_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_IN0,
      I1 => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_IN1,
      O => ser_in_counter_bitcount_8_MC_D2_439
    );
  ser_in_counter_bitcount_7_Q : X_BUF
    port map (
      I => ser_in_counter_bitcount_7_MC_Q,
      O => ser_in_counter_bitcount(7)
    );
  ser_in_counter_bitcount_7_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_bitcount_7_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_ser_in_counter_bitcount_7_MC_tsimcreated_xor_IN1,
      O => ser_in_counter_bitcount_7_MC_tsimcreated_xor_Q_444
    );
  ser_in_counter_bitcount_7_MC_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_bitcount_7_MC_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_ser_in_counter_bitcount_7_MC_tsimcreated_prld_IN1,
      O => ser_in_counter_bitcount_7_MC_tsimcreated_prld_Q_445
    );
  ser_in_counter_bitcount_7_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_7_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_ser_in_counter_bitcount_7_MC_REG_CLK,
      SET => Gnd_36,
      RST => ser_in_counter_bitcount_7_MC_tsimcreated_prld_Q_445,
      O => ser_in_counter_bitcount_7_MC_Q
    );
  ser_in_counter_bitcount_7_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_bitcount_7_MC_D_IN0,
      I1 => NlwBufferSignal_ser_in_counter_bitcount_7_MC_D_IN1,
      O => ser_in_counter_bitcount_7_MC_D_443
    );
  ser_in_counter_bitcount_7_MC_D1 : X_AND7
    port map (
      I0 => NlwBufferSignal_ser_in_counter_bitcount_7_MC_D1_IN0,
      I1 => NlwBufferSignal_ser_in_counter_bitcount_7_MC_D1_IN1,
      I2 => NlwBufferSignal_ser_in_counter_bitcount_7_MC_D1_IN2,
      I3 => NlwBufferSignal_ser_in_counter_bitcount_7_MC_D1_IN3,
      I4 => NlwBufferSignal_ser_in_counter_bitcount_7_MC_D1_IN4,
      I5 => NlwBufferSignal_ser_in_counter_bitcount_7_MC_D1_IN5,
      I6 => NlwBufferSignal_ser_in_counter_bitcount_7_MC_D1_IN6,
      O => ser_in_counter_bitcount_7_MC_D1_446
    );
  ser_in_counter_bitcount_7_MC_D2 : X_ZERO
    port map (
      O => ser_in_counter_bitcount_7_MC_D2_447
    );
  ser_in_counter_bitcount_9_Q : X_BUF
    port map (
      I => ser_in_counter_bitcount_9_MC_Q,
      O => ser_in_counter_bitcount(9)
    );
  ser_in_counter_bitcount_9_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_bitcount_9_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_ser_in_counter_bitcount_9_MC_tsimcreated_xor_IN1,
      O => ser_in_counter_bitcount_9_MC_tsimcreated_xor_Q_450
    );
  ser_in_counter_bitcount_9_MC_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_bitcount_9_MC_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_ser_in_counter_bitcount_9_MC_tsimcreated_prld_IN1,
      O => ser_in_counter_bitcount_9_MC_tsimcreated_prld_Q_451
    );
  ser_in_counter_bitcount_9_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_9_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_ser_in_counter_bitcount_9_MC_REG_CLK,
      SET => Gnd_36,
      RST => ser_in_counter_bitcount_9_MC_tsimcreated_prld_Q_451,
      O => ser_in_counter_bitcount_9_MC_Q
    );
  ser_in_counter_bitcount_9_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D_IN0,
      I1 => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D_IN1,
      O => ser_in_counter_bitcount_9_MC_D_449
    );
  ser_in_counter_bitcount_9_MC_D1 : X_ZERO
    port map (
      O => ser_in_counter_bitcount_9_MC_D1_452
    );
  ser_in_counter_bitcount_9_MC_D2_PT_0 : X_AND16
    port map (
      I0 => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_0_IN1,
      I2 => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_0_IN2,
      I3 => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_0_IN3,
      I4 => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_0_IN4,
      I5 => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_0_IN5,
      I6 => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_0_IN6,
      I7 => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_0_IN7,
      I8 => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_0_IN8,
      I9 => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_0_IN9,
      I10 => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_0_IN10,
      I11 => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_0_IN11,
      I12 => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_0_IN12,
      I13 => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_0_IN13,
      I14 => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_0_IN14,
      I15 => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_0_IN15,
      O => ser_in_counter_bitcount_9_MC_D2_PT_0_454
    );
  ser_in_counter_bitcount_9_MC_D2_PT_1 : X_AND16
    port map (
      I0 => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN0,
      I1 => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN1,
      I2 => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN2,
      I3 => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN3,
      I4 => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN4,
      I5 => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN5,
      I6 => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN6,
      I7 => NlwInverterSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN7,
      I8 => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN8,
      I9 => NlwInverterSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN9,
      I10 => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN10,
      I11 => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN11,
      I12 => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN12,
      I13 => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN13,
      I14 => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN14,
      I15 => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN15,
      O => ser_in_counter_bitcount_9_MC_D2_PT_1_455
    );
  ser_in_counter_bitcount_9_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_IN0,
      I1 => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_IN1,
      O => ser_in_counter_bitcount_9_MC_D2_453
    );
  N_PZ_448 : X_BUF
    port map (
      I => N_PZ_448_MC_Q_456,
      O => N_PZ_448_117
    );
  N_PZ_448_MC_Q : X_BUF
    port map (
      I => N_PZ_448_MC_D_457,
      O => N_PZ_448_MC_Q_456
    );
  N_PZ_448_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_N_PZ_448_MC_D_IN0,
      I1 => NlwBufferSignal_N_PZ_448_MC_D_IN1,
      O => N_PZ_448_MC_D_457
    );
  N_PZ_448_MC_D1 : X_AND2
    port map (
      I0 => NlwBufferSignal_N_PZ_448_MC_D1_IN0,
      I1 => NlwBufferSignal_N_PZ_448_MC_D1_IN1,
      O => N_PZ_448_MC_D1_458
    );
  N_PZ_448_MC_D2 : X_ZERO
    port map (
      O => N_PZ_448_MC_D2_459
    );
  ser_in_counter_latchcount_1_Q : X_BUF
    port map (
      I => ser_in_counter_latchcount_1_MC_Q,
      O => ser_in_counter_latchcount(1)
    );
  ser_in_counter_latchcount_1_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_latchcount_1_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_ser_in_counter_latchcount_1_MC_tsimcreated_xor_IN1,
      O => ser_in_counter_latchcount_1_MC_tsimcreated_xor_Q_462
    );
  ser_in_counter_latchcount_1_MC_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_latchcount_1_MC_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_ser_in_counter_latchcount_1_MC_tsimcreated_prld_IN1,
      O => ser_in_counter_latchcount_1_MC_tsimcreated_prld_Q_463
    );
  ser_in_counter_latchcount_1_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_ser_in_counter_latchcount_1_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_ser_in_counter_latchcount_1_MC_REG_CLK,
      SET => Gnd_36,
      RST => ser_in_counter_latchcount_1_MC_tsimcreated_prld_Q_463,
      O => ser_in_counter_latchcount_1_MC_Q
    );
  ser_in_counter_latchcount_1_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_latchcount_1_MC_D_IN0,
      I1 => NlwBufferSignal_ser_in_counter_latchcount_1_MC_D_IN1,
      O => ser_in_counter_latchcount_1_MC_D_461
    );
  ser_in_counter_latchcount_1_MC_D1 : X_AND16
    port map (
      I0 => NlwBufferSignal_ser_in_counter_latchcount_1_MC_D1_IN0,
      I1 => NlwBufferSignal_ser_in_counter_latchcount_1_MC_D1_IN1,
      I2 => NlwBufferSignal_ser_in_counter_latchcount_1_MC_D1_IN2,
      I3 => NlwBufferSignal_ser_in_counter_latchcount_1_MC_D1_IN3,
      I4 => NlwBufferSignal_ser_in_counter_latchcount_1_MC_D1_IN4,
      I5 => NlwBufferSignal_ser_in_counter_latchcount_1_MC_D1_IN5,
      I6 => NlwBufferSignal_ser_in_counter_latchcount_1_MC_D1_IN6,
      I7 => NlwBufferSignal_ser_in_counter_latchcount_1_MC_D1_IN7,
      I8 => NlwInverterSignal_ser_in_counter_latchcount_1_MC_D1_IN8,
      I9 => NlwBufferSignal_ser_in_counter_latchcount_1_MC_D1_IN9,
      I10 => NlwInverterSignal_ser_in_counter_latchcount_1_MC_D1_IN10,
      I11 => NlwBufferSignal_ser_in_counter_latchcount_1_MC_D1_IN11,
      I12 => NlwBufferSignal_ser_in_counter_latchcount_1_MC_D1_IN12,
      I13 => NlwBufferSignal_ser_in_counter_latchcount_1_MC_D1_IN13,
      I14 => NlwBufferSignal_ser_in_counter_latchcount_1_MC_D1_IN14,
      I15 => NlwBufferSignal_ser_in_counter_latchcount_1_MC_D1_IN15,
      O => ser_in_counter_latchcount_1_MC_D1_464
    );
  ser_in_counter_latchcount_1_MC_D2 : X_ZERO
    port map (
      O => ser_in_counter_latchcount_1_MC_D2_465
    );
  ser_in_counter_latchcount_2_Q : X_BUF
    port map (
      I => ser_in_counter_latchcount_2_MC_Q,
      O => ser_in_counter_latchcount(2)
    );
  ser_in_counter_latchcount_2_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_latchcount_2_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_ser_in_counter_latchcount_2_MC_tsimcreated_xor_IN1,
      O => ser_in_counter_latchcount_2_MC_tsimcreated_xor_Q_468
    );
  ser_in_counter_latchcount_2_MC_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_latchcount_2_MC_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_ser_in_counter_latchcount_2_MC_tsimcreated_prld_IN1,
      O => ser_in_counter_latchcount_2_MC_tsimcreated_prld_Q_469
    );
  ser_in_counter_latchcount_2_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_ser_in_counter_latchcount_2_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_ser_in_counter_latchcount_2_MC_REG_CLK,
      SET => Gnd_36,
      RST => ser_in_counter_latchcount_2_MC_tsimcreated_prld_Q_469,
      O => ser_in_counter_latchcount_2_MC_Q
    );
  ser_in_counter_latchcount_2_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_latchcount_2_MC_D_IN0,
      I1 => NlwBufferSignal_ser_in_counter_latchcount_2_MC_D_IN1,
      O => ser_in_counter_latchcount_2_MC_D_467
    );
  ser_in_counter_latchcount_2_MC_D1 : X_AND16
    port map (
      I0 => NlwBufferSignal_ser_in_counter_latchcount_2_MC_D1_IN0,
      I1 => NlwBufferSignal_ser_in_counter_latchcount_2_MC_D1_IN1,
      I2 => NlwBufferSignal_ser_in_counter_latchcount_2_MC_D1_IN2,
      I3 => NlwBufferSignal_ser_in_counter_latchcount_2_MC_D1_IN3,
      I4 => NlwBufferSignal_ser_in_counter_latchcount_2_MC_D1_IN4,
      I5 => NlwBufferSignal_ser_in_counter_latchcount_2_MC_D1_IN5,
      I6 => NlwBufferSignal_ser_in_counter_latchcount_2_MC_D1_IN6,
      I7 => NlwBufferSignal_ser_in_counter_latchcount_2_MC_D1_IN7,
      I8 => NlwInverterSignal_ser_in_counter_latchcount_2_MC_D1_IN8,
      I9 => NlwBufferSignal_ser_in_counter_latchcount_2_MC_D1_IN9,
      I10 => NlwInverterSignal_ser_in_counter_latchcount_2_MC_D1_IN10,
      I11 => NlwBufferSignal_ser_in_counter_latchcount_2_MC_D1_IN11,
      I12 => NlwBufferSignal_ser_in_counter_latchcount_2_MC_D1_IN12,
      I13 => NlwBufferSignal_ser_in_counter_latchcount_2_MC_D1_IN13,
      I14 => NlwBufferSignal_ser_in_counter_latchcount_2_MC_D1_IN14,
      I15 => NlwBufferSignal_ser_in_counter_latchcount_2_MC_D1_IN15,
      O => ser_in_counter_latchcount_2_MC_D1_470
    );
  ser_in_counter_latchcount_2_MC_D2 : X_ZERO
    port map (
      O => ser_in_counter_latchcount_2_MC_D2_471
    );
  ser_in_counter_latchcount_3_Q : X_BUF
    port map (
      I => ser_in_counter_latchcount_3_MC_Q,
      O => ser_in_counter_latchcount(3)
    );
  ser_in_counter_latchcount_3_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_latchcount_3_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_ser_in_counter_latchcount_3_MC_tsimcreated_xor_IN1,
      O => ser_in_counter_latchcount_3_MC_tsimcreated_xor_Q_474
    );
  ser_in_counter_latchcount_3_MC_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_latchcount_3_MC_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_ser_in_counter_latchcount_3_MC_tsimcreated_prld_IN1,
      O => ser_in_counter_latchcount_3_MC_tsimcreated_prld_Q_475
    );
  ser_in_counter_latchcount_3_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_ser_in_counter_latchcount_3_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_ser_in_counter_latchcount_3_MC_REG_CLK,
      SET => Gnd_36,
      RST => ser_in_counter_latchcount_3_MC_tsimcreated_prld_Q_475,
      O => ser_in_counter_latchcount_3_MC_Q
    );
  ser_in_counter_latchcount_3_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_latchcount_3_MC_D_IN0,
      I1 => NlwBufferSignal_ser_in_counter_latchcount_3_MC_D_IN1,
      O => ser_in_counter_latchcount_3_MC_D_473
    );
  ser_in_counter_latchcount_3_MC_D1 : X_AND16
    port map (
      I0 => NlwBufferSignal_ser_in_counter_latchcount_3_MC_D1_IN0,
      I1 => NlwBufferSignal_ser_in_counter_latchcount_3_MC_D1_IN1,
      I2 => NlwBufferSignal_ser_in_counter_latchcount_3_MC_D1_IN2,
      I3 => NlwBufferSignal_ser_in_counter_latchcount_3_MC_D1_IN3,
      I4 => NlwBufferSignal_ser_in_counter_latchcount_3_MC_D1_IN4,
      I5 => NlwBufferSignal_ser_in_counter_latchcount_3_MC_D1_IN5,
      I6 => NlwBufferSignal_ser_in_counter_latchcount_3_MC_D1_IN6,
      I7 => NlwBufferSignal_ser_in_counter_latchcount_3_MC_D1_IN7,
      I8 => NlwInverterSignal_ser_in_counter_latchcount_3_MC_D1_IN8,
      I9 => NlwBufferSignal_ser_in_counter_latchcount_3_MC_D1_IN9,
      I10 => NlwInverterSignal_ser_in_counter_latchcount_3_MC_D1_IN10,
      I11 => NlwBufferSignal_ser_in_counter_latchcount_3_MC_D1_IN11,
      I12 => NlwBufferSignal_ser_in_counter_latchcount_3_MC_D1_IN12,
      I13 => NlwBufferSignal_ser_in_counter_latchcount_3_MC_D1_IN13,
      I14 => NlwBufferSignal_ser_in_counter_latchcount_3_MC_D1_IN14,
      I15 => NlwBufferSignal_ser_in_counter_latchcount_3_MC_D1_IN15,
      O => ser_in_counter_latchcount_3_MC_D1_476
    );
  ser_in_counter_latchcount_3_MC_D2 : X_ZERO
    port map (
      O => ser_in_counter_latchcount_3_MC_D2_477
    );
  ser_in_counter_latchcount_4_Q : X_BUF
    port map (
      I => ser_in_counter_latchcount_4_MC_Q,
      O => ser_in_counter_latchcount(4)
    );
  ser_in_counter_latchcount_4_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_latchcount_4_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_ser_in_counter_latchcount_4_MC_tsimcreated_xor_IN1,
      O => ser_in_counter_latchcount_4_MC_tsimcreated_xor_Q_480
    );
  ser_in_counter_latchcount_4_MC_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_latchcount_4_MC_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_ser_in_counter_latchcount_4_MC_tsimcreated_prld_IN1,
      O => ser_in_counter_latchcount_4_MC_tsimcreated_prld_Q_481
    );
  ser_in_counter_latchcount_4_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_ser_in_counter_latchcount_4_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_ser_in_counter_latchcount_4_MC_REG_CLK,
      SET => Gnd_36,
      RST => ser_in_counter_latchcount_4_MC_tsimcreated_prld_Q_481,
      O => ser_in_counter_latchcount_4_MC_Q
    );
  ser_in_counter_latchcount_4_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_latchcount_4_MC_D_IN0,
      I1 => NlwBufferSignal_ser_in_counter_latchcount_4_MC_D_IN1,
      O => ser_in_counter_latchcount_4_MC_D_479
    );
  ser_in_counter_latchcount_4_MC_D1 : X_AND16
    port map (
      I0 => NlwBufferSignal_ser_in_counter_latchcount_4_MC_D1_IN0,
      I1 => NlwBufferSignal_ser_in_counter_latchcount_4_MC_D1_IN1,
      I2 => NlwBufferSignal_ser_in_counter_latchcount_4_MC_D1_IN2,
      I3 => NlwBufferSignal_ser_in_counter_latchcount_4_MC_D1_IN3,
      I4 => NlwBufferSignal_ser_in_counter_latchcount_4_MC_D1_IN4,
      I5 => NlwBufferSignal_ser_in_counter_latchcount_4_MC_D1_IN5,
      I6 => NlwBufferSignal_ser_in_counter_latchcount_4_MC_D1_IN6,
      I7 => NlwBufferSignal_ser_in_counter_latchcount_4_MC_D1_IN7,
      I8 => NlwInverterSignal_ser_in_counter_latchcount_4_MC_D1_IN8,
      I9 => NlwBufferSignal_ser_in_counter_latchcount_4_MC_D1_IN9,
      I10 => NlwInverterSignal_ser_in_counter_latchcount_4_MC_D1_IN10,
      I11 => NlwBufferSignal_ser_in_counter_latchcount_4_MC_D1_IN11,
      I12 => NlwBufferSignal_ser_in_counter_latchcount_4_MC_D1_IN12,
      I13 => NlwBufferSignal_ser_in_counter_latchcount_4_MC_D1_IN13,
      I14 => NlwBufferSignal_ser_in_counter_latchcount_4_MC_D1_IN14,
      I15 => NlwBufferSignal_ser_in_counter_latchcount_4_MC_D1_IN15,
      O => ser_in_counter_latchcount_4_MC_D1_482
    );
  ser_in_counter_latchcount_4_MC_D2 : X_ZERO
    port map (
      O => ser_in_counter_latchcount_4_MC_D2_483
    );
  ser_in_counter_latchcount_5_Q : X_BUF
    port map (
      I => ser_in_counter_latchcount_5_MC_Q,
      O => ser_in_counter_latchcount(5)
    );
  ser_in_counter_latchcount_5_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_latchcount_5_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_ser_in_counter_latchcount_5_MC_tsimcreated_xor_IN1,
      O => ser_in_counter_latchcount_5_MC_tsimcreated_xor_Q_486
    );
  ser_in_counter_latchcount_5_MC_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_latchcount_5_MC_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_ser_in_counter_latchcount_5_MC_tsimcreated_prld_IN1,
      O => ser_in_counter_latchcount_5_MC_tsimcreated_prld_Q_487
    );
  ser_in_counter_latchcount_5_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_ser_in_counter_latchcount_5_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_ser_in_counter_latchcount_5_MC_REG_CLK,
      SET => Gnd_36,
      RST => ser_in_counter_latchcount_5_MC_tsimcreated_prld_Q_487,
      O => ser_in_counter_latchcount_5_MC_Q
    );
  ser_in_counter_latchcount_5_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_latchcount_5_MC_D_IN0,
      I1 => NlwBufferSignal_ser_in_counter_latchcount_5_MC_D_IN1,
      O => ser_in_counter_latchcount_5_MC_D_485
    );
  ser_in_counter_latchcount_5_MC_D1 : X_AND16
    port map (
      I0 => NlwBufferSignal_ser_in_counter_latchcount_5_MC_D1_IN0,
      I1 => NlwBufferSignal_ser_in_counter_latchcount_5_MC_D1_IN1,
      I2 => NlwBufferSignal_ser_in_counter_latchcount_5_MC_D1_IN2,
      I3 => NlwBufferSignal_ser_in_counter_latchcount_5_MC_D1_IN3,
      I4 => NlwBufferSignal_ser_in_counter_latchcount_5_MC_D1_IN4,
      I5 => NlwBufferSignal_ser_in_counter_latchcount_5_MC_D1_IN5,
      I6 => NlwBufferSignal_ser_in_counter_latchcount_5_MC_D1_IN6,
      I7 => NlwBufferSignal_ser_in_counter_latchcount_5_MC_D1_IN7,
      I8 => NlwInverterSignal_ser_in_counter_latchcount_5_MC_D1_IN8,
      I9 => NlwBufferSignal_ser_in_counter_latchcount_5_MC_D1_IN9,
      I10 => NlwInverterSignal_ser_in_counter_latchcount_5_MC_D1_IN10,
      I11 => NlwBufferSignal_ser_in_counter_latchcount_5_MC_D1_IN11,
      I12 => NlwBufferSignal_ser_in_counter_latchcount_5_MC_D1_IN12,
      I13 => NlwBufferSignal_ser_in_counter_latchcount_5_MC_D1_IN13,
      I14 => NlwBufferSignal_ser_in_counter_latchcount_5_MC_D1_IN14,
      I15 => NlwBufferSignal_ser_in_counter_latchcount_5_MC_D1_IN15,
      O => ser_in_counter_latchcount_5_MC_D1_488
    );
  ser_in_counter_latchcount_5_MC_D2 : X_ZERO
    port map (
      O => ser_in_counter_latchcount_5_MC_D2_489
    );
  ser_in_counter_latchcount_6_Q : X_BUF
    port map (
      I => ser_in_counter_latchcount_6_MC_Q,
      O => ser_in_counter_latchcount(6)
    );
  ser_in_counter_latchcount_6_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_latchcount_6_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_ser_in_counter_latchcount_6_MC_tsimcreated_xor_IN1,
      O => ser_in_counter_latchcount_6_MC_tsimcreated_xor_Q_492
    );
  ser_in_counter_latchcount_6_MC_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_latchcount_6_MC_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_ser_in_counter_latchcount_6_MC_tsimcreated_prld_IN1,
      O => ser_in_counter_latchcount_6_MC_tsimcreated_prld_Q_493
    );
  ser_in_counter_latchcount_6_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_ser_in_counter_latchcount_6_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_ser_in_counter_latchcount_6_MC_REG_CLK,
      SET => Gnd_36,
      RST => ser_in_counter_latchcount_6_MC_tsimcreated_prld_Q_493,
      O => ser_in_counter_latchcount_6_MC_Q
    );
  ser_in_counter_latchcount_6_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D_IN0,
      I1 => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D_IN1,
      O => ser_in_counter_latchcount_6_MC_D_491
    );
  ser_in_counter_latchcount_6_MC_D1 : X_AND32
    port map (
      I0 => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN0,
      I1 => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN1,
      I2 => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN2,
      I3 => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN3,
      I4 => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN4,
      I5 => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN5,
      I6 => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN6,
      I7 => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN7,
      I8 => NlwInverterSignal_ser_in_counter_latchcount_6_MC_D1_IN8,
      I9 => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN9,
      I10 => NlwInverterSignal_ser_in_counter_latchcount_6_MC_D1_IN10,
      I11 => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN11,
      I12 => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN12,
      I13 => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN13,
      I14 => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN14,
      I15 => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN15,
      I16 => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN16,
      I17 => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN17,
      I18 => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN18,
      I19 => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN19,
      I20 => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN20,
      I21 => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN21,
      I22 => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN22,
      I23 => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN23,
      I24 => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN24,
      I25 => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN25,
      I26 => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN26,
      I27 => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN27,
      I28 => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN28,
      I29 => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN29,
      I30 => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN30,
      I31 => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN31,
      O => ser_in_counter_latchcount_6_MC_D1_494
    );
  ser_in_counter_latchcount_6_MC_D2 : X_ZERO
    port map (
      O => ser_in_counter_latchcount_6_MC_D2_495
    );
  N_PZ_383 : X_BUF
    port map (
      I => N_PZ_383_MC_Q_496,
      O => N_PZ_383_172
    );
  N_PZ_383_MC_Q : X_BUF
    port map (
      I => N_PZ_383_MC_D_497,
      O => N_PZ_383_MC_Q_496
    );
  N_PZ_383_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_N_PZ_383_MC_D_IN0,
      I1 => NlwBufferSignal_N_PZ_383_MC_D_IN1,
      O => N_PZ_383_MC_D_497
    );
  N_PZ_383_MC_D1 : X_ZERO
    port map (
      O => N_PZ_383_MC_D1_498
    );
  N_PZ_383_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwInverterSignal_N_PZ_383_MC_D2_PT_0_IN0,
      I1 => NlwInverterSignal_N_PZ_383_MC_D2_PT_0_IN1,
      O => N_PZ_383_MC_D2_PT_0_500
    );
  N_PZ_383_MC_D2_PT_1 : X_AND2
    port map (
      I0 => NlwInverterSignal_N_PZ_383_MC_D2_PT_1_IN0,
      I1 => NlwInverterSignal_N_PZ_383_MC_D2_PT_1_IN1,
      O => N_PZ_383_MC_D2_PT_1_501
    );
  N_PZ_383_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_N_PZ_383_MC_D2_IN0,
      I1 => NlwBufferSignal_N_PZ_383_MC_D2_IN1,
      O => N_PZ_383_MC_D2_499
    );
  panel_select_MC_Q : X_BUF
    port map (
      I => panel_select_MC_Q_tsimrenamed_net_Q_502,
      O => panel_select_MC_Q_77
    );
  panel_select_MC_UIM : X_BUF
    port map (
      I => panel_select_MC_Q_tsimrenamed_net_Q_502,
      O => panel_select_MC_UIM_114
    );
  panel_select_MC_Q_tsimrenamed_net_Q : X_BUF
    port map (
      I => panel_select_MC_D_503,
      O => panel_select_MC_Q_tsimrenamed_net_Q_502
    );
  panel_select_MC_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_panel_select_MC_D_IN0,
      I1 => NlwBufferSignal_panel_select_MC_D_IN1,
      O => panel_select_MC_D_503
    );
  panel_select_MC_D1 : X_ZERO
    port map (
      O => panel_select_MC_D1_504
    );
  panel_select_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwInverterSignal_panel_select_MC_D2_PT_0_IN0,
      I1 => NlwInverterSignal_panel_select_MC_D2_PT_0_IN1,
      O => panel_select_MC_D2_PT_0_506
    );
  panel_select_MC_D2_PT_1 : X_AND2
    port map (
      I0 => NlwBufferSignal_panel_select_MC_D2_PT_1_IN0,
      I1 => NlwInverterSignal_panel_select_MC_D2_PT_1_IN1,
      O => panel_select_MC_D2_PT_1_507
    );
  panel_select_MC_D2_PT_2 : X_AND2
    port map (
      I0 => NlwInverterSignal_panel_select_MC_D2_PT_2_IN0,
      I1 => NlwBufferSignal_panel_select_MC_D2_PT_2_IN1,
      O => panel_select_MC_D2_PT_2_508
    );
  panel_select_MC_D2_PT_3 : X_AND3
    port map (
      I0 => NlwBufferSignal_panel_select_MC_D2_PT_3_IN0,
      I1 => NlwInverterSignal_panel_select_MC_D2_PT_3_IN1,
      I2 => NlwInverterSignal_panel_select_MC_D2_PT_3_IN2,
      O => panel_select_MC_D2_PT_3_509
    );
  panel_select_MC_D2_PT_4 : X_AND3
    port map (
      I0 => NlwBufferSignal_panel_select_MC_D2_PT_4_IN0,
      I1 => NlwInverterSignal_panel_select_MC_D2_PT_4_IN1,
      I2 => NlwInverterSignal_panel_select_MC_D2_PT_4_IN2,
      O => panel_select_MC_D2_PT_4_510
    );
  panel_select_MC_D2_PT_5 : X_AND3
    port map (
      I0 => NlwInverterSignal_panel_select_MC_D2_PT_5_IN0,
      I1 => NlwInverterSignal_panel_select_MC_D2_PT_5_IN1,
      I2 => NlwBufferSignal_panel_select_MC_D2_PT_5_IN2,
      O => panel_select_MC_D2_PT_5_511
    );
  panel_select_MC_D2_PT_6 : X_AND3
    port map (
      I0 => NlwInverterSignal_panel_select_MC_D2_PT_6_IN0,
      I1 => NlwInverterSignal_panel_select_MC_D2_PT_6_IN1,
      I2 => NlwBufferSignal_panel_select_MC_D2_PT_6_IN2,
      O => panel_select_MC_D2_PT_6_512
    );
  panel_select_MC_D2_PT_7 : X_AND3
    port map (
      I0 => NlwBufferSignal_panel_select_MC_D2_PT_7_IN0,
      I1 => NlwInverterSignal_panel_select_MC_D2_PT_7_IN1,
      I2 => NlwInverterSignal_panel_select_MC_D2_PT_7_IN2,
      O => panel_select_MC_D2_PT_7_513
    );
  panel_select_MC_D2_PT_8 : X_AND3
    port map (
      I0 => NlwBufferSignal_panel_select_MC_D2_PT_8_IN0,
      I1 => NlwInverterSignal_panel_select_MC_D2_PT_8_IN1,
      I2 => NlwInverterSignal_panel_select_MC_D2_PT_8_IN2,
      O => panel_select_MC_D2_PT_8_514
    );
  panel_select_MC_D2_PT_9 : X_AND3
    port map (
      I0 => NlwInverterSignal_panel_select_MC_D2_PT_9_IN0,
      I1 => NlwInverterSignal_panel_select_MC_D2_PT_9_IN1,
      I2 => NlwBufferSignal_panel_select_MC_D2_PT_9_IN2,
      O => panel_select_MC_D2_PT_9_515
    );
  panel_select_MC_D2_PT_10 : X_AND3
    port map (
      I0 => NlwInverterSignal_panel_select_MC_D2_PT_10_IN0,
      I1 => NlwInverterSignal_panel_select_MC_D2_PT_10_IN1,
      I2 => NlwBufferSignal_panel_select_MC_D2_PT_10_IN2,
      O => panel_select_MC_D2_PT_10_516
    );
  panel_select_MC_D2_PT_11 : X_AND3
    port map (
      I0 => NlwBufferSignal_panel_select_MC_D2_PT_11_IN0,
      I1 => NlwInverterSignal_panel_select_MC_D2_PT_11_IN1,
      I2 => NlwInverterSignal_panel_select_MC_D2_PT_11_IN2,
      O => panel_select_MC_D2_PT_11_517
    );
  panel_select_MC_D2_PT_12 : X_AND3
    port map (
      I0 => NlwBufferSignal_panel_select_MC_D2_PT_12_IN0,
      I1 => NlwInverterSignal_panel_select_MC_D2_PT_12_IN1,
      I2 => NlwInverterSignal_panel_select_MC_D2_PT_12_IN2,
      O => panel_select_MC_D2_PT_12_518
    );
  panel_select_MC_D2_PT_13 : X_AND3
    port map (
      I0 => NlwInverterSignal_panel_select_MC_D2_PT_13_IN0,
      I1 => NlwInverterSignal_panel_select_MC_D2_PT_13_IN1,
      I2 => NlwBufferSignal_panel_select_MC_D2_PT_13_IN2,
      O => panel_select_MC_D2_PT_13_519
    );
  panel_select_MC_D2_PT_14 : X_AND3
    port map (
      I0 => NlwInverterSignal_panel_select_MC_D2_PT_14_IN0,
      I1 => NlwInverterSignal_panel_select_MC_D2_PT_14_IN1,
      I2 => NlwBufferSignal_panel_select_MC_D2_PT_14_IN2,
      O => panel_select_MC_D2_PT_14_520
    );
  panel_select_MC_D2_PT_15 : X_AND3
    port map (
      I0 => NlwBufferSignal_panel_select_MC_D2_PT_15_IN0,
      I1 => NlwInverterSignal_panel_select_MC_D2_PT_15_IN1,
      I2 => NlwInverterSignal_panel_select_MC_D2_PT_15_IN2,
      O => panel_select_MC_D2_PT_15_521
    );
  panel_select_MC_D2_PT_16 : X_AND3
    port map (
      I0 => NlwBufferSignal_panel_select_MC_D2_PT_16_IN0,
      I1 => NlwInverterSignal_panel_select_MC_D2_PT_16_IN1,
      I2 => NlwInverterSignal_panel_select_MC_D2_PT_16_IN2,
      O => panel_select_MC_D2_PT_16_522
    );
  panel_select_MC_D2_PT_17 : X_AND3
    port map (
      I0 => NlwInverterSignal_panel_select_MC_D2_PT_17_IN0,
      I1 => NlwInverterSignal_panel_select_MC_D2_PT_17_IN1,
      I2 => NlwBufferSignal_panel_select_MC_D2_PT_17_IN2,
      O => panel_select_MC_D2_PT_17_523
    );
  panel_select_MC_D2_PT_18 : X_AND3
    port map (
      I0 => NlwInverterSignal_panel_select_MC_D2_PT_18_IN0,
      I1 => NlwInverterSignal_panel_select_MC_D2_PT_18_IN1,
      I2 => NlwBufferSignal_panel_select_MC_D2_PT_18_IN2,
      O => panel_select_MC_D2_PT_18_524
    );
  panel_select_MC_D2 : X_OR32
    port map (
      I0 => NlwBufferSignal_panel_select_MC_D2_IN0,
      I1 => NlwBufferSignal_panel_select_MC_D2_IN1,
      I2 => NlwBufferSignal_panel_select_MC_D2_IN2,
      I3 => NlwBufferSignal_panel_select_MC_D2_IN3,
      I4 => NlwBufferSignal_panel_select_MC_D2_IN4,
      I5 => NlwBufferSignal_panel_select_MC_D2_IN5,
      I6 => NlwBufferSignal_panel_select_MC_D2_IN6,
      I7 => NlwBufferSignal_panel_select_MC_D2_IN7,
      I8 => NlwBufferSignal_panel_select_MC_D2_IN8,
      I9 => NlwBufferSignal_panel_select_MC_D2_IN9,
      I10 => NlwBufferSignal_panel_select_MC_D2_IN10,
      I11 => NlwBufferSignal_panel_select_MC_D2_IN11,
      I12 => NlwBufferSignal_panel_select_MC_D2_IN12,
      I13 => NlwBufferSignal_panel_select_MC_D2_IN13,
      I14 => NlwBufferSignal_panel_select_MC_D2_IN14,
      I15 => NlwBufferSignal_panel_select_MC_D2_IN15,
      I16 => NlwBufferSignal_panel_select_MC_D2_IN16,
      I17 => NlwBufferSignal_panel_select_MC_D2_IN17,
      I18 => NlwBufferSignal_panel_select_MC_D2_IN18,
      I19 => NlwBufferSignal_panel_select_MC_D2_IN19,
      I20 => NlwBufferSignal_panel_select_MC_D2_IN20,
      I21 => NlwBufferSignal_panel_select_MC_D2_IN21,
      I22 => NlwBufferSignal_panel_select_MC_D2_IN22,
      I23 => NlwBufferSignal_panel_select_MC_D2_IN23,
      I24 => NlwBufferSignal_panel_select_MC_D2_IN24,
      I25 => NlwBufferSignal_panel_select_MC_D2_IN25,
      I26 => NlwBufferSignal_panel_select_MC_D2_IN26,
      I27 => NlwBufferSignal_panel_select_MC_D2_IN27,
      I28 => NlwBufferSignal_panel_select_MC_D2_IN28,
      I29 => NlwBufferSignal_panel_select_MC_D2_IN29,
      I30 => NlwBufferSignal_panel_select_MC_D2_IN30,
      I31 => NlwBufferSignal_panel_select_MC_D2_IN31,
      O => panel_select_MC_D2_505
    );
  grayscale_clk_MC_Q : X_BUF
    port map (
      I => grayscale_clk_MC_Q_tsimrenamed_net_Q_525,
      O => grayscale_clk_MC_Q_45
    );
  grayscale_clk_MC_Q_tsimrenamed_net_Q : X_BUF
    port map (
      I => grayscale_clk_MC_D_526,
      O => grayscale_clk_MC_Q_tsimrenamed_net_Q_525
    );
  grayscale_clk_MC_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_grayscale_clk_MC_D_IN0,
      I1 => NlwBufferSignal_grayscale_clk_MC_D_IN1,
      O => grayscale_clk_MC_D_526
    );
  grayscale_clk_MC_D1 : X_ZERO
    port map (
      O => grayscale_clk_MC_D1_527
    );
  grayscale_clk_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwInverterSignal_grayscale_clk_MC_D2_PT_0_IN0,
      I1 => NlwInverterSignal_grayscale_clk_MC_D2_PT_0_IN1,
      O => grayscale_clk_MC_D2_PT_0_530
    );
  grayscale_clk_MC_D2_PT_1 : X_AND2
    port map (
      I0 => NlwInverterSignal_grayscale_clk_MC_D2_PT_1_IN0,
      I1 => NlwInverterSignal_grayscale_clk_MC_D2_PT_1_IN1,
      O => grayscale_clk_MC_D2_PT_1_532
    );
  grayscale_clk_MC_D2_PT_2 : X_AND3
    port map (
      I0 => NlwBufferSignal_grayscale_clk_MC_D2_PT_2_IN0,
      I1 => NlwBufferSignal_grayscale_clk_MC_D2_PT_2_IN1,
      I2 => NlwInverterSignal_grayscale_clk_MC_D2_PT_2_IN2,
      O => grayscale_clk_MC_D2_PT_2_534
    );
  grayscale_clk_MC_D2 : X_OR3
    port map (
      I0 => NlwBufferSignal_grayscale_clk_MC_D2_IN0,
      I1 => NlwBufferSignal_grayscale_clk_MC_D2_IN1,
      I2 => NlwBufferSignal_grayscale_clk_MC_D2_IN2,
      O => grayscale_clk_MC_D2_528
    );
  grclkgen_grclk_ctr_sig : X_BUF
    port map (
      I => grclkgen_grclk_ctr_sig_MC_Q,
      O => grclkgen_grclk_ctr_sig_529
    );
  grclkgen_grclk_ctr_sig_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_grclkgen_grclk_ctr_sig_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_grclkgen_grclk_ctr_sig_MC_tsimcreated_xor_IN1,
      O => grclkgen_grclk_ctr_sig_MC_tsimcreated_xor_Q_537
    );
  grclkgen_grclk_ctr_sig_MC_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_grclkgen_grclk_ctr_sig_MC_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_grclkgen_grclk_ctr_sig_MC_tsimcreated_prld_IN1,
      O => grclkgen_grclk_ctr_sig_MC_tsimcreated_prld_Q_539
    );
  grclkgen_grclk_ctr_sig_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_grclkgen_grclk_ctr_sig_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_grclkgen_grclk_ctr_sig_MC_REG_CLK,
      SET => Gnd_36,
      RST => grclkgen_grclk_ctr_sig_MC_tsimcreated_prld_Q_539,
      O => grclkgen_grclk_ctr_sig_MC_Q
    );
  grclkgen_grclk_ctr_sig_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_grclkgen_grclk_ctr_sig_MC_D_IN0,
      I1 => NlwBufferSignal_grclkgen_grclk_ctr_sig_MC_D_IN1,
      O => grclkgen_grclk_ctr_sig_MC_D_536
    );
  grclkgen_grclk_ctr_sig_MC_D1 : X_ZERO
    port map (
      O => grclkgen_grclk_ctr_sig_MC_D1_540
    );
  grclkgen_grclk_ctr_sig_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_grclkgen_grclk_ctr_sig_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_grclkgen_grclk_ctr_sig_MC_D2_PT_0_IN1,
      O => grclkgen_grclk_ctr_sig_MC_D2_PT_0_543
    );
  grclkgen_grclk_ctr_sig_MC_D2_PT_1 : X_AND3
    port map (
      I0 => NlwBufferSignal_grclkgen_grclk_ctr_sig_MC_D2_PT_1_IN0,
      I1 => NlwInverterSignal_grclkgen_grclk_ctr_sig_MC_D2_PT_1_IN1,
      I2 => NlwBufferSignal_grclkgen_grclk_ctr_sig_MC_D2_PT_1_IN2,
      O => grclkgen_grclk_ctr_sig_MC_D2_PT_1_544
    );
  grclkgen_grclk_ctr_sig_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_grclkgen_grclk_ctr_sig_MC_D2_IN0,
      I1 => NlwBufferSignal_grclkgen_grclk_ctr_sig_MC_D2_IN1,
      O => grclkgen_grclk_ctr_sig_MC_D2_541
    );
  N_PZ_372 : X_BUF
    port map (
      I => N_PZ_372_MC_Q_545,
      O => N_PZ_372_531
    );
  N_PZ_372_MC_Q : X_BUF
    port map (
      I => N_PZ_372_MC_D_546,
      O => N_PZ_372_MC_Q_545
    );
  N_PZ_372_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_N_PZ_372_MC_D_IN0,
      I1 => NlwBufferSignal_N_PZ_372_MC_D_IN1,
      O => N_PZ_372_MC_D_546
    );
  N_PZ_372_MC_D1 : X_AND2
    port map (
      I0 => NlwBufferSignal_N_PZ_372_MC_D1_IN0,
      I1 => NlwBufferSignal_N_PZ_372_MC_D1_IN1,
      O => N_PZ_372_MC_D1_547
    );
  N_PZ_372_MC_D2 : X_ZERO
    port map (
      O => N_PZ_372_MC_D2_548
    );
  N_PZ_371 : X_BUF
    port map (
      I => N_PZ_371_MC_Q_549,
      O => N_PZ_371_542
    );
  N_PZ_371_MC_Q : X_BUF
    port map (
      I => N_PZ_371_MC_D_550,
      O => N_PZ_371_MC_Q_549
    );
  N_PZ_371_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_N_PZ_371_MC_D_IN0,
      I1 => NlwBufferSignal_N_PZ_371_MC_D_IN1,
      O => N_PZ_371_MC_D_550
    );
  N_PZ_371_MC_D1 : X_ZERO
    port map (
      O => N_PZ_371_MC_D1_551
    );
  N_PZ_371_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwInverterSignal_N_PZ_371_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_N_PZ_371_MC_D2_PT_0_IN1,
      O => N_PZ_371_MC_D2_PT_0_553
    );
  N_PZ_371_MC_D2_PT_1 : X_AND3
    port map (
      I0 => NlwBufferSignal_N_PZ_371_MC_D2_PT_1_IN0,
      I1 => NlwBufferSignal_N_PZ_371_MC_D2_PT_1_IN1,
      I2 => NlwBufferSignal_N_PZ_371_MC_D2_PT_1_IN2,
      O => N_PZ_371_MC_D2_PT_1_555
    );
  N_PZ_371_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_N_PZ_371_MC_D2_IN0,
      I1 => NlwBufferSignal_N_PZ_371_MC_D2_IN1,
      O => N_PZ_371_MC_D2_552
    );
  grclkgen_sync_proc_sclk : X_BUF
    port map (
      I => grclkgen_sync_proc_sclk_MC_Q,
      O => grclkgen_sync_proc_sclk_554
    );
  grclkgen_sync_proc_sclk_MC_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_grclkgen_sync_proc_sclk_MC_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_grclkgen_sync_proc_sclk_MC_tsimcreated_prld_IN1,
      O => grclkgen_sync_proc_sclk_MC_tsimcreated_prld_Q_557
    );
  grclkgen_sync_proc_sclk_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_grclkgen_sync_proc_sclk_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_grclkgen_sync_proc_sclk_MC_REG_CLK,
      SET => Gnd_36,
      RST => grclkgen_sync_proc_sclk_MC_tsimcreated_prld_Q_557,
      O => grclkgen_sync_proc_sclk_MC_Q
    );
  grclkgen_sync_proc_sclk_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_grclkgen_sync_proc_sclk_MC_D_IN0,
      I1 => NlwBufferSignal_grclkgen_sync_proc_sclk_MC_D_IN1,
      O => grclkgen_sync_proc_sclk_MC_D_558
    );
  grclkgen_sync_proc_sclk_MC_D1 : X_AND3
    port map (
      I0 => NlwInverterSignal_grclkgen_sync_proc_sclk_MC_D1_IN0,
      I1 => NlwBufferSignal_grclkgen_sync_proc_sclk_MC_D1_IN1,
      I2 => NlwInverterSignal_grclkgen_sync_proc_sclk_MC_D1_IN2,
      O => grclkgen_sync_proc_sclk_MC_D1_559
    );
  grclkgen_sync_proc_sclk_MC_D2 : X_ZERO
    port map (
      O => grclkgen_sync_proc_sclk_MC_D2_560
    );
  grclkgen_pulser_curState_FSM_FFd1 : X_BUF
    port map (
      I => grclkgen_pulser_curState_FSM_FFd1_MC_Q,
      O => grclkgen_pulser_curState_FSM_FFd1_561
    );
  grclkgen_pulser_curState_FSM_FFd1_MC_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_grclkgen_pulser_curState_FSM_FFd1_MC_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_grclkgen_pulser_curState_FSM_FFd1_MC_tsimcreated_prld_IN1,
      O => grclkgen_pulser_curState_FSM_FFd1_MC_tsimcreated_prld_Q_563
    );
  grclkgen_pulser_curState_FSM_FFd1_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_grclkgen_pulser_curState_FSM_FFd1_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_grclkgen_pulser_curState_FSM_FFd1_MC_REG_CLK,
      SET => Gnd_36,
      RST => grclkgen_pulser_curState_FSM_FFd1_MC_tsimcreated_prld_Q_563,
      O => grclkgen_pulser_curState_FSM_FFd1_MC_Q
    );
  grclkgen_pulser_curState_FSM_FFd1_MC_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_grclkgen_pulser_curState_FSM_FFd1_MC_D_IN0,
      I1 => NlwBufferSignal_grclkgen_pulser_curState_FSM_FFd1_MC_D_IN1,
      O => grclkgen_pulser_curState_FSM_FFd1_MC_D_564
    );
  grclkgen_pulser_curState_FSM_FFd1_MC_D1 : X_ZERO
    port map (
      O => grclkgen_pulser_curState_FSM_FFd1_MC_D1_565
    );
  grclkgen_pulser_curState_FSM_FFd1_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwInverterSignal_grclkgen_pulser_curState_FSM_FFd1_MC_D2_PT_0_IN0,
      I1 => NlwInverterSignal_grclkgen_pulser_curState_FSM_FFd1_MC_D2_PT_0_IN1,
      O => grclkgen_pulser_curState_FSM_FFd1_MC_D2_PT_0_567
    );
  grclkgen_pulser_curState_FSM_FFd1_MC_D2_PT_1 : X_AND2
    port map (
      I0 => NlwInverterSignal_grclkgen_pulser_curState_FSM_FFd1_MC_D2_PT_1_IN0,
      I1 => NlwInverterSignal_grclkgen_pulser_curState_FSM_FFd1_MC_D2_PT_1_IN1,
      O => grclkgen_pulser_curState_FSM_FFd1_MC_D2_PT_1_568
    );
  grclkgen_pulser_curState_FSM_FFd1_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_grclkgen_pulser_curState_FSM_FFd1_MC_D2_IN0,
      I1 => NlwBufferSignal_grclkgen_pulser_curState_FSM_FFd1_MC_D2_IN1,
      O => grclkgen_pulser_curState_FSM_FFd1_MC_D2_566
    );
  N_PZ_794 : X_BUF
    port map (
      I => N_PZ_794_MC_Q_569,
      O => N_PZ_794_570
    );
  N_PZ_794_MC_Q : X_BUF
    port map (
      I => N_PZ_794_MC_D_571,
      O => N_PZ_794_MC_Q_569
    );
  N_PZ_794_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_N_PZ_794_MC_D_IN0,
      I1 => NlwBufferSignal_N_PZ_794_MC_D_IN1,
      O => N_PZ_794_MC_D_571
    );
  N_PZ_794_MC_D1 : X_ZERO
    port map (
      O => N_PZ_794_MC_D1_572
    );
  N_PZ_794_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_N_PZ_794_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_N_PZ_794_MC_D2_PT_0_IN1,
      O => N_PZ_794_MC_D2_PT_0_574
    );
  N_PZ_794_MC_D2_PT_1 : X_AND2
    port map (
      I0 => NlwBufferSignal_N_PZ_794_MC_D2_PT_1_IN0,
      I1 => NlwInverterSignal_N_PZ_794_MC_D2_PT_1_IN1,
      O => N_PZ_794_MC_D2_PT_1_575
    );
  N_PZ_794_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_N_PZ_794_MC_D2_IN0,
      I1 => NlwBufferSignal_N_PZ_794_MC_D2_IN1,
      O => N_PZ_794_MC_D2_573
    );
  grclkgen_proc_sclk_hlf : X_BUF
    port map (
      I => grclkgen_proc_sclk_hlf_MC_Q,
      O => grclkgen_proc_sclk_hlf_533
    );
  grclkgen_proc_sclk_hlf_MC_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_grclkgen_proc_sclk_hlf_MC_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_grclkgen_proc_sclk_hlf_MC_tsimcreated_prld_IN1,
      O => grclkgen_proc_sclk_hlf_MC_tsimcreated_prld_Q_577
    );
  grclkgen_proc_sclk_hlf_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_grclkgen_proc_sclk_hlf_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_grclkgen_proc_sclk_hlf_MC_REG_CLK,
      SET => Gnd_36,
      RST => grclkgen_proc_sclk_hlf_MC_tsimcreated_prld_Q_577,
      O => grclkgen_proc_sclk_hlf_MC_Q
    );
  grclkgen_proc_sclk_hlf_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_grclkgen_proc_sclk_hlf_MC_D_IN0,
      I1 => NlwBufferSignal_grclkgen_proc_sclk_hlf_MC_D_IN1,
      O => grclkgen_proc_sclk_hlf_MC_D_578
    );
  grclkgen_proc_sclk_hlf_MC_D1 : X_ZERO
    port map (
      O => grclkgen_proc_sclk_hlf_MC_D1_579
    );
  grclkgen_proc_sclk_hlf_MC_D2_PT_0 : X_AND4
    port map (
      I0 => NlwBufferSignal_grclkgen_proc_sclk_hlf_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_grclkgen_proc_sclk_hlf_MC_D2_PT_0_IN1,
      I2 => NlwBufferSignal_grclkgen_proc_sclk_hlf_MC_D2_PT_0_IN2,
      I3 => NlwInverterSignal_grclkgen_proc_sclk_hlf_MC_D2_PT_0_IN3,
      O => grclkgen_proc_sclk_hlf_MC_D2_PT_0_581
    );
  grclkgen_proc_sclk_hlf_MC_D2_PT_1 : X_AND4
    port map (
      I0 => NlwBufferSignal_grclkgen_proc_sclk_hlf_MC_D2_PT_1_IN0,
      I1 => NlwBufferSignal_grclkgen_proc_sclk_hlf_MC_D2_PT_1_IN1,
      I2 => NlwInverterSignal_grclkgen_proc_sclk_hlf_MC_D2_PT_1_IN2,
      I3 => NlwBufferSignal_grclkgen_proc_sclk_hlf_MC_D2_PT_1_IN3,
      O => grclkgen_proc_sclk_hlf_MC_D2_PT_1_582
    );
  grclkgen_proc_sclk_hlf_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_grclkgen_proc_sclk_hlf_MC_D2_IN0,
      I1 => NlwBufferSignal_grclkgen_proc_sclk_hlf_MC_D2_IN1,
      O => grclkgen_proc_sclk_hlf_MC_D2_580
    );
  latch_out1_MC_Q : X_BUF
    port map (
      I => latch_out1_MC_Q_tsimrenamed_net_Q_583,
      O => latch_out1_MC_Q_47
    );
  latch_out1_MC_Q_tsimrenamed_net_Q : X_BUF
    port map (
      I => latch_out1_MC_D_584,
      O => latch_out1_MC_Q_tsimrenamed_net_Q_583
    );
  latch_out1_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_latch_out1_MC_D_IN0,
      I1 => NlwBufferSignal_latch_out1_MC_D_IN1,
      O => latch_out1_MC_D_584
    );
  latch_out1_MC_D1 : X_ZERO
    port map (
      O => latch_out1_MC_D1_585
    );
  latch_out1_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwInverterSignal_latch_out1_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_latch_out1_MC_D2_PT_0_IN1,
      O => latch_out1_MC_D2_PT_0_587
    );
  latch_out1_MC_D2_PT_1 : X_AND16
    port map (
      I0 => NlwBufferSignal_latch_out1_MC_D2_PT_1_IN0,
      I1 => NlwBufferSignal_latch_out1_MC_D2_PT_1_IN1,
      I2 => NlwInverterSignal_latch_out1_MC_D2_PT_1_IN2,
      I3 => NlwBufferSignal_latch_out1_MC_D2_PT_1_IN3,
      I4 => NlwBufferSignal_latch_out1_MC_D2_PT_1_IN4,
      I5 => NlwBufferSignal_latch_out1_MC_D2_PT_1_IN5,
      I6 => NlwBufferSignal_latch_out1_MC_D2_PT_1_IN6,
      I7 => NlwInverterSignal_latch_out1_MC_D2_PT_1_IN7,
      I8 => NlwBufferSignal_latch_out1_MC_D2_PT_1_IN8,
      I9 => NlwInverterSignal_latch_out1_MC_D2_PT_1_IN9,
      I10 => NlwBufferSignal_latch_out1_MC_D2_PT_1_IN10,
      I11 => NlwBufferSignal_latch_out1_MC_D2_PT_1_IN11,
      I12 => NlwBufferSignal_latch_out1_MC_D2_PT_1_IN12,
      I13 => NlwBufferSignal_latch_out1_MC_D2_PT_1_IN13,
      I14 => NlwBufferSignal_latch_out1_MC_D2_PT_1_IN14,
      I15 => NlwBufferSignal_latch_out1_MC_D2_PT_1_IN15,
      O => latch_out1_MC_D2_PT_1_588
    );
  latch_out1_MC_D2_PT_2 : X_AND16
    port map (
      I0 => NlwBufferSignal_latch_out1_MC_D2_PT_2_IN0,
      I1 => NlwInverterSignal_latch_out1_MC_D2_PT_2_IN1,
      I2 => NlwBufferSignal_latch_out1_MC_D2_PT_2_IN2,
      I3 => NlwBufferSignal_latch_out1_MC_D2_PT_2_IN3,
      I4 => NlwBufferSignal_latch_out1_MC_D2_PT_2_IN4,
      I5 => NlwBufferSignal_latch_out1_MC_D2_PT_2_IN5,
      I6 => NlwBufferSignal_latch_out1_MC_D2_PT_2_IN6,
      I7 => NlwInverterSignal_latch_out1_MC_D2_PT_2_IN7,
      I8 => NlwBufferSignal_latch_out1_MC_D2_PT_2_IN8,
      I9 => NlwInverterSignal_latch_out1_MC_D2_PT_2_IN9,
      I10 => NlwBufferSignal_latch_out1_MC_D2_PT_2_IN10,
      I11 => NlwBufferSignal_latch_out1_MC_D2_PT_2_IN11,
      I12 => NlwBufferSignal_latch_out1_MC_D2_PT_2_IN12,
      I13 => NlwBufferSignal_latch_out1_MC_D2_PT_2_IN13,
      I14 => NlwBufferSignal_latch_out1_MC_D2_PT_2_IN14,
      I15 => NlwBufferSignal_latch_out1_MC_D2_PT_2_IN15,
      O => latch_out1_MC_D2_PT_2_589
    );
  latch_out1_MC_D2 : X_OR3
    port map (
      I0 => NlwBufferSignal_latch_out1_MC_D2_IN0,
      I1 => NlwBufferSignal_latch_out1_MC_D2_IN1,
      I2 => NlwBufferSignal_latch_out1_MC_D2_IN2,
      O => latch_out1_MC_D2_586
    );
  latch_out2_MC_Q : X_BUF
    port map (
      I => latch_out2_MC_Q_tsimrenamed_net_Q_590,
      O => latch_out2_MC_Q_49
    );
  latch_out2_MC_Q_tsimrenamed_net_Q : X_BUF
    port map (
      I => latch_out2_MC_D_591,
      O => latch_out2_MC_Q_tsimrenamed_net_Q_590
    );
  latch_out2_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_latch_out2_MC_D_IN0,
      I1 => NlwBufferSignal_latch_out2_MC_D_IN1,
      O => latch_out2_MC_D_591
    );
  latch_out2_MC_D1 : X_ZERO
    port map (
      O => latch_out2_MC_D1_592
    );
  latch_out2_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwInverterSignal_latch_out2_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_latch_out2_MC_D2_PT_0_IN1,
      O => latch_out2_MC_D2_PT_0_594
    );
  latch_out2_MC_D2_PT_1 : X_AND16
    port map (
      I0 => NlwBufferSignal_latch_out2_MC_D2_PT_1_IN0,
      I1 => NlwBufferSignal_latch_out2_MC_D2_PT_1_IN1,
      I2 => NlwBufferSignal_latch_out2_MC_D2_PT_1_IN2,
      I3 => NlwBufferSignal_latch_out2_MC_D2_PT_1_IN3,
      I4 => NlwBufferSignal_latch_out2_MC_D2_PT_1_IN4,
      I5 => NlwBufferSignal_latch_out2_MC_D2_PT_1_IN5,
      I6 => NlwInverterSignal_latch_out2_MC_D2_PT_1_IN6,
      I7 => NlwBufferSignal_latch_out2_MC_D2_PT_1_IN7,
      I8 => NlwInverterSignal_latch_out2_MC_D2_PT_1_IN8,
      I9 => NlwBufferSignal_latch_out2_MC_D2_PT_1_IN9,
      I10 => NlwBufferSignal_latch_out2_MC_D2_PT_1_IN10,
      I11 => NlwBufferSignal_latch_out2_MC_D2_PT_1_IN11,
      I12 => NlwBufferSignal_latch_out2_MC_D2_PT_1_IN12,
      I13 => NlwBufferSignal_latch_out2_MC_D2_PT_1_IN13,
      I14 => NlwBufferSignal_latch_out2_MC_D2_PT_1_IN14,
      I15 => NlwBufferSignal_latch_out2_MC_D2_PT_1_IN15,
      O => latch_out2_MC_D2_PT_1_595
    );
  latch_out2_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_latch_out2_MC_D2_IN0,
      I1 => NlwBufferSignal_latch_out2_MC_D2_IN1,
      O => latch_out2_MC_D2_593
    );
  line_select_0_MC_Q : X_BUF
    port map (
      I => line_select_0_MC_Q_tsimrenamed_net_Q_596,
      O => line_select_0_MC_Q_51
    );
  line_select_0_MC_Q_tsimrenamed_net_Q : X_BUF
    port map (
      I => line_select_0_MC_D_597,
      O => line_select_0_MC_Q_tsimrenamed_net_Q_596
    );
  line_select_0_MC_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_line_select_0_MC_D_IN0,
      I1 => NlwBufferSignal_line_select_0_MC_D_IN1,
      O => line_select_0_MC_D_597
    );
  line_select_0_MC_D1 : X_AND5
    port map (
      I0 => NlwInverterSignal_line_select_0_MC_D1_IN0,
      I1 => NlwInverterSignal_line_select_0_MC_D1_IN1,
      I2 => NlwInverterSignal_line_select_0_MC_D1_IN2,
      I3 => NlwInverterSignal_line_select_0_MC_D1_IN3,
      I4 => NlwBufferSignal_line_select_0_MC_D1_IN4,
      O => line_select_0_MC_D1_598
    );
  line_select_0_MC_D2 : X_ZERO
    port map (
      O => line_select_0_MC_D2_599
    );
  grclkgen_ctr_cnt_lines_0_Q : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines_0_MC_Q,
      O => grclkgen_ctr_cnt_lines(0)
    );
  grclkgen_ctr_cnt_lines_0_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_tsimcreated_xor_IN1,
      O => grclkgen_ctr_cnt_lines_0_MC_tsimcreated_xor_Q_606
    );
  grclkgen_ctr_cnt_lines_0_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_REG_CLK,
      SET => FOOBAR5_ctinst_6_607,
      RST => Gnd_36,
      O => grclkgen_ctr_cnt_lines_0_MC_Q
    );
  grclkgen_ctr_cnt_lines_0_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D_IN1,
      O => grclkgen_ctr_cnt_lines_0_MC_D_605
    );
  grclkgen_ctr_cnt_lines_0_MC_D1 : X_ZERO
    port map (
      O => grclkgen_ctr_cnt_lines_0_MC_D1_608
    );
  grclkgen_ctr_cnt_lines_0_MC_D2_PT_0 : X_AND16
    port map (
      I0 => NlwInverterSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN1,
      I2 => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN2,
      I3 => NlwInverterSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN3,
      I4 => NlwInverterSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN4,
      I5 => NlwInverterSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN5,
      I6 => NlwInverterSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN6,
      I7 => NlwInverterSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN7,
      I8 => NlwInverterSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN8,
      I9 => NlwInverterSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN9,
      I10 => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN10,
      I11 => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN11,
      I12 => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN12,
      I13 => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN13,
      I14 => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN14,
      I15 => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN15,
      O => grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_618
    );
  grclkgen_ctr_cnt_lines_0_MC_D2_PT_1 : X_AND16
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN0,
      I1 => NlwInverterSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN1,
      I2 => NlwInverterSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN2,
      I3 => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN3,
      I4 => NlwInverterSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN4,
      I5 => NlwInverterSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN5,
      I6 => NlwInverterSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN6,
      I7 => NlwInverterSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN7,
      I8 => NlwInverterSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN8,
      I9 => NlwInverterSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN9,
      I10 => NlwInverterSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN10,
      I11 => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN11,
      I12 => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN12,
      I13 => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN13,
      I14 => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN14,
      I15 => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN15,
      O => grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_619
    );
  grclkgen_ctr_cnt_lines_0_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_IN1,
      O => grclkgen_ctr_cnt_lines_0_MC_D2_609
    );
  grclkgen_ctr_cnt_gclk_0_Q : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_0_MC_Q,
      O => grclkgen_ctr_cnt_gclk(0)
    );
  grclkgen_ctr_cnt_gclk_0_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_tsimcreated_xor_IN1,
      O => grclkgen_ctr_cnt_gclk_0_MC_tsimcreated_xor_Q_622
    );
  grclkgen_ctr_cnt_gclk_0_MC_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_tsimcreated_prld_IN1,
      O => grclkgen_ctr_cnt_gclk_0_MC_tsimcreated_prld_Q_624
    );
  grclkgen_ctr_cnt_gclk_0_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_REG_CLK,
      SET => Gnd_36,
      RST => grclkgen_ctr_cnt_gclk_0_MC_tsimcreated_prld_Q_624,
      O => grclkgen_ctr_cnt_gclk_0_MC_Q
    );
  grclkgen_ctr_cnt_gclk_0_MC_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_0_MC_D_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D_IN1,
      O => grclkgen_ctr_cnt_gclk_0_MC_D_621
    );
  grclkgen_ctr_cnt_gclk_0_MC_D1 : X_ZERO
    port map (
      O => grclkgen_ctr_cnt_gclk_0_MC_D1_625
    );
  grclkgen_ctr_cnt_gclk_0_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_0_IN1,
      O => grclkgen_ctr_cnt_gclk_0_MC_D2_PT_0_627
    );
  grclkgen_ctr_cnt_gclk_0_MC_D2_PT_1 : X_AND2
    port map (
      I0 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_1_IN0,
      I1 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_1_IN1,
      O => grclkgen_ctr_cnt_gclk_0_MC_D2_PT_1_628
    );
  grclkgen_ctr_cnt_gclk_0_MC_D2_PT_2 : X_AND2
    port map (
      I0 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_2_IN0,
      I1 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_2_IN1,
      O => grclkgen_ctr_cnt_gclk_0_MC_D2_PT_2_629
    );
  grclkgen_ctr_cnt_gclk_0_MC_D2_PT_3 : X_AND2
    port map (
      I0 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_3_IN0,
      I1 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_3_IN1,
      O => grclkgen_ctr_cnt_gclk_0_MC_D2_PT_3_630
    );
  grclkgen_ctr_cnt_gclk_0_MC_D2_PT_4 : X_AND3
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_4_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_4_IN1,
      I2 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_4_IN2,
      O => grclkgen_ctr_cnt_gclk_0_MC_D2_PT_4_631
    );
  grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5 : X_AND8
    port map (
      I0 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN0,
      I1 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN1,
      I2 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN2,
      I3 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN3,
      I4 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN4,
      I5 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN5,
      I6 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN6,
      I7 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN7,
      O => grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_632
    );
  grclkgen_ctr_cnt_gclk_0_MC_D2 : X_OR6
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_IN1,
      I2 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_IN2,
      I3 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_IN3,
      I4 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_IN4,
      I5 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_IN5,
      O => grclkgen_ctr_cnt_gclk_0_MC_D2_626
    );
  grclkgen_ctr_cnt_gclk_1_Q : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_1_MC_Q,
      O => grclkgen_ctr_cnt_gclk(1)
    );
  grclkgen_ctr_cnt_gclk_1_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_tsimcreated_xor_IN1,
      O => grclkgen_ctr_cnt_gclk_1_MC_tsimcreated_xor_Q_635
    );
  grclkgen_ctr_cnt_gclk_1_MC_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_tsimcreated_prld_IN1,
      O => grclkgen_ctr_cnt_gclk_1_MC_tsimcreated_prld_Q_636
    );
  grclkgen_ctr_cnt_gclk_1_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_REG_CLK,
      SET => Gnd_36,
      RST => grclkgen_ctr_cnt_gclk_1_MC_tsimcreated_prld_Q_636,
      O => grclkgen_ctr_cnt_gclk_1_MC_Q
    );
  grclkgen_ctr_cnt_gclk_1_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_D_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_D_IN1,
      O => grclkgen_ctr_cnt_gclk_1_MC_D_634
    );
  grclkgen_ctr_cnt_gclk_1_MC_D1 : X_ZERO
    port map (
      O => grclkgen_ctr_cnt_gclk_1_MC_D1_637
    );
  grclkgen_ctr_cnt_gclk_1_MC_D2_PT_0 : X_AND4
    port map (
      I0 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_1_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_D2_PT_0_IN1,
      I2 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_D2_PT_0_IN2,
      I3 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_D2_PT_0_IN3,
      O => grclkgen_ctr_cnt_gclk_1_MC_D2_PT_0_639
    );
  grclkgen_ctr_cnt_gclk_1_MC_D2_PT_1 : X_AND5
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_D2_PT_1_IN0,
      I1 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_1_MC_D2_PT_1_IN1,
      I2 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_1_MC_D2_PT_1_IN2,
      I3 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_D2_PT_1_IN3,
      I4 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_D2_PT_1_IN4,
      O => grclkgen_ctr_cnt_gclk_1_MC_D2_PT_1_640
    );
  grclkgen_ctr_cnt_gclk_1_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_D2_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_D2_IN1,
      O => grclkgen_ctr_cnt_gclk_1_MC_D2_638
    );
  grclkgen_ctr_cnt_gclk_2_Q : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_2_MC_Q,
      O => grclkgen_ctr_cnt_gclk(2)
    );
  grclkgen_ctr_cnt_gclk_2_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_tsimcreated_xor_IN1,
      O => grclkgen_ctr_cnt_gclk_2_MC_tsimcreated_xor_Q_643
    );
  grclkgen_ctr_cnt_gclk_2_MC_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_tsimcreated_prld_IN1,
      O => grclkgen_ctr_cnt_gclk_2_MC_tsimcreated_prld_Q_644
    );
  grclkgen_ctr_cnt_gclk_2_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_REG_CLK,
      SET => Gnd_36,
      RST => grclkgen_ctr_cnt_gclk_2_MC_tsimcreated_prld_Q_644,
      O => grclkgen_ctr_cnt_gclk_2_MC_Q
    );
  grclkgen_ctr_cnt_gclk_2_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_D_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_D_IN1,
      O => grclkgen_ctr_cnt_gclk_2_MC_D_642
    );
  grclkgen_ctr_cnt_gclk_2_MC_D1 : X_ZERO
    port map (
      O => grclkgen_ctr_cnt_gclk_2_MC_D1_645
    );
  grclkgen_ctr_cnt_gclk_2_MC_D2_PT_0 : X_AND5
    port map (
      I0 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_0_IN1,
      I2 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_0_IN2,
      I3 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_0_IN3,
      I4 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_0_IN4,
      O => grclkgen_ctr_cnt_gclk_2_MC_D2_PT_0_647
    );
  grclkgen_ctr_cnt_gclk_2_MC_D2_PT_1 : X_AND6
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_1_IN0,
      I1 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_1_IN1,
      I2 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_1_IN2,
      I3 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_1_IN3,
      I4 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_1_IN4,
      I5 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_1_IN5,
      O => grclkgen_ctr_cnt_gclk_2_MC_D2_PT_1_648
    );
  grclkgen_ctr_cnt_gclk_2_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_D2_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_D2_IN1,
      O => grclkgen_ctr_cnt_gclk_2_MC_D2_646
    );
  grclkgen_ctr_cnt_gclk_3_Q : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_3_MC_Q,
      O => grclkgen_ctr_cnt_gclk(3)
    );
  grclkgen_ctr_cnt_gclk_3_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_tsimcreated_xor_IN1,
      O => grclkgen_ctr_cnt_gclk_3_MC_tsimcreated_xor_Q_651
    );
  grclkgen_ctr_cnt_gclk_3_MC_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_tsimcreated_prld_IN1,
      O => grclkgen_ctr_cnt_gclk_3_MC_tsimcreated_prld_Q_652
    );
  grclkgen_ctr_cnt_gclk_3_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_REG_CLK,
      SET => Gnd_36,
      RST => grclkgen_ctr_cnt_gclk_3_MC_tsimcreated_prld_Q_652,
      O => grclkgen_ctr_cnt_gclk_3_MC_Q
    );
  grclkgen_ctr_cnt_gclk_3_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_D_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_D_IN1,
      O => grclkgen_ctr_cnt_gclk_3_MC_D_650
    );
  grclkgen_ctr_cnt_gclk_3_MC_D1 : X_ZERO
    port map (
      O => grclkgen_ctr_cnt_gclk_3_MC_D1_653
    );
  grclkgen_ctr_cnt_gclk_3_MC_D2_PT_0 : X_AND6
    port map (
      I0 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_0_IN1,
      I2 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_0_IN2,
      I3 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_0_IN3,
      I4 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_0_IN4,
      I5 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_0_IN5,
      O => grclkgen_ctr_cnt_gclk_3_MC_D2_PT_0_655
    );
  grclkgen_ctr_cnt_gclk_3_MC_D2_PT_1 : X_AND7
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_1_IN0,
      I1 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_1_IN1,
      I2 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_1_IN2,
      I3 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_1_IN3,
      I4 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_1_IN4,
      I5 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_1_IN5,
      I6 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_1_IN6,
      O => grclkgen_ctr_cnt_gclk_3_MC_D2_PT_1_656
    );
  grclkgen_ctr_cnt_gclk_3_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_IN1,
      O => grclkgen_ctr_cnt_gclk_3_MC_D2_654
    );
  grclkgen_ctr_cnt_gclk_4_Q : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_4_MC_Q,
      O => grclkgen_ctr_cnt_gclk(4)
    );
  grclkgen_ctr_cnt_gclk_4_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_tsimcreated_xor_IN1,
      O => grclkgen_ctr_cnt_gclk_4_MC_tsimcreated_xor_Q_659
    );
  grclkgen_ctr_cnt_gclk_4_MC_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_tsimcreated_prld_IN1,
      O => grclkgen_ctr_cnt_gclk_4_MC_tsimcreated_prld_Q_660
    );
  grclkgen_ctr_cnt_gclk_4_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_REG_CLK,
      SET => Gnd_36,
      RST => grclkgen_ctr_cnt_gclk_4_MC_tsimcreated_prld_Q_660,
      O => grclkgen_ctr_cnt_gclk_4_MC_Q
    );
  grclkgen_ctr_cnt_gclk_4_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D_IN1,
      O => grclkgen_ctr_cnt_gclk_4_MC_D_658
    );
  grclkgen_ctr_cnt_gclk_4_MC_D1 : X_ZERO
    port map (
      O => grclkgen_ctr_cnt_gclk_4_MC_D1_661
    );
  grclkgen_ctr_cnt_gclk_4_MC_D2_PT_0 : X_AND7
    port map (
      I0 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_0_IN1,
      I2 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_0_IN2,
      I3 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_0_IN3,
      I4 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_0_IN4,
      I5 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_0_IN5,
      I6 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_0_IN6,
      O => grclkgen_ctr_cnt_gclk_4_MC_D2_PT_0_663
    );
  grclkgen_ctr_cnt_gclk_4_MC_D2_PT_1 : X_AND8
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_1_IN0,
      I1 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_1_IN1,
      I2 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_1_IN2,
      I3 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_1_IN3,
      I4 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_1_IN4,
      I5 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_1_IN5,
      I6 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_1_IN6,
      I7 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_1_IN7,
      O => grclkgen_ctr_cnt_gclk_4_MC_D2_PT_1_664
    );
  grclkgen_ctr_cnt_gclk_4_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_IN1,
      O => grclkgen_ctr_cnt_gclk_4_MC_D2_662
    );
  grclkgen_ctr_cnt_gclk_5_Q : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_5_MC_Q,
      O => grclkgen_ctr_cnt_gclk(5)
    );
  grclkgen_ctr_cnt_gclk_5_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_tsimcreated_xor_IN1,
      O => grclkgen_ctr_cnt_gclk_5_MC_tsimcreated_xor_Q_667
    );
  grclkgen_ctr_cnt_gclk_5_MC_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_tsimcreated_prld_IN1,
      O => grclkgen_ctr_cnt_gclk_5_MC_tsimcreated_prld_Q_668
    );
  grclkgen_ctr_cnt_gclk_5_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_REG_CLK,
      SET => Gnd_36,
      RST => grclkgen_ctr_cnt_gclk_5_MC_tsimcreated_prld_Q_668,
      O => grclkgen_ctr_cnt_gclk_5_MC_Q
    );
  grclkgen_ctr_cnt_gclk_5_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D_IN1,
      O => grclkgen_ctr_cnt_gclk_5_MC_D_666
    );
  grclkgen_ctr_cnt_gclk_5_MC_D1 : X_ZERO
    port map (
      O => grclkgen_ctr_cnt_gclk_5_MC_D1_669
    );
  grclkgen_ctr_cnt_gclk_5_MC_D2_PT_0 : X_AND8
    port map (
      I0 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_0_IN1,
      I2 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_0_IN2,
      I3 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_0_IN3,
      I4 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_0_IN4,
      I5 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_0_IN5,
      I6 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_0_IN6,
      I7 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_0_IN7,
      O => grclkgen_ctr_cnt_gclk_5_MC_D2_PT_0_671
    );
  grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1 : X_AND16
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN0,
      I1 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN1,
      I2 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN2,
      I3 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN3,
      I4 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN4,
      I5 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN5,
      I6 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN6,
      I7 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN7,
      I8 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN8,
      I9 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN9,
      I10 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN10,
      I11 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN11,
      I12 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN12,
      I13 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN13,
      I14 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN14,
      I15 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN15,
      O => grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_672
    );
  grclkgen_ctr_cnt_gclk_5_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_IN1,
      O => grclkgen_ctr_cnt_gclk_5_MC_D2_670
    );
  grclkgen_ctr_cnt_gclk_6_Q : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_6_MC_Q,
      O => grclkgen_ctr_cnt_gclk(6)
    );
  grclkgen_ctr_cnt_gclk_6_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_tsimcreated_xor_IN1,
      O => grclkgen_ctr_cnt_gclk_6_MC_tsimcreated_xor_Q_675
    );
  grclkgen_ctr_cnt_gclk_6_MC_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_tsimcreated_prld_IN1,
      O => grclkgen_ctr_cnt_gclk_6_MC_tsimcreated_prld_Q_676
    );
  grclkgen_ctr_cnt_gclk_6_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_REG_CLK,
      SET => Gnd_36,
      RST => grclkgen_ctr_cnt_gclk_6_MC_tsimcreated_prld_Q_676,
      O => grclkgen_ctr_cnt_gclk_6_MC_Q
    );
  grclkgen_ctr_cnt_gclk_6_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D_IN1,
      O => grclkgen_ctr_cnt_gclk_6_MC_D_674
    );
  grclkgen_ctr_cnt_gclk_6_MC_D1 : X_ZERO
    port map (
      O => grclkgen_ctr_cnt_gclk_6_MC_D1_677
    );
  grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0 : X_AND16
    port map (
      I0 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN1,
      I2 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN2,
      I3 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN3,
      I4 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN4,
      I5 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN5,
      I6 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN6,
      I7 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN7,
      I8 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN8,
      I9 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN9,
      I10 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN10,
      I11 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN11,
      I12 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN12,
      I13 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN13,
      I14 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN14,
      I15 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN15,
      O => grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_679
    );
  grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1 : X_AND16
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN0,
      I1 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN1,
      I2 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN2,
      I3 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN3,
      I4 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN4,
      I5 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN5,
      I6 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN6,
      I7 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN7,
      I8 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN8,
      I9 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN9,
      I10 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN10,
      I11 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN11,
      I12 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN12,
      I13 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN13,
      I14 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN14,
      I15 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN15,
      O => grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_680
    );
  grclkgen_ctr_cnt_gclk_6_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_IN1,
      O => grclkgen_ctr_cnt_gclk_6_MC_D2_678
    );
  grclkgen_ctr_cnt_gclk_7_Q : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_7_MC_Q,
      O => grclkgen_ctr_cnt_gclk(7)
    );
  grclkgen_ctr_cnt_gclk_7_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_tsimcreated_xor_IN1,
      O => grclkgen_ctr_cnt_gclk_7_MC_tsimcreated_xor_Q_683
    );
  grclkgen_ctr_cnt_gclk_7_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_REG_CLK,
      SET => FOOBAR5_ctinst_6_607,
      RST => Gnd_36,
      O => grclkgen_ctr_cnt_gclk_7_MC_Q
    );
  grclkgen_ctr_cnt_gclk_7_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D_IN1,
      O => grclkgen_ctr_cnt_gclk_7_MC_D_682
    );
  grclkgen_ctr_cnt_gclk_7_MC_D1 : X_ZERO
    port map (
      O => grclkgen_ctr_cnt_gclk_7_MC_D1_684
    );
  grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0 : X_AND16
    port map (
      I0 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN1,
      I2 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN2,
      I3 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN3,
      I4 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN4,
      I5 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN5,
      I6 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN6,
      I7 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN7,
      I8 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN8,
      I9 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN9,
      I10 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN10,
      I11 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN11,
      I12 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN12,
      I13 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN13,
      I14 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN14,
      I15 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN15,
      O => grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_686
    );
  grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1 : X_AND16
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN0,
      I1 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN1,
      I2 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN2,
      I3 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN3,
      I4 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN4,
      I5 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN5,
      I6 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN6,
      I7 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN7,
      I8 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN8,
      I9 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN9,
      I10 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN10,
      I11 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN11,
      I12 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN12,
      I13 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN13,
      I14 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN14,
      I15 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN15,
      O => grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_687
    );
  grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2 : X_AND16
    port map (
      I0 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN1,
      I2 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN2,
      I3 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN3,
      I4 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN4,
      I5 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN5,
      I6 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN6,
      I7 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN7,
      I8 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN8,
      I9 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN9,
      I10 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN10,
      I11 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN11,
      I12 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN12,
      I13 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN13,
      I14 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN14,
      I15 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN15,
      O => grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_688
    );
  grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3 : X_AND16
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN0,
      I1 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN1,
      I2 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN2,
      I3 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN3,
      I4 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN4,
      I5 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN5,
      I6 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN6,
      I7 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN7,
      I8 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN8,
      I9 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN9,
      I10 => NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN10,
      I11 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN11,
      I12 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN12,
      I13 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN13,
      I14 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN14,
      I15 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN15,
      O => grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_689
    );
  grclkgen_ctr_cnt_gclk_7_MC_D2 : X_OR4
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_IN1,
      I2 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_IN2,
      I3 => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_IN3,
      O => grclkgen_ctr_cnt_gclk_7_MC_D2_685
    );
  grclkgen_ctr_cnt_lines_1_Q : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines_1_MC_Q,
      O => grclkgen_ctr_cnt_lines(1)
    );
  grclkgen_ctr_cnt_lines_1_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_tsimcreated_xor_IN1,
      O => grclkgen_ctr_cnt_lines_1_MC_tsimcreated_xor_Q_692
    );
  grclkgen_ctr_cnt_lines_1_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_REG_CLK,
      SET => FOOBAR5_ctinst_6_607,
      RST => Gnd_36,
      O => grclkgen_ctr_cnt_lines_1_MC_Q
    );
  grclkgen_ctr_cnt_lines_1_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D_IN1,
      O => grclkgen_ctr_cnt_lines_1_MC_D_691
    );
  grclkgen_ctr_cnt_lines_1_MC_D1 : X_ZERO
    port map (
      O => grclkgen_ctr_cnt_lines_1_MC_D1_693
    );
  grclkgen_ctr_cnt_lines_1_MC_D2_PT_0 : X_AND16
    port map (
      I0 => NlwInverterSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN1,
      I2 => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN2,
      I3 => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN3,
      I4 => NlwInverterSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN4,
      I5 => NlwInverterSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN5,
      I6 => NlwInverterSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN6,
      I7 => NlwInverterSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN7,
      I8 => NlwInverterSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN8,
      I9 => NlwInverterSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN9,
      I10 => NlwInverterSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN10,
      I11 => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN11,
      I12 => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN12,
      I13 => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN13,
      I14 => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN14,
      I15 => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN15,
      O => grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_695
    );
  grclkgen_ctr_cnt_lines_1_MC_D2_PT_1 : X_AND16
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN0,
      I1 => NlwInverterSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN1,
      I2 => NlwInverterSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN2,
      I3 => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN3,
      I4 => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN4,
      I5 => NlwInverterSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN5,
      I6 => NlwInverterSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN6,
      I7 => NlwInverterSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN7,
      I8 => NlwInverterSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN8,
      I9 => NlwInverterSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN9,
      I10 => NlwInverterSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN10,
      I11 => NlwInverterSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN11,
      I12 => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN12,
      I13 => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN13,
      I14 => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN14,
      I15 => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN15,
      O => grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_696
    );
  grclkgen_ctr_cnt_lines_1_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_IN1,
      O => grclkgen_ctr_cnt_lines_1_MC_D2_694
    );
  grclkgen_ctr_cnt_lines_2_Q : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines_2_MC_Q,
      O => grclkgen_ctr_cnt_lines(2)
    );
  grclkgen_ctr_cnt_lines_2_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_tsimcreated_xor_IN1,
      O => grclkgen_ctr_cnt_lines_2_MC_tsimcreated_xor_Q_699
    );
  grclkgen_ctr_cnt_lines_2_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_REG_CLK,
      SET => FOOBAR5_ctinst_6_607,
      RST => Gnd_36,
      O => grclkgen_ctr_cnt_lines_2_MC_Q
    );
  grclkgen_ctr_cnt_lines_2_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D_IN1,
      O => grclkgen_ctr_cnt_lines_2_MC_D_698
    );
  grclkgen_ctr_cnt_lines_2_MC_D1 : X_ZERO
    port map (
      O => grclkgen_ctr_cnt_lines_2_MC_D1_700
    );
  grclkgen_ctr_cnt_lines_2_MC_D2_PT_0 : X_AND16
    port map (
      I0 => NlwInverterSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN1,
      I2 => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN2,
      I3 => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN3,
      I4 => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN4,
      I5 => NlwInverterSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN5,
      I6 => NlwInverterSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN6,
      I7 => NlwInverterSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN7,
      I8 => NlwInverterSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN8,
      I9 => NlwInverterSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN9,
      I10 => NlwInverterSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN10,
      I11 => NlwInverterSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN11,
      I12 => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN12,
      I13 => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN13,
      I14 => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN14,
      I15 => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN15,
      O => grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_702
    );
  grclkgen_ctr_cnt_lines_2_MC_D2_PT_1 : X_AND16
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN0,
      I1 => NlwInverterSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN1,
      I2 => NlwInverterSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN2,
      I3 => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN3,
      I4 => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN4,
      I5 => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN5,
      I6 => NlwInverterSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN6,
      I7 => NlwInverterSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN7,
      I8 => NlwInverterSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN8,
      I9 => NlwInverterSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN9,
      I10 => NlwInverterSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN10,
      I11 => NlwInverterSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN11,
      I12 => NlwInverterSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN12,
      I13 => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN13,
      I14 => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN14,
      I15 => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN15,
      O => grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_703
    );
  grclkgen_ctr_cnt_lines_2_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_IN1,
      O => grclkgen_ctr_cnt_lines_2_MC_D2_701
    );
  grclkgen_ctr_line_en : X_BUF
    port map (
      I => grclkgen_ctr_line_en_MC_Q,
      O => grclkgen_ctr_line_en_603
    );
  grclkgen_ctr_line_en_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_line_en_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_line_en_MC_tsimcreated_xor_IN1,
      O => grclkgen_ctr_line_en_MC_tsimcreated_xor_Q_706
    );
  grclkgen_ctr_line_en_MC_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_line_en_MC_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_line_en_MC_tsimcreated_prld_IN1,
      O => grclkgen_ctr_line_en_MC_tsimcreated_prld_Q_707
    );
  grclkgen_ctr_line_en_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_grclkgen_ctr_line_en_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_grclkgen_ctr_line_en_MC_REG_CLK,
      SET => Gnd_36,
      RST => grclkgen_ctr_line_en_MC_tsimcreated_prld_Q_707,
      O => grclkgen_ctr_line_en_MC_Q
    );
  grclkgen_ctr_line_en_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_line_en_MC_D_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_line_en_MC_D_IN1,
      O => grclkgen_ctr_line_en_MC_D_705
    );
  grclkgen_ctr_line_en_MC_D1 : X_ZERO
    port map (
      O => grclkgen_ctr_line_en_MC_D1_708
    );
  grclkgen_ctr_line_en_MC_D2_PT_0 : X_AND3
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_line_en_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_line_en_MC_D2_PT_0_IN1,
      I2 => NlwInverterSignal_grclkgen_ctr_line_en_MC_D2_PT_0_IN2,
      O => grclkgen_ctr_line_en_MC_D2_PT_0_710
    );
  grclkgen_ctr_line_en_MC_D2_PT_1 : X_AND4
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_line_en_MC_D2_PT_1_IN0,
      I1 => NlwInverterSignal_grclkgen_ctr_line_en_MC_D2_PT_1_IN1,
      I2 => NlwBufferSignal_grclkgen_ctr_line_en_MC_D2_PT_1_IN2,
      I3 => NlwInverterSignal_grclkgen_ctr_line_en_MC_D2_PT_1_IN3,
      O => grclkgen_ctr_line_en_MC_D2_PT_1_711
    );
  grclkgen_ctr_line_en_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_grclkgen_ctr_line_en_MC_D2_IN0,
      I1 => NlwBufferSignal_grclkgen_ctr_line_en_MC_D2_IN1,
      O => grclkgen_ctr_line_en_MC_D2_709
    );
  line_select_1_MC_Q : X_BUF
    port map (
      I => line_select_1_MC_Q_tsimrenamed_net_Q_712,
      O => line_select_1_MC_Q_53
    );
  line_select_1_MC_Q_tsimrenamed_net_Q : X_BUF
    port map (
      I => line_select_1_MC_D_713,
      O => line_select_1_MC_Q_tsimrenamed_net_Q_712
    );
  line_select_1_MC_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_line_select_1_MC_D_IN0,
      I1 => NlwBufferSignal_line_select_1_MC_D_IN1,
      O => line_select_1_MC_D_713
    );
  line_select_1_MC_D1 : X_AND5
    port map (
      I0 => NlwInverterSignal_line_select_1_MC_D1_IN0,
      I1 => NlwBufferSignal_line_select_1_MC_D1_IN1,
      I2 => NlwInverterSignal_line_select_1_MC_D1_IN2,
      I3 => NlwInverterSignal_line_select_1_MC_D1_IN3,
      I4 => NlwBufferSignal_line_select_1_MC_D1_IN4,
      O => line_select_1_MC_D1_714
    );
  line_select_1_MC_D2 : X_ZERO
    port map (
      O => line_select_1_MC_D2_715
    );
  line_select_2_MC_Q : X_BUF
    port map (
      I => line_select_2_MC_Q_tsimrenamed_net_Q_716,
      O => line_select_2_MC_Q_55
    );
  line_select_2_MC_Q_tsimrenamed_net_Q : X_BUF
    port map (
      I => line_select_2_MC_D_717,
      O => line_select_2_MC_Q_tsimrenamed_net_Q_716
    );
  line_select_2_MC_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_line_select_2_MC_D_IN0,
      I1 => NlwBufferSignal_line_select_2_MC_D_IN1,
      O => line_select_2_MC_D_717
    );
  line_select_2_MC_D1 : X_AND5
    port map (
      I0 => NlwInverterSignal_line_select_2_MC_D1_IN0,
      I1 => NlwInverterSignal_line_select_2_MC_D1_IN1,
      I2 => NlwBufferSignal_line_select_2_MC_D1_IN2,
      I3 => NlwInverterSignal_line_select_2_MC_D1_IN3,
      I4 => NlwBufferSignal_line_select_2_MC_D1_IN4,
      O => line_select_2_MC_D1_718
    );
  line_select_2_MC_D2 : X_ZERO
    port map (
      O => line_select_2_MC_D2_719
    );
  line_select_3_MC_Q : X_BUF
    port map (
      I => line_select_3_MC_Q_tsimrenamed_net_Q_720,
      O => line_select_3_MC_Q_57
    );
  line_select_3_MC_Q_tsimrenamed_net_Q : X_BUF
    port map (
      I => line_select_3_MC_D_721,
      O => line_select_3_MC_Q_tsimrenamed_net_Q_720
    );
  line_select_3_MC_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_line_select_3_MC_D_IN0,
      I1 => NlwBufferSignal_line_select_3_MC_D_IN1,
      O => line_select_3_MC_D_721
    );
  line_select_3_MC_D1 : X_AND5
    port map (
      I0 => NlwInverterSignal_line_select_3_MC_D1_IN0,
      I1 => NlwBufferSignal_line_select_3_MC_D1_IN1,
      I2 => NlwBufferSignal_line_select_3_MC_D1_IN2,
      I3 => NlwInverterSignal_line_select_3_MC_D1_IN3,
      I4 => NlwBufferSignal_line_select_3_MC_D1_IN4,
      O => line_select_3_MC_D1_722
    );
  line_select_3_MC_D2 : X_ZERO
    port map (
      O => line_select_3_MC_D2_723
    );
  line_select_4_MC_Q : X_BUF
    port map (
      I => line_select_4_MC_Q_tsimrenamed_net_Q_724,
      O => line_select_4_MC_Q_59
    );
  line_select_4_MC_Q_tsimrenamed_net_Q : X_BUF
    port map (
      I => line_select_4_MC_D_725,
      O => line_select_4_MC_Q_tsimrenamed_net_Q_724
    );
  line_select_4_MC_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_line_select_4_MC_D_IN0,
      I1 => NlwBufferSignal_line_select_4_MC_D_IN1,
      O => line_select_4_MC_D_725
    );
  line_select_4_MC_D1 : X_AND5
    port map (
      I0 => NlwInverterSignal_line_select_4_MC_D1_IN0,
      I1 => NlwInverterSignal_line_select_4_MC_D1_IN1,
      I2 => NlwInverterSignal_line_select_4_MC_D1_IN2,
      I3 => NlwBufferSignal_line_select_4_MC_D1_IN3,
      I4 => NlwBufferSignal_line_select_4_MC_D1_IN4,
      O => line_select_4_MC_D1_726
    );
  line_select_4_MC_D2 : X_ZERO
    port map (
      O => line_select_4_MC_D2_727
    );
  line_select_5_MC_Q : X_BUF
    port map (
      I => line_select_5_MC_Q_tsimrenamed_net_Q_728,
      O => line_select_5_MC_Q_61
    );
  line_select_5_MC_Q_tsimrenamed_net_Q : X_BUF
    port map (
      I => line_select_5_MC_D_729,
      O => line_select_5_MC_Q_tsimrenamed_net_Q_728
    );
  line_select_5_MC_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_line_select_5_MC_D_IN0,
      I1 => NlwBufferSignal_line_select_5_MC_D_IN1,
      O => line_select_5_MC_D_729
    );
  line_select_5_MC_D1 : X_AND5
    port map (
      I0 => NlwInverterSignal_line_select_5_MC_D1_IN0,
      I1 => NlwBufferSignal_line_select_5_MC_D1_IN1,
      I2 => NlwInverterSignal_line_select_5_MC_D1_IN2,
      I3 => NlwBufferSignal_line_select_5_MC_D1_IN3,
      I4 => NlwBufferSignal_line_select_5_MC_D1_IN4,
      O => line_select_5_MC_D1_730
    );
  line_select_5_MC_D2 : X_ZERO
    port map (
      O => line_select_5_MC_D2_731
    );
  line_select_6_MC_Q : X_BUF
    port map (
      I => line_select_6_MC_Q_tsimrenamed_net_Q_732,
      O => line_select_6_MC_Q_63
    );
  line_select_6_MC_Q_tsimrenamed_net_Q : X_BUF
    port map (
      I => line_select_6_MC_D_733,
      O => line_select_6_MC_Q_tsimrenamed_net_Q_732
    );
  line_select_6_MC_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_line_select_6_MC_D_IN0,
      I1 => NlwBufferSignal_line_select_6_MC_D_IN1,
      O => line_select_6_MC_D_733
    );
  line_select_6_MC_D1 : X_AND5
    port map (
      I0 => NlwInverterSignal_line_select_6_MC_D1_IN0,
      I1 => NlwInverterSignal_line_select_6_MC_D1_IN1,
      I2 => NlwBufferSignal_line_select_6_MC_D1_IN2,
      I3 => NlwBufferSignal_line_select_6_MC_D1_IN3,
      I4 => NlwBufferSignal_line_select_6_MC_D1_IN4,
      O => line_select_6_MC_D1_734
    );
  line_select_6_MC_D2 : X_ZERO
    port map (
      O => line_select_6_MC_D2_735
    );
  line_select_7_MC_Q : X_BUF
    port map (
      I => line_select_7_MC_Q_tsimrenamed_net_Q_736,
      O => line_select_7_MC_Q_65
    );
  line_select_7_MC_Q_tsimrenamed_net_Q : X_BUF
    port map (
      I => line_select_7_MC_D_737,
      O => line_select_7_MC_Q_tsimrenamed_net_Q_736
    );
  line_select_7_MC_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_line_select_7_MC_D_IN0,
      I1 => NlwBufferSignal_line_select_7_MC_D_IN1,
      O => line_select_7_MC_D_737
    );
  line_select_7_MC_D1 : X_AND5
    port map (
      I0 => NlwInverterSignal_line_select_7_MC_D1_IN0,
      I1 => NlwBufferSignal_line_select_7_MC_D1_IN1,
      I2 => NlwBufferSignal_line_select_7_MC_D1_IN2,
      I3 => NlwBufferSignal_line_select_7_MC_D1_IN3,
      I4 => NlwBufferSignal_line_select_7_MC_D1_IN4,
      O => line_select_7_MC_D1_738
    );
  line_select_7_MC_D2 : X_ZERO
    port map (
      O => line_select_7_MC_D2_739
    );
  mosi_a_MC_Q : X_BUF
    port map (
      I => mosi_a_MC_Q_tsimrenamed_net_Q_740,
      O => mosi_a_MC_Q_73
    );
  mosi_a_MC_Q_tsimrenamed_net_Q : X_BUF
    port map (
      I => mosi_a_MC_D_741,
      O => mosi_a_MC_Q_tsimrenamed_net_Q_740
    );
  mosi_a_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_mosi_a_MC_D_IN0,
      I1 => NlwBufferSignal_mosi_a_MC_D_IN1,
      O => mosi_a_MC_D_741
    );
  mosi_a_MC_D1 : X_ZERO
    port map (
      O => mosi_a_MC_D1_742
    );
  mosi_a_MC_D2_PT_0 : X_AND3
    port map (
      I0 => NlwBufferSignal_mosi_a_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_mosi_a_MC_D2_PT_0_IN1,
      I2 => NlwBufferSignal_mosi_a_MC_D2_PT_0_IN2,
      O => mosi_a_MC_D2_PT_0_745
    );
  mosi_a_MC_D2_PT_1 : X_AND3
    port map (
      I0 => NlwInverterSignal_mosi_a_MC_D2_PT_1_IN0,
      I1 => NlwBufferSignal_mosi_a_MC_D2_PT_1_IN1,
      I2 => NlwBufferSignal_mosi_a_MC_D2_PT_1_IN2,
      O => mosi_a_MC_D2_PT_1_746
    );
  mosi_a_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_mosi_a_MC_D2_IN0,
      I1 => NlwBufferSignal_mosi_a_MC_D2_IN1,
      O => mosi_a_MC_D2_743
    );
  serinf_flipflop_a : X_BUF
    port map (
      I => serinf_flipflop_a_MC_Q,
      O => serinf_flipflop_a_744
    );
  serinf_flipflop_a_MC_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_serinf_flipflop_a_MC_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_serinf_flipflop_a_MC_tsimcreated_prld_IN1,
      O => serinf_flipflop_a_MC_tsimcreated_prld_Q_749
    );
  serinf_flipflop_a_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_serinf_flipflop_a_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_serinf_flipflop_a_MC_REG_CLK,
      SET => Gnd_36,
      RST => serinf_flipflop_a_MC_tsimcreated_prld_Q_749,
      O => serinf_flipflop_a_MC_Q
    );
  serinf_flipflop_a_MC_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_serinf_flipflop_a_MC_D_IN0,
      I1 => NlwBufferSignal_serinf_flipflop_a_MC_D_IN1,
      O => serinf_flipflop_a_MC_D_750
    );
  serinf_flipflop_a_MC_D1 : X_ZERO
    port map (
      O => serinf_flipflop_a_MC_D1_751
    );
  serinf_flipflop_a_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_0_IN0,
      I1 => NlwInverterSignal_serinf_flipflop_a_MC_D2_PT_0_IN1,
      O => serinf_flipflop_a_MC_D2_PT_0_753
    );
  serinf_flipflop_a_MC_D2_PT_1 : X_AND2
    port map (
      I0 => NlwInverterSignal_serinf_flipflop_a_MC_D2_PT_1_IN0,
      I1 => NlwInverterSignal_serinf_flipflop_a_MC_D2_PT_1_IN1,
      O => serinf_flipflop_a_MC_D2_PT_1_754
    );
  serinf_flipflop_a_MC_D2_PT_2 : X_AND16
    port map (
      I0 => NlwInverterSignal_serinf_flipflop_a_MC_D2_PT_2_IN0,
      I1 => NlwInverterSignal_serinf_flipflop_a_MC_D2_PT_2_IN1,
      I2 => NlwInverterSignal_serinf_flipflop_a_MC_D2_PT_2_IN2,
      I3 => NlwInverterSignal_serinf_flipflop_a_MC_D2_PT_2_IN3,
      I4 => NlwInverterSignal_serinf_flipflop_a_MC_D2_PT_2_IN4,
      I5 => NlwInverterSignal_serinf_flipflop_a_MC_D2_PT_2_IN5,
      I6 => NlwInverterSignal_serinf_flipflop_a_MC_D2_PT_2_IN6,
      I7 => NlwInverterSignal_serinf_flipflop_a_MC_D2_PT_2_IN7,
      I8 => NlwInverterSignal_serinf_flipflop_a_MC_D2_PT_2_IN8,
      I9 => NlwInverterSignal_serinf_flipflop_a_MC_D2_PT_2_IN9,
      I10 => NlwInverterSignal_serinf_flipflop_a_MC_D2_PT_2_IN10,
      I11 => NlwInverterSignal_serinf_flipflop_a_MC_D2_PT_2_IN11,
      I12 => NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_2_IN12,
      I13 => NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_2_IN13,
      I14 => NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_2_IN14,
      I15 => NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_2_IN15,
      O => serinf_flipflop_a_MC_D2_PT_2_755
    );
  serinf_flipflop_a_MC_D2 : X_OR3
    port map (
      I0 => NlwBufferSignal_serinf_flipflop_a_MC_D2_IN0,
      I1 => NlwBufferSignal_serinf_flipflop_a_MC_D2_IN1,
      I2 => NlwBufferSignal_serinf_flipflop_a_MC_D2_IN2,
      O => serinf_flipflop_a_MC_D2_752
    );
  serinf_flipflop_a_MC_RSTF : X_AND2
    port map (
      I0 => NlwBufferSignal_serinf_flipflop_a_MC_RSTF_IN0,
      I1 => NlwBufferSignal_serinf_flipflop_a_MC_RSTF_IN1,
      O => serinf_flipflop_a_MC_RSTF_748
    );
  mosi_b_MC_Q : X_BUF
    port map (
      I => mosi_b_MC_Q_tsimrenamed_net_Q_756,
      O => mosi_b_MC_Q_75
    );
  mosi_b_MC_Q_tsimrenamed_net_Q : X_BUF
    port map (
      I => mosi_b_MC_D_757,
      O => mosi_b_MC_Q_tsimrenamed_net_Q_756
    );
  mosi_b_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_mosi_b_MC_D_IN0,
      I1 => NlwBufferSignal_mosi_b_MC_D_IN1,
      O => mosi_b_MC_D_757
    );
  mosi_b_MC_D1 : X_ZERO
    port map (
      O => mosi_b_MC_D1_758
    );
  mosi_b_MC_D2_PT_0 : X_AND3
    port map (
      I0 => NlwBufferSignal_mosi_b_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_mosi_b_MC_D2_PT_0_IN1,
      I2 => NlwBufferSignal_mosi_b_MC_D2_PT_0_IN2,
      O => mosi_b_MC_D2_PT_0_761
    );
  mosi_b_MC_D2_PT_1 : X_AND3
    port map (
      I0 => NlwInverterSignal_mosi_b_MC_D2_PT_1_IN0,
      I1 => NlwBufferSignal_mosi_b_MC_D2_PT_1_IN1,
      I2 => NlwBufferSignal_mosi_b_MC_D2_PT_1_IN2,
      O => mosi_b_MC_D2_PT_1_762
    );
  mosi_b_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_mosi_b_MC_D2_IN0,
      I1 => NlwBufferSignal_mosi_b_MC_D2_IN1,
      O => mosi_b_MC_D2_759
    );
  serinf_flipflop_b : X_BUF
    port map (
      I => serinf_flipflop_b_MC_Q,
      O => serinf_flipflop_b_760
    );
  serinf_flipflop_b_MC_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_serinf_flipflop_b_MC_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_serinf_flipflop_b_MC_tsimcreated_prld_IN1,
      O => serinf_flipflop_b_MC_tsimcreated_prld_Q_765
    );
  serinf_flipflop_b_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_serinf_flipflop_b_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_serinf_flipflop_b_MC_REG_CLK,
      SET => Gnd_36,
      RST => serinf_flipflop_b_MC_tsimcreated_prld_Q_765,
      O => serinf_flipflop_b_MC_Q
    );
  serinf_flipflop_b_MC_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_serinf_flipflop_b_MC_D_IN0,
      I1 => NlwBufferSignal_serinf_flipflop_b_MC_D_IN1,
      O => serinf_flipflop_b_MC_D_766
    );
  serinf_flipflop_b_MC_D1 : X_ZERO
    port map (
      O => serinf_flipflop_b_MC_D1_767
    );
  serinf_flipflop_b_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_0_IN0,
      I1 => NlwInverterSignal_serinf_flipflop_b_MC_D2_PT_0_IN1,
      O => serinf_flipflop_b_MC_D2_PT_0_769
    );
  serinf_flipflop_b_MC_D2_PT_1 : X_AND2
    port map (
      I0 => NlwInverterSignal_serinf_flipflop_b_MC_D2_PT_1_IN0,
      I1 => NlwInverterSignal_serinf_flipflop_b_MC_D2_PT_1_IN1,
      O => serinf_flipflop_b_MC_D2_PT_1_770
    );
  serinf_flipflop_b_MC_D2_PT_2 : X_AND16
    port map (
      I0 => NlwInverterSignal_serinf_flipflop_b_MC_D2_PT_2_IN0,
      I1 => NlwInverterSignal_serinf_flipflop_b_MC_D2_PT_2_IN1,
      I2 => NlwInverterSignal_serinf_flipflop_b_MC_D2_PT_2_IN2,
      I3 => NlwInverterSignal_serinf_flipflop_b_MC_D2_PT_2_IN3,
      I4 => NlwInverterSignal_serinf_flipflop_b_MC_D2_PT_2_IN4,
      I5 => NlwInverterSignal_serinf_flipflop_b_MC_D2_PT_2_IN5,
      I6 => NlwInverterSignal_serinf_flipflop_b_MC_D2_PT_2_IN6,
      I7 => NlwInverterSignal_serinf_flipflop_b_MC_D2_PT_2_IN7,
      I8 => NlwInverterSignal_serinf_flipflop_b_MC_D2_PT_2_IN8,
      I9 => NlwInverterSignal_serinf_flipflop_b_MC_D2_PT_2_IN9,
      I10 => NlwInverterSignal_serinf_flipflop_b_MC_D2_PT_2_IN10,
      I11 => NlwInverterSignal_serinf_flipflop_b_MC_D2_PT_2_IN11,
      I12 => NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_2_IN12,
      I13 => NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_2_IN13,
      I14 => NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_2_IN14,
      I15 => NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_2_IN15,
      O => serinf_flipflop_b_MC_D2_PT_2_771
    );
  serinf_flipflop_b_MC_D2 : X_OR3
    port map (
      I0 => NlwBufferSignal_serinf_flipflop_b_MC_D2_IN0,
      I1 => NlwBufferSignal_serinf_flipflop_b_MC_D2_IN1,
      I2 => NlwBufferSignal_serinf_flipflop_b_MC_D2_IN2,
      O => serinf_flipflop_b_MC_D2_768
    );
  serinf_flipflop_b_MC_RSTF : X_AND2
    port map (
      I0 => NlwBufferSignal_serinf_flipflop_b_MC_RSTF_IN0,
      I1 => NlwBufferSignal_serinf_flipflop_b_MC_RSTF_IN1,
      O => serinf_flipflop_b_MC_RSTF_764
    );
  reset_MC_Q : X_BUF
    port map (
      I => reset_MC_Q_tsimrenamed_net_Q_772,
      O => reset_MC_Q_79
    );
  reset_MC_Q_tsimrenamed_net_Q : X_BUF
    port map (
      I => reset_MC_D_773,
      O => reset_MC_Q_tsimrenamed_net_Q_772
    );
  reset_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_reset_MC_D_IN0,
      I1 => NlwBufferSignal_reset_MC_D_IN1,
      O => reset_MC_D_773
    );
  reset_MC_D1 : X_AND2
    port map (
      I0 => NlwBufferSignal_reset_MC_D1_IN0,
      I1 => NlwBufferSignal_reset_MC_D1_IN1,
      O => reset_MC_D1_774
    );
  reset_MC_D2 : X_ZERO
    port map (
      O => reset_MC_D2_775
    );
  sdout_MC_Q : X_BUF
    port map (
      I => sdout_MC_Q_tsimrenamed_net_Q_776,
      O => sdout_MC_Q_81
    );
  sdout_MC_Q_tsimrenamed_net_Q : X_BUF
    port map (
      I => sdout_MC_D_777,
      O => sdout_MC_Q_tsimrenamed_net_Q_776
    );
  sdout_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_sdout_MC_D_IN0,
      I1 => NlwBufferSignal_sdout_MC_D_IN1,
      O => sdout_MC_D_777
    );
  sdout_MC_D1 : X_ZERO
    port map (
      O => sdout_MC_D1_778
    );
  sdout_MC_D2_PT_0 : X_AND3
    port map (
      I0 => NlwBufferSignal_sdout_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_sdout_MC_D2_PT_0_IN1,
      I2 => NlwBufferSignal_sdout_MC_D2_PT_0_IN2,
      O => sdout_MC_D2_PT_0_780
    );
  sdout_MC_D2_PT_1 : X_AND3
    port map (
      I0 => NlwBufferSignal_sdout_MC_D2_PT_1_IN0,
      I1 => NlwInverterSignal_sdout_MC_D2_PT_1_IN1,
      I2 => NlwBufferSignal_sdout_MC_D2_PT_1_IN2,
      O => sdout_MC_D2_PT_1_781
    );
  sdout_MC_D2_PT_2 : X_AND3
    port map (
      I0 => NlwInverterSignal_sdout_MC_D2_PT_2_IN0,
      I1 => NlwBufferSignal_sdout_MC_D2_PT_2_IN1,
      I2 => NlwBufferSignal_sdout_MC_D2_PT_2_IN2,
      O => sdout_MC_D2_PT_2_783
    );
  sdout_MC_D2 : X_OR3
    port map (
      I0 => NlwBufferSignal_sdout_MC_D2_IN0,
      I1 => NlwBufferSignal_sdout_MC_D2_IN1,
      I2 => NlwBufferSignal_sdout_MC_D2_IN2,
      O => sdout_MC_D2_779
    );
  sdprev_en_MC_Q : X_BUF
    port map (
      I => sdprev_en_MC_Q_tsimrenamed_net_Q_784,
      O => sdprev_en_MC_Q_83
    );
  sdprev_en_MC_UIM : X_BUF
    port map (
      I => sdprev_en_MC_Q_tsimrenamed_net_Q_784,
      O => sdprev_en_MC_UIM_782
    );
  sdprev_en_MC_Q_tsimrenamed_net_Q : X_BUF
    port map (
      I => sdprev_en_MC_D_785,
      O => sdprev_en_MC_Q_tsimrenamed_net_Q_784
    );
  sdprev_en_MC_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_sdprev_en_MC_D_IN0,
      I1 => NlwBufferSignal_sdprev_en_MC_D_IN1,
      O => sdprev_en_MC_D_785
    );
  sdprev_en_MC_D1 : X_AND4
    port map (
      I0 => NlwInverterSignal_sdprev_en_MC_D1_IN0,
      I1 => NlwInverterSignal_sdprev_en_MC_D1_IN1,
      I2 => NlwInverterSignal_sdprev_en_MC_D1_IN2,
      I3 => NlwInverterSignal_sdprev_en_MC_D1_IN3,
      O => sdprev_en_MC_D1_786
    );
  sdprev_en_MC_D2 : X_ZERO
    port map (
      O => sdprev_en_MC_D2_787
    );
  tsclk_a_MC_Q : X_BUF
    port map (
      I => tsclk_a_MC_Q_tsimrenamed_net_Q_788,
      O => tsclk_a_MC_Q_85
    );
  tsclk_a_MC_Q_tsimrenamed_net_Q : X_BUF
    port map (
      I => tsclk_a_MC_D_789,
      O => tsclk_a_MC_Q_tsimrenamed_net_Q_788
    );
  tsclk_a_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_tsclk_a_MC_D_IN0,
      I1 => NlwBufferSignal_tsclk_a_MC_D_IN1,
      O => tsclk_a_MC_D_789
    );
  tsclk_a_MC_D1 : X_ZERO
    port map (
      O => tsclk_a_MC_D1_790
    );
  tsclk_a_MC_D2_PT_0 : X_AND3
    port map (
      I0 => NlwInverterSignal_tsclk_a_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_tsclk_a_MC_D2_PT_0_IN1,
      I2 => NlwBufferSignal_tsclk_a_MC_D2_PT_0_IN2,
      O => tsclk_a_MC_D2_PT_0_792
    );
  tsclk_a_MC_D2_PT_1 : X_AND4
    port map (
      I0 => NlwBufferSignal_tsclk_a_MC_D2_PT_1_IN0,
      I1 => NlwBufferSignal_tsclk_a_MC_D2_PT_1_IN1,
      I2 => NlwBufferSignal_tsclk_a_MC_D2_PT_1_IN2,
      I3 => NlwBufferSignal_tsclk_a_MC_D2_PT_1_IN3,
      O => tsclk_a_MC_D2_PT_1_794
    );
  tsclk_a_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_tsclk_a_MC_D2_IN0,
      I1 => NlwBufferSignal_tsclk_a_MC_D2_IN1,
      O => tsclk_a_MC_D2_791
    );
  serinf_ff_a_en : X_BUF
    port map (
      I => serinf_ff_a_en_MC_Q,
      O => serinf_ff_a_en_793
    );
  serinf_ff_a_en_MC_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_serinf_ff_a_en_MC_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_serinf_ff_a_en_MC_tsimcreated_prld_IN1,
      O => serinf_ff_a_en_MC_tsimcreated_prld_Q_797
    );
  serinf_ff_a_en_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_serinf_ff_a_en_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_serinf_ff_a_en_MC_REG_CLK,
      SET => Gnd_36,
      RST => serinf_ff_a_en_MC_tsimcreated_prld_Q_797,
      O => serinf_ff_a_en_MC_Q
    );
  serinf_ff_a_en_MC_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_serinf_ff_a_en_MC_D_IN0,
      I1 => NlwBufferSignal_serinf_ff_a_en_MC_D_IN1,
      O => serinf_ff_a_en_MC_D_798
    );
  serinf_ff_a_en_MC_D1 : X_ZERO
    port map (
      O => serinf_ff_a_en_MC_D1_799
    );
  serinf_ff_a_en_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwInverterSignal_serinf_ff_a_en_MC_D2_PT_0_IN0,
      I1 => NlwInverterSignal_serinf_ff_a_en_MC_D2_PT_0_IN1,
      O => serinf_ff_a_en_MC_D2_PT_0_801
    );
  serinf_ff_a_en_MC_D2_PT_1 : X_AND2
    port map (
      I0 => NlwInverterSignal_serinf_ff_a_en_MC_D2_PT_1_IN0,
      I1 => NlwInverterSignal_serinf_ff_a_en_MC_D2_PT_1_IN1,
      O => serinf_ff_a_en_MC_D2_PT_1_802
    );
  serinf_ff_a_en_MC_D2_PT_2 : X_AND16
    port map (
      I0 => NlwInverterSignal_serinf_ff_a_en_MC_D2_PT_2_IN0,
      I1 => NlwInverterSignal_serinf_ff_a_en_MC_D2_PT_2_IN1,
      I2 => NlwInverterSignal_serinf_ff_a_en_MC_D2_PT_2_IN2,
      I3 => NlwInverterSignal_serinf_ff_a_en_MC_D2_PT_2_IN3,
      I4 => NlwInverterSignal_serinf_ff_a_en_MC_D2_PT_2_IN4,
      I5 => NlwInverterSignal_serinf_ff_a_en_MC_D2_PT_2_IN5,
      I6 => NlwInverterSignal_serinf_ff_a_en_MC_D2_PT_2_IN6,
      I7 => NlwInverterSignal_serinf_ff_a_en_MC_D2_PT_2_IN7,
      I8 => NlwInverterSignal_serinf_ff_a_en_MC_D2_PT_2_IN8,
      I9 => NlwInverterSignal_serinf_ff_a_en_MC_D2_PT_2_IN9,
      I10 => NlwInverterSignal_serinf_ff_a_en_MC_D2_PT_2_IN10,
      I11 => NlwInverterSignal_serinf_ff_a_en_MC_D2_PT_2_IN11,
      I12 => NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_2_IN12,
      I13 => NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_2_IN13,
      I14 => NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_2_IN14,
      I15 => NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_2_IN15,
      O => serinf_ff_a_en_MC_D2_PT_2_803
    );
  serinf_ff_a_en_MC_D2 : X_OR3
    port map (
      I0 => NlwBufferSignal_serinf_ff_a_en_MC_D2_IN0,
      I1 => NlwBufferSignal_serinf_ff_a_en_MC_D2_IN1,
      I2 => NlwBufferSignal_serinf_ff_a_en_MC_D2_IN2,
      O => serinf_ff_a_en_MC_D2_800
    );
  serinf_ff_a_en_MC_RSTF : X_AND2
    port map (
      I0 => NlwBufferSignal_serinf_ff_a_en_MC_RSTF_IN0,
      I1 => NlwBufferSignal_serinf_ff_a_en_MC_RSTF_IN1,
      O => serinf_ff_a_en_MC_RSTF_796
    );
  tsclk_b_MC_Q : X_BUF
    port map (
      I => tsclk_b_MC_Q_tsimrenamed_net_Q_804,
      O => tsclk_b_MC_Q_87
    );
  tsclk_b_MC_Q_tsimrenamed_net_Q : X_BUF
    port map (
      I => tsclk_b_MC_D_805,
      O => tsclk_b_MC_Q_tsimrenamed_net_Q_804
    );
  tsclk_b_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_tsclk_b_MC_D_IN0,
      I1 => NlwBufferSignal_tsclk_b_MC_D_IN1,
      O => tsclk_b_MC_D_805
    );
  tsclk_b_MC_D1 : X_ZERO
    port map (
      O => tsclk_b_MC_D1_806
    );
  tsclk_b_MC_D2_PT_0 : X_AND3
    port map (
      I0 => NlwInverterSignal_tsclk_b_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_tsclk_b_MC_D2_PT_0_IN1,
      I2 => NlwBufferSignal_tsclk_b_MC_D2_PT_0_IN2,
      O => tsclk_b_MC_D2_PT_0_808
    );
  tsclk_b_MC_D2_PT_1 : X_AND4
    port map (
      I0 => NlwBufferSignal_tsclk_b_MC_D2_PT_1_IN0,
      I1 => NlwBufferSignal_tsclk_b_MC_D2_PT_1_IN1,
      I2 => NlwInverterSignal_tsclk_b_MC_D2_PT_1_IN2,
      I3 => NlwBufferSignal_tsclk_b_MC_D2_PT_1_IN3,
      O => tsclk_b_MC_D2_PT_1_810
    );
  tsclk_b_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_tsclk_b_MC_D2_IN0,
      I1 => NlwBufferSignal_tsclk_b_MC_D2_IN1,
      O => tsclk_b_MC_D2_807
    );
  serinf_ff_b_en : X_BUF
    port map (
      I => serinf_ff_b_en_MC_Q,
      O => serinf_ff_b_en_809
    );
  serinf_ff_b_en_MC_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_serinf_ff_b_en_MC_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_serinf_ff_b_en_MC_tsimcreated_prld_IN1,
      O => serinf_ff_b_en_MC_tsimcreated_prld_Q_813
    );
  serinf_ff_b_en_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_serinf_ff_b_en_MC_REG_IN,
      CE => Vcc_91,
      CLK => NlwBufferSignal_serinf_ff_b_en_MC_REG_CLK,
      SET => Gnd_36,
      RST => serinf_ff_b_en_MC_tsimcreated_prld_Q_813,
      O => serinf_ff_b_en_MC_Q
    );
  serinf_ff_b_en_MC_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_serinf_ff_b_en_MC_D_IN0,
      I1 => NlwBufferSignal_serinf_ff_b_en_MC_D_IN1,
      O => serinf_ff_b_en_MC_D_814
    );
  serinf_ff_b_en_MC_D1 : X_ZERO
    port map (
      O => serinf_ff_b_en_MC_D1_815
    );
  serinf_ff_b_en_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwInverterSignal_serinf_ff_b_en_MC_D2_PT_0_IN0,
      I1 => NlwInverterSignal_serinf_ff_b_en_MC_D2_PT_0_IN1,
      O => serinf_ff_b_en_MC_D2_PT_0_817
    );
  serinf_ff_b_en_MC_D2_PT_1 : X_AND2
    port map (
      I0 => NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_1_IN0,
      I1 => NlwInverterSignal_serinf_ff_b_en_MC_D2_PT_1_IN1,
      O => serinf_ff_b_en_MC_D2_PT_1_818
    );
  serinf_ff_b_en_MC_D2_PT_2 : X_AND16
    port map (
      I0 => NlwInverterSignal_serinf_ff_b_en_MC_D2_PT_2_IN0,
      I1 => NlwInverterSignal_serinf_ff_b_en_MC_D2_PT_2_IN1,
      I2 => NlwInverterSignal_serinf_ff_b_en_MC_D2_PT_2_IN2,
      I3 => NlwInverterSignal_serinf_ff_b_en_MC_D2_PT_2_IN3,
      I4 => NlwInverterSignal_serinf_ff_b_en_MC_D2_PT_2_IN4,
      I5 => NlwInverterSignal_serinf_ff_b_en_MC_D2_PT_2_IN5,
      I6 => NlwInverterSignal_serinf_ff_b_en_MC_D2_PT_2_IN6,
      I7 => NlwInverterSignal_serinf_ff_b_en_MC_D2_PT_2_IN7,
      I8 => NlwInverterSignal_serinf_ff_b_en_MC_D2_PT_2_IN8,
      I9 => NlwInverterSignal_serinf_ff_b_en_MC_D2_PT_2_IN9,
      I10 => NlwInverterSignal_serinf_ff_b_en_MC_D2_PT_2_IN10,
      I11 => NlwInverterSignal_serinf_ff_b_en_MC_D2_PT_2_IN11,
      I12 => NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_2_IN12,
      I13 => NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_2_IN13,
      I14 => NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_2_IN14,
      I15 => NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_2_IN15,
      O => serinf_ff_b_en_MC_D2_PT_2_819
    );
  serinf_ff_b_en_MC_D2 : X_OR3
    port map (
      I0 => NlwBufferSignal_serinf_ff_b_en_MC_D2_IN0,
      I1 => NlwBufferSignal_serinf_ff_b_en_MC_D2_IN1,
      I2 => NlwBufferSignal_serinf_ff_b_en_MC_D2_IN2,
      O => serinf_ff_b_en_MC_D2_816
    );
  serinf_ff_b_en_MC_RSTF : X_AND2
    port map (
      I0 => NlwBufferSignal_serinf_ff_b_en_MC_RSTF_IN0,
      I1 => NlwBufferSignal_serinf_ff_b_en_MC_RSTF_IN1,
      O => serinf_ff_b_en_MC_RSTF_812
    );
  FOOBAR1_ctinst_5 : X_AND2
    port map (
      I0 => NlwBufferSignal_FOOBAR1_ctinst_5_IN0,
      I1 => NlwBufferSignal_FOOBAR1_ctinst_5_IN1,
      O => FOOBAR1_ctinst_5_35
    );
  FOOBAR2_ctinst_5 : X_AND2
    port map (
      I0 => NlwBufferSignal_FOOBAR2_ctinst_5_IN0,
      I1 => NlwBufferSignal_FOOBAR2_ctinst_5_IN1,
      O => FOOBAR2_ctinst_5_146
    );
  FOOBAR3_ctinst_5 : X_AND2
    port map (
      I0 => NlwBufferSignal_FOOBAR3_ctinst_5_IN0,
      I1 => NlwBufferSignal_FOOBAR3_ctinst_5_IN1,
      O => FOOBAR3_ctinst_5_246
    );
  FOOBAR5_ctinst_5 : X_AND2
    port map (
      I0 => NlwBufferSignal_FOOBAR5_ctinst_5_IN0,
      I1 => NlwBufferSignal_FOOBAR5_ctinst_5_IN1,
      O => FOOBAR5_ctinst_5_623
    );
  FOOBAR5_ctinst_6 : X_AND2
    port map (
      I0 => NlwBufferSignal_FOOBAR5_ctinst_6_IN0,
      I1 => NlwBufferSignal_FOOBAR5_ctinst_6_IN1,
      O => FOOBAR5_ctinst_6_607
    );
  FOOBAR6_ctinst_5 : X_AND2
    port map (
      I0 => NlwBufferSignal_FOOBAR6_ctinst_5_IN0,
      I1 => NlwBufferSignal_FOOBAR6_ctinst_5_IN1,
      O => FOOBAR6_ctinst_5_538
    );
  FOOBAR7_ctinst_5 : X_AND2
    port map (
      I0 => NlwBufferSignal_FOOBAR7_ctinst_5_IN0,
      I1 => NlwBufferSignal_FOOBAR7_ctinst_5_IN1,
      O => FOOBAR7_ctinst_5_236
    );
  NlwBufferBlock_ser_in_serial_dout_0_MC_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => FOOBAR1_ctinst_5_35,
      O => NlwBufferSignal_ser_in_serial_dout_0_MC_tsimcreated_prld_IN0
    );
  NlwBufferBlock_ser_in_serial_dout_0_MC_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_ser_in_serial_dout_0_MC_tsimcreated_prld_IN1
    );
  NlwBufferBlock_ser_in_serial_dout_0_MC_REG_IN : X_BUF
    port map (
      I => sdin_II_IREG_34,
      O => NlwBufferSignal_ser_in_serial_dout_0_MC_REG_IN
    );
  NlwBufferBlock_ser_in_serial_dout_0_MC_REG_CLK : X_BUF
    port map (
      I => sclk_II_FCLK_10,
      O => NlwBufferSignal_ser_in_serial_dout_0_MC_REG_CLK
    );
  NlwBufferBlock_done_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => done_MC_D_89,
      O => NlwBufferSignal_done_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_done_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => done_MC_Q_tsimrenamed_net_Q,
      O => NlwBufferSignal_done_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_done_MC_REG_IN : X_BUF
    port map (
      I => done_MC_tsimcreated_xor_Q_90,
      O => NlwBufferSignal_done_MC_REG_IN
    );
  NlwBufferBlock_done_MC_REG_CLK : X_BUF
    port map (
      I => sclk_II_FCLK_10,
      O => NlwBufferSignal_done_MC_REG_CLK
    );
  NlwBufferBlock_done_MC_D_IN0 : X_BUF
    port map (
      I => done_MC_D1_92,
      O => NlwBufferSignal_done_MC_D_IN0
    );
  NlwBufferBlock_done_MC_D_IN1 : X_BUF
    port map (
      I => done_MC_D2_93,
      O => NlwBufferSignal_done_MC_D_IN1
    );
  NlwBufferBlock_done_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd1_94,
      O => NlwBufferSignal_done_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_done_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => ser_in_counter_latchcount(0),
      O => NlwBufferSignal_done_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_done_MC_D2_PT_0_IN2 : X_BUF
    port map (
      I => ser_in_counter_bitcount(1),
      O => NlwBufferSignal_done_MC_D2_PT_0_IN2
    );
  NlwBufferBlock_done_MC_D2_PT_0_IN3 : X_BUF
    port map (
      I => ser_in_counter_bitcount(0),
      O => NlwBufferSignal_done_MC_D2_PT_0_IN3
    );
  NlwBufferBlock_done_MC_D2_PT_0_IN4 : X_BUF
    port map (
      I => reset_BUFR_98,
      O => NlwBufferSignal_done_MC_D2_PT_0_IN4
    );
  NlwBufferBlock_done_MC_D2_PT_0_IN5 : X_BUF
    port map (
      I => mode_data_2_MC_UIM_99,
      O => NlwBufferSignal_done_MC_D2_PT_0_IN5
    );
  NlwBufferBlock_done_MC_D2_PT_0_IN6 : X_BUF
    port map (
      I => ser_in_counter_bitcount(2),
      O => NlwBufferSignal_done_MC_D2_PT_0_IN6
    );
  NlwBufferBlock_done_MC_D2_PT_0_IN7 : X_BUF
    port map (
      I => ser_in_counter_bitcount(3),
      O => NlwBufferSignal_done_MC_D2_PT_0_IN7
    );
  NlwBufferBlock_done_MC_D2_PT_0_IN8 : X_BUF
    port map (
      I => ser_in_counter_bitcount(4),
      O => NlwBufferSignal_done_MC_D2_PT_0_IN8
    );
  NlwBufferBlock_done_MC_D2_PT_0_IN9 : X_BUF
    port map (
      I => ser_in_counter_bitcount(6),
      O => NlwBufferSignal_done_MC_D2_PT_0_IN9
    );
  NlwBufferBlock_done_MC_D2_PT_0_IN10 : X_BUF
    port map (
      I => ser_in_counter_bitcount(5),
      O => NlwBufferSignal_done_MC_D2_PT_0_IN10
    );
  NlwBufferBlock_done_MC_D2_PT_0_IN11 : X_BUF
    port map (
      I => ser_in_counter_bitcount(8),
      O => NlwBufferSignal_done_MC_D2_PT_0_IN11
    );
  NlwBufferBlock_done_MC_D2_PT_0_IN12 : X_BUF
    port map (
      I => ser_in_counter_bitcount(7),
      O => NlwBufferSignal_done_MC_D2_PT_0_IN12
    );
  NlwBufferBlock_done_MC_D2_PT_0_IN13 : X_BUF
    port map (
      I => ser_in_counter_bitcount(9),
      O => NlwBufferSignal_done_MC_D2_PT_0_IN13
    );
  NlwBufferBlock_done_MC_D2_PT_0_IN14 : X_BUF
    port map (
      I => ser_in_counter_latchcount(1),
      O => NlwBufferSignal_done_MC_D2_PT_0_IN14
    );
  NlwBufferBlock_done_MC_D2_PT_0_IN15 : X_BUF
    port map (
      I => ser_in_counter_latchcount(2),
      O => NlwBufferSignal_done_MC_D2_PT_0_IN15
    );
  NlwBufferBlock_done_MC_D2_PT_0_IN16 : X_BUF
    port map (
      I => ser_in_counter_latchcount(3),
      O => NlwBufferSignal_done_MC_D2_PT_0_IN16
    );
  NlwBufferBlock_done_MC_D2_PT_0_IN17 : X_BUF
    port map (
      I => ser_in_counter_latchcount(4),
      O => NlwBufferSignal_done_MC_D2_PT_0_IN17
    );
  NlwBufferBlock_done_MC_D2_PT_0_IN18 : X_BUF
    port map (
      I => ser_in_counter_latchcount(5),
      O => NlwBufferSignal_done_MC_D2_PT_0_IN18
    );
  NlwBufferBlock_done_MC_D2_PT_0_IN19 : X_BUF
    port map (
      I => ser_in_counter_latchcount(6),
      O => NlwBufferSignal_done_MC_D2_PT_0_IN19
    );
  NlwBufferBlock_done_MC_D2_PT_0_IN20 : X_BUF
    port map (
      I => panel_select_MC_UIM_114,
      O => NlwBufferSignal_done_MC_D2_PT_0_IN20
    );
  NlwBufferBlock_done_MC_D2_PT_0_IN21 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_done_MC_D2_PT_0_IN21
    );
  NlwBufferBlock_done_MC_D2_PT_0_IN22 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_done_MC_D2_PT_0_IN22
    );
  NlwBufferBlock_done_MC_D2_PT_0_IN23 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_done_MC_D2_PT_0_IN23
    );
  NlwBufferBlock_done_MC_D2_PT_0_IN24 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_done_MC_D2_PT_0_IN24
    );
  NlwBufferBlock_done_MC_D2_PT_0_IN25 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_done_MC_D2_PT_0_IN25
    );
  NlwBufferBlock_done_MC_D2_PT_0_IN26 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_done_MC_D2_PT_0_IN26
    );
  NlwBufferBlock_done_MC_D2_PT_0_IN27 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_done_MC_D2_PT_0_IN27
    );
  NlwBufferBlock_done_MC_D2_PT_0_IN28 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_done_MC_D2_PT_0_IN28
    );
  NlwBufferBlock_done_MC_D2_PT_0_IN29 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_done_MC_D2_PT_0_IN29
    );
  NlwBufferBlock_done_MC_D2_PT_0_IN30 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_done_MC_D2_PT_0_IN30
    );
  NlwBufferBlock_done_MC_D2_PT_0_IN31 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_done_MC_D2_PT_0_IN31
    );
  NlwBufferBlock_done_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd1_94,
      O => NlwBufferSignal_done_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_done_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => ser_in_counter_latchcount(0),
      O => NlwBufferSignal_done_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_done_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => ser_in_counter_bitcount(1),
      O => NlwBufferSignal_done_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_done_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => ser_in_counter_bitcount(0),
      O => NlwBufferSignal_done_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_done_MC_D2_PT_1_IN4 : X_BUF
    port map (
      I => reset_BUFR_98,
      O => NlwBufferSignal_done_MC_D2_PT_1_IN4
    );
  NlwBufferBlock_done_MC_D2_PT_1_IN5 : X_BUF
    port map (
      I => ser_in_counter_bitcount(2),
      O => NlwBufferSignal_done_MC_D2_PT_1_IN5
    );
  NlwBufferBlock_done_MC_D2_PT_1_IN6 : X_BUF
    port map (
      I => ser_in_counter_bitcount(3),
      O => NlwBufferSignal_done_MC_D2_PT_1_IN6
    );
  NlwBufferBlock_done_MC_D2_PT_1_IN7 : X_BUF
    port map (
      I => ser_in_counter_bitcount(4),
      O => NlwBufferSignal_done_MC_D2_PT_1_IN7
    );
  NlwBufferBlock_done_MC_D2_PT_1_IN8 : X_BUF
    port map (
      I => ser_in_counter_bitcount(6),
      O => NlwBufferSignal_done_MC_D2_PT_1_IN8
    );
  NlwBufferBlock_done_MC_D2_PT_1_IN9 : X_BUF
    port map (
      I => ser_in_counter_bitcount(5),
      O => NlwBufferSignal_done_MC_D2_PT_1_IN9
    );
  NlwBufferBlock_done_MC_D2_PT_1_IN10 : X_BUF
    port map (
      I => ser_in_counter_bitcount(8),
      O => NlwBufferSignal_done_MC_D2_PT_1_IN10
    );
  NlwBufferBlock_done_MC_D2_PT_1_IN11 : X_BUF
    port map (
      I => ser_in_counter_bitcount(7),
      O => NlwBufferSignal_done_MC_D2_PT_1_IN11
    );
  NlwBufferBlock_done_MC_D2_PT_1_IN12 : X_BUF
    port map (
      I => ser_in_counter_bitcount(9),
      O => NlwBufferSignal_done_MC_D2_PT_1_IN12
    );
  NlwBufferBlock_done_MC_D2_PT_1_IN13 : X_BUF
    port map (
      I => ser_in_counter_latchcount(1),
      O => NlwBufferSignal_done_MC_D2_PT_1_IN13
    );
  NlwBufferBlock_done_MC_D2_PT_1_IN14 : X_BUF
    port map (
      I => ser_in_counter_latchcount(2),
      O => NlwBufferSignal_done_MC_D2_PT_1_IN14
    );
  NlwBufferBlock_done_MC_D2_PT_1_IN15 : X_BUF
    port map (
      I => ser_in_counter_latchcount(3),
      O => NlwBufferSignal_done_MC_D2_PT_1_IN15
    );
  NlwBufferBlock_done_MC_D2_PT_1_IN16 : X_BUF
    port map (
      I => ser_in_counter_latchcount(4),
      O => NlwBufferSignal_done_MC_D2_PT_1_IN16
    );
  NlwBufferBlock_done_MC_D2_PT_1_IN17 : X_BUF
    port map (
      I => ser_in_counter_latchcount(5),
      O => NlwBufferSignal_done_MC_D2_PT_1_IN17
    );
  NlwBufferBlock_done_MC_D2_PT_1_IN18 : X_BUF
    port map (
      I => ser_in_counter_latchcount(6),
      O => NlwBufferSignal_done_MC_D2_PT_1_IN18
    );
  NlwBufferBlock_done_MC_D2_PT_1_IN19 : X_BUF
    port map (
      I => panel_select_MC_UIM_114,
      O => NlwBufferSignal_done_MC_D2_PT_1_IN19
    );
  NlwBufferBlock_done_MC_D2_PT_1_IN20 : X_BUF
    port map (
      I => proc_rcv_en_II_UIM_15,
      O => NlwBufferSignal_done_MC_D2_PT_1_IN20
    );
  NlwBufferBlock_done_MC_D2_PT_1_IN21 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_done_MC_D2_PT_1_IN21
    );
  NlwBufferBlock_done_MC_D2_PT_1_IN22 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_done_MC_D2_PT_1_IN22
    );
  NlwBufferBlock_done_MC_D2_PT_1_IN23 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_done_MC_D2_PT_1_IN23
    );
  NlwBufferBlock_done_MC_D2_PT_1_IN24 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_done_MC_D2_PT_1_IN24
    );
  NlwBufferBlock_done_MC_D2_PT_1_IN25 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_done_MC_D2_PT_1_IN25
    );
  NlwBufferBlock_done_MC_D2_PT_1_IN26 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_done_MC_D2_PT_1_IN26
    );
  NlwBufferBlock_done_MC_D2_PT_1_IN27 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_done_MC_D2_PT_1_IN27
    );
  NlwBufferBlock_done_MC_D2_PT_1_IN28 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_done_MC_D2_PT_1_IN28
    );
  NlwBufferBlock_done_MC_D2_PT_1_IN29 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_done_MC_D2_PT_1_IN29
    );
  NlwBufferBlock_done_MC_D2_PT_1_IN30 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_done_MC_D2_PT_1_IN30
    );
  NlwBufferBlock_done_MC_D2_PT_1_IN31 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_done_MC_D2_PT_1_IN31
    );
  NlwBufferBlock_done_MC_D2_PT_2_IN0 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd1_94,
      O => NlwBufferSignal_done_MC_D2_PT_2_IN0
    );
  NlwBufferBlock_done_MC_D2_PT_2_IN1 : X_BUF
    port map (
      I => ser_in_counter_latchcount(0),
      O => NlwBufferSignal_done_MC_D2_PT_2_IN1
    );
  NlwBufferBlock_done_MC_D2_PT_2_IN2 : X_BUF
    port map (
      I => ser_in_counter_bitcount(1),
      O => NlwBufferSignal_done_MC_D2_PT_2_IN2
    );
  NlwBufferBlock_done_MC_D2_PT_2_IN3 : X_BUF
    port map (
      I => ser_in_counter_bitcount(0),
      O => NlwBufferSignal_done_MC_D2_PT_2_IN3
    );
  NlwBufferBlock_done_MC_D2_PT_2_IN4 : X_BUF
    port map (
      I => reset_BUFR_98,
      O => NlwBufferSignal_done_MC_D2_PT_2_IN4
    );
  NlwBufferBlock_done_MC_D2_PT_2_IN5 : X_BUF
    port map (
      I => ser_in_counter_bitcount(2),
      O => NlwBufferSignal_done_MC_D2_PT_2_IN5
    );
  NlwBufferBlock_done_MC_D2_PT_2_IN6 : X_BUF
    port map (
      I => ser_in_counter_bitcount(3),
      O => NlwBufferSignal_done_MC_D2_PT_2_IN6
    );
  NlwBufferBlock_done_MC_D2_PT_2_IN7 : X_BUF
    port map (
      I => ser_in_counter_bitcount(4),
      O => NlwBufferSignal_done_MC_D2_PT_2_IN7
    );
  NlwBufferBlock_done_MC_D2_PT_2_IN8 : X_BUF
    port map (
      I => ser_in_counter_bitcount(6),
      O => NlwBufferSignal_done_MC_D2_PT_2_IN8
    );
  NlwBufferBlock_done_MC_D2_PT_2_IN9 : X_BUF
    port map (
      I => ser_in_counter_bitcount(5),
      O => NlwBufferSignal_done_MC_D2_PT_2_IN9
    );
  NlwBufferBlock_done_MC_D2_PT_2_IN10 : X_BUF
    port map (
      I => ser_in_counter_bitcount(8),
      O => NlwBufferSignal_done_MC_D2_PT_2_IN10
    );
  NlwBufferBlock_done_MC_D2_PT_2_IN11 : X_BUF
    port map (
      I => ser_in_counter_bitcount(7),
      O => NlwBufferSignal_done_MC_D2_PT_2_IN11
    );
  NlwBufferBlock_done_MC_D2_PT_2_IN12 : X_BUF
    port map (
      I => ser_in_counter_bitcount(9),
      O => NlwBufferSignal_done_MC_D2_PT_2_IN12
    );
  NlwBufferBlock_done_MC_D2_PT_2_IN13 : X_BUF
    port map (
      I => ser_in_counter_latchcount(1),
      O => NlwBufferSignal_done_MC_D2_PT_2_IN13
    );
  NlwBufferBlock_done_MC_D2_PT_2_IN14 : X_BUF
    port map (
      I => ser_in_counter_latchcount(2),
      O => NlwBufferSignal_done_MC_D2_PT_2_IN14
    );
  NlwBufferBlock_done_MC_D2_PT_2_IN15 : X_BUF
    port map (
      I => ser_in_counter_latchcount(3),
      O => NlwBufferSignal_done_MC_D2_PT_2_IN15
    );
  NlwBufferBlock_done_MC_D2_PT_2_IN16 : X_BUF
    port map (
      I => ser_in_counter_latchcount(4),
      O => NlwBufferSignal_done_MC_D2_PT_2_IN16
    );
  NlwBufferBlock_done_MC_D2_PT_2_IN17 : X_BUF
    port map (
      I => ser_in_counter_latchcount(5),
      O => NlwBufferSignal_done_MC_D2_PT_2_IN17
    );
  NlwBufferBlock_done_MC_D2_PT_2_IN18 : X_BUF
    port map (
      I => ser_in_counter_latchcount(6),
      O => NlwBufferSignal_done_MC_D2_PT_2_IN18
    );
  NlwBufferBlock_done_MC_D2_PT_2_IN19 : X_BUF
    port map (
      I => panel_select_MC_UIM_114,
      O => NlwBufferSignal_done_MC_D2_PT_2_IN19
    );
  NlwBufferBlock_done_MC_D2_PT_2_IN20 : X_BUF
    port map (
      I => N_PZ_448_117,
      O => NlwBufferSignal_done_MC_D2_PT_2_IN20
    );
  NlwBufferBlock_done_MC_D2_PT_2_IN21 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_done_MC_D2_PT_2_IN21
    );
  NlwBufferBlock_done_MC_D2_PT_2_IN22 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_done_MC_D2_PT_2_IN22
    );
  NlwBufferBlock_done_MC_D2_PT_2_IN23 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_done_MC_D2_PT_2_IN23
    );
  NlwBufferBlock_done_MC_D2_PT_2_IN24 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_done_MC_D2_PT_2_IN24
    );
  NlwBufferBlock_done_MC_D2_PT_2_IN25 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_done_MC_D2_PT_2_IN25
    );
  NlwBufferBlock_done_MC_D2_PT_2_IN26 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_done_MC_D2_PT_2_IN26
    );
  NlwBufferBlock_done_MC_D2_PT_2_IN27 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_done_MC_D2_PT_2_IN27
    );
  NlwBufferBlock_done_MC_D2_PT_2_IN28 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_done_MC_D2_PT_2_IN28
    );
  NlwBufferBlock_done_MC_D2_PT_2_IN29 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_done_MC_D2_PT_2_IN29
    );
  NlwBufferBlock_done_MC_D2_PT_2_IN30 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_done_MC_D2_PT_2_IN30
    );
  NlwBufferBlock_done_MC_D2_PT_2_IN31 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_done_MC_D2_PT_2_IN31
    );
  NlwBufferBlock_done_MC_D2_IN0 : X_BUF
    port map (
      I => done_MC_D2_PT_0_115,
      O => NlwBufferSignal_done_MC_D2_IN0
    );
  NlwBufferBlock_done_MC_D2_IN1 : X_BUF
    port map (
      I => done_MC_D2_PT_1_116,
      O => NlwBufferSignal_done_MC_D2_IN1
    );
  NlwBufferBlock_done_MC_D2_IN2 : X_BUF
    port map (
      I => done_MC_D2_PT_2_118,
      O => NlwBufferSignal_done_MC_D2_IN2
    );
  NlwBufferBlock_mode_data_2_MC_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => mode_data_2_MC_RSTF_120,
      O => NlwBufferSignal_mode_data_2_MC_tsimcreated_prld_IN0
    );
  NlwBufferBlock_mode_data_2_MC_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_mode_data_2_MC_tsimcreated_prld_IN1
    );
  NlwBufferBlock_mode_data_2_MC_REG_IN : X_BUF
    port map (
      I => mode_data_2_MC_D_122,
      O => NlwBufferSignal_mode_data_2_MC_REG_IN
    );
  NlwBufferBlock_mode_data_2_MC_REG_CLK : X_BUF
    port map (
      I => sclk_II_FCLK_10,
      O => NlwBufferSignal_mode_data_2_MC_REG_CLK
    );
  NlwBufferBlock_mode_data_2_MC_D_IN0 : X_BUF
    port map (
      I => mode_data_2_MC_D1_124,
      O => NlwBufferSignal_mode_data_2_MC_D_IN0
    );
  NlwBufferBlock_mode_data_2_MC_D_IN1 : X_BUF
    port map (
      I => mode_data_2_MC_D2_125,
      O => NlwBufferSignal_mode_data_2_MC_D_IN1
    );
  NlwBufferBlock_mode_data_2_MC_D2_IN0 : X_BUF
    port map (
      I => mode_data_1_MC_UIM_126,
      O => NlwBufferSignal_mode_data_2_MC_D2_IN0
    );
  NlwBufferBlock_mode_data_2_MC_D2_IN1 : X_BUF
    port map (
      I => mode_data_1_MC_UIM_126,
      O => NlwBufferSignal_mode_data_2_MC_D2_IN1
    );
  NlwBufferBlock_mode_data_2_MC_RSTF_IN0 : X_BUF
    port map (
      I => ser_in_counter_STATE_or0000_127,
      O => NlwBufferSignal_mode_data_2_MC_RSTF_IN0
    );
  NlwBufferBlock_mode_data_2_MC_RSTF_IN1 : X_BUF
    port map (
      I => ser_in_counter_STATE_or0000_127,
      O => NlwBufferSignal_mode_data_2_MC_RSTF_IN1
    );
  NlwBufferBlock_mode_data_2_MC_CE_IN0 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd1_94,
      O => NlwBufferSignal_mode_data_2_MC_CE_IN0
    );
  NlwBufferBlock_mode_data_2_MC_CE_IN1 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd2_128,
      O => NlwBufferSignal_mode_data_2_MC_CE_IN1
    );
  NlwBufferBlock_mode_data_1_MC_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => mode_data_1_MC_RSTF_130,
      O => NlwBufferSignal_mode_data_1_MC_tsimcreated_prld_IN0
    );
  NlwBufferBlock_mode_data_1_MC_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_mode_data_1_MC_tsimcreated_prld_IN1
    );
  NlwBufferBlock_mode_data_1_MC_REG_IN : X_BUF
    port map (
      I => mode_data_1_MC_D_132,
      O => NlwBufferSignal_mode_data_1_MC_REG_IN
    );
  NlwBufferBlock_mode_data_1_MC_REG_CLK : X_BUF
    port map (
      I => sclk_II_FCLK_10,
      O => NlwBufferSignal_mode_data_1_MC_REG_CLK
    );
  NlwBufferBlock_mode_data_1_MC_D_IN0 : X_BUF
    port map (
      I => mode_data_1_MC_D1_134,
      O => NlwBufferSignal_mode_data_1_MC_D_IN0
    );
  NlwBufferBlock_mode_data_1_MC_D_IN1 : X_BUF
    port map (
      I => mode_data_1_MC_D2_135,
      O => NlwBufferSignal_mode_data_1_MC_D_IN1
    );
  NlwBufferBlock_mode_data_1_MC_D2_IN0 : X_BUF
    port map (
      I => mode_data_0_MC_UIM_136,
      O => NlwBufferSignal_mode_data_1_MC_D2_IN0
    );
  NlwBufferBlock_mode_data_1_MC_D2_IN1 : X_BUF
    port map (
      I => mode_data_0_MC_UIM_136,
      O => NlwBufferSignal_mode_data_1_MC_D2_IN1
    );
  NlwBufferBlock_mode_data_1_MC_RSTF_IN0 : X_BUF
    port map (
      I => ser_in_counter_STATE_or0000_127,
      O => NlwBufferSignal_mode_data_1_MC_RSTF_IN0
    );
  NlwBufferBlock_mode_data_1_MC_RSTF_IN1 : X_BUF
    port map (
      I => ser_in_counter_STATE_or0000_127,
      O => NlwBufferSignal_mode_data_1_MC_RSTF_IN1
    );
  NlwBufferBlock_mode_data_1_MC_CE_IN0 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd1_94,
      O => NlwBufferSignal_mode_data_1_MC_CE_IN0
    );
  NlwBufferBlock_mode_data_1_MC_CE_IN1 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd2_128,
      O => NlwBufferSignal_mode_data_1_MC_CE_IN1
    );
  NlwBufferBlock_mode_data_0_MC_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => mode_data_0_MC_RSTF_138,
      O => NlwBufferSignal_mode_data_0_MC_tsimcreated_prld_IN0
    );
  NlwBufferBlock_mode_data_0_MC_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_mode_data_0_MC_tsimcreated_prld_IN1
    );
  NlwBufferBlock_mode_data_0_MC_REG_IN : X_BUF
    port map (
      I => mode_data_0_MC_D_140,
      O => NlwBufferSignal_mode_data_0_MC_REG_IN
    );
  NlwBufferBlock_mode_data_0_MC_REG_CLK : X_BUF
    port map (
      I => sclk_II_FCLK_10,
      O => NlwBufferSignal_mode_data_0_MC_REG_CLK
    );
  NlwBufferBlock_mode_data_0_MC_D_IN0 : X_BUF
    port map (
      I => mode_data_0_MC_D1_142,
      O => NlwBufferSignal_mode_data_0_MC_D_IN0
    );
  NlwBufferBlock_mode_data_0_MC_D_IN1 : X_BUF
    port map (
      I => mode_data_0_MC_D2_143,
      O => NlwBufferSignal_mode_data_0_MC_D_IN1
    );
  NlwBufferBlock_mode_data_0_MC_D2_IN0 : X_BUF
    port map (
      I => ser_in_serial_dout_3_Q_144,
      O => NlwBufferSignal_mode_data_0_MC_D2_IN0
    );
  NlwBufferBlock_mode_data_0_MC_D2_IN1 : X_BUF
    port map (
      I => ser_in_serial_dout_3_Q_144,
      O => NlwBufferSignal_mode_data_0_MC_D2_IN1
    );
  NlwBufferBlock_mode_data_0_MC_RSTF_IN0 : X_BUF
    port map (
      I => ser_in_counter_STATE_or0000_127,
      O => NlwBufferSignal_mode_data_0_MC_RSTF_IN0
    );
  NlwBufferBlock_mode_data_0_MC_RSTF_IN1 : X_BUF
    port map (
      I => ser_in_counter_STATE_or0000_127,
      O => NlwBufferSignal_mode_data_0_MC_RSTF_IN1
    );
  NlwBufferBlock_mode_data_0_MC_CE_IN0 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd1_94,
      O => NlwBufferSignal_mode_data_0_MC_CE_IN0
    );
  NlwBufferBlock_mode_data_0_MC_CE_IN1 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd2_128,
      O => NlwBufferSignal_mode_data_0_MC_CE_IN1
    );
  NlwBufferBlock_ser_in_serial_dout_3_MC_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => FOOBAR2_ctinst_5_146,
      O => NlwBufferSignal_ser_in_serial_dout_3_MC_tsimcreated_prld_IN0
    );
  NlwBufferBlock_ser_in_serial_dout_3_MC_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_ser_in_serial_dout_3_MC_tsimcreated_prld_IN1
    );
  NlwBufferBlock_ser_in_serial_dout_3_MC_REG_IN : X_BUF
    port map (
      I => ser_in_serial_dout_3_MC_D_148,
      O => NlwBufferSignal_ser_in_serial_dout_3_MC_REG_IN
    );
  NlwBufferBlock_ser_in_serial_dout_3_MC_REG_CLK : X_BUF
    port map (
      I => sclk_II_FCLK_10,
      O => NlwBufferSignal_ser_in_serial_dout_3_MC_REG_CLK
    );
  NlwBufferBlock_ser_in_serial_dout_3_MC_D_IN0 : X_BUF
    port map (
      I => ser_in_serial_dout_3_MC_D1_150,
      O => NlwBufferSignal_ser_in_serial_dout_3_MC_D_IN0
    );
  NlwBufferBlock_ser_in_serial_dout_3_MC_D_IN1 : X_BUF
    port map (
      I => ser_in_serial_dout_3_MC_D2_151,
      O => NlwBufferSignal_ser_in_serial_dout_3_MC_D_IN1
    );
  NlwBufferBlock_ser_in_serial_dout_3_MC_D2_IN0 : X_BUF
    port map (
      I => ser_in_serial_dout_2_Q_152,
      O => NlwBufferSignal_ser_in_serial_dout_3_MC_D2_IN0
    );
  NlwBufferBlock_ser_in_serial_dout_3_MC_D2_IN1 : X_BUF
    port map (
      I => ser_in_serial_dout_2_Q_152,
      O => NlwBufferSignal_ser_in_serial_dout_3_MC_D2_IN1
    );
  NlwBufferBlock_ser_in_serial_dout_3_MC_CE_IN0 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd1_94,
      O => NlwBufferSignal_ser_in_serial_dout_3_MC_CE_IN0
    );
  NlwBufferBlock_ser_in_serial_dout_3_MC_CE_IN1 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd2_128,
      O => NlwBufferSignal_ser_in_serial_dout_3_MC_CE_IN1
    );
  NlwBufferBlock_ser_in_serial_dout_2_MC_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => FOOBAR2_ctinst_5_146,
      O => NlwBufferSignal_ser_in_serial_dout_2_MC_tsimcreated_prld_IN0
    );
  NlwBufferBlock_ser_in_serial_dout_2_MC_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_ser_in_serial_dout_2_MC_tsimcreated_prld_IN1
    );
  NlwBufferBlock_ser_in_serial_dout_2_MC_REG_IN : X_BUF
    port map (
      I => ser_in_serial_dout_2_MC_D_155,
      O => NlwBufferSignal_ser_in_serial_dout_2_MC_REG_IN
    );
  NlwBufferBlock_ser_in_serial_dout_2_MC_REG_CLK : X_BUF
    port map (
      I => sclk_II_FCLK_10,
      O => NlwBufferSignal_ser_in_serial_dout_2_MC_REG_CLK
    );
  NlwBufferBlock_ser_in_serial_dout_2_MC_D_IN0 : X_BUF
    port map (
      I => ser_in_serial_dout_2_MC_D1_157,
      O => NlwBufferSignal_ser_in_serial_dout_2_MC_D_IN0
    );
  NlwBufferBlock_ser_in_serial_dout_2_MC_D_IN1 : X_BUF
    port map (
      I => ser_in_serial_dout_2_MC_D2_158,
      O => NlwBufferSignal_ser_in_serial_dout_2_MC_D_IN1
    );
  NlwBufferBlock_ser_in_serial_dout_2_MC_D2_IN0 : X_BUF
    port map (
      I => ser_in_serial_dout_1_Q_159,
      O => NlwBufferSignal_ser_in_serial_dout_2_MC_D2_IN0
    );
  NlwBufferBlock_ser_in_serial_dout_2_MC_D2_IN1 : X_BUF
    port map (
      I => ser_in_serial_dout_1_Q_159,
      O => NlwBufferSignal_ser_in_serial_dout_2_MC_D2_IN1
    );
  NlwBufferBlock_ser_in_serial_dout_2_MC_CE_IN0 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd1_94,
      O => NlwBufferSignal_ser_in_serial_dout_2_MC_CE_IN0
    );
  NlwBufferBlock_ser_in_serial_dout_2_MC_CE_IN1 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd2_128,
      O => NlwBufferSignal_ser_in_serial_dout_2_MC_CE_IN1
    );
  NlwBufferBlock_ser_in_serial_dout_1_MC_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => FOOBAR2_ctinst_5_146,
      O => NlwBufferSignal_ser_in_serial_dout_1_MC_tsimcreated_prld_IN0
    );
  NlwBufferBlock_ser_in_serial_dout_1_MC_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_ser_in_serial_dout_1_MC_tsimcreated_prld_IN1
    );
  NlwBufferBlock_ser_in_serial_dout_1_MC_REG_IN : X_BUF
    port map (
      I => ser_in_serial_dout_1_MC_D_162,
      O => NlwBufferSignal_ser_in_serial_dout_1_MC_REG_IN
    );
  NlwBufferBlock_ser_in_serial_dout_1_MC_REG_CLK : X_BUF
    port map (
      I => sclk_II_FCLK_10,
      O => NlwBufferSignal_ser_in_serial_dout_1_MC_REG_CLK
    );
  NlwBufferBlock_ser_in_serial_dout_1_MC_D_IN0 : X_BUF
    port map (
      I => ser_in_serial_dout_1_MC_D1_164,
      O => NlwBufferSignal_ser_in_serial_dout_1_MC_D_IN0
    );
  NlwBufferBlock_ser_in_serial_dout_1_MC_D_IN1 : X_BUF
    port map (
      I => ser_in_serial_dout_1_MC_D2_165,
      O => NlwBufferSignal_ser_in_serial_dout_1_MC_D_IN1
    );
  NlwBufferBlock_ser_in_serial_dout_1_MC_D2_IN0 : X_BUF
    port map (
      I => ser_in_serial_dout_0_Q,
      O => NlwBufferSignal_ser_in_serial_dout_1_MC_D2_IN0
    );
  NlwBufferBlock_ser_in_serial_dout_1_MC_D2_IN1 : X_BUF
    port map (
      I => ser_in_serial_dout_0_Q,
      O => NlwBufferSignal_ser_in_serial_dout_1_MC_D2_IN1
    );
  NlwBufferBlock_ser_in_serial_dout_1_MC_CE_IN0 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd1_94,
      O => NlwBufferSignal_ser_in_serial_dout_1_MC_CE_IN0
    );
  NlwBufferBlock_ser_in_serial_dout_1_MC_CE_IN1 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd2_128,
      O => NlwBufferSignal_ser_in_serial_dout_1_MC_CE_IN1
    );
  NlwBufferBlock_ser_in_serial_dout_0_MC_CE_IN0 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd1_94,
      O => NlwBufferSignal_ser_in_serial_dout_0_MC_CE_IN0
    );
  NlwBufferBlock_ser_in_serial_dout_0_MC_CE_IN1 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd2_128,
      O => NlwBufferSignal_ser_in_serial_dout_0_MC_CE_IN1
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd1_MC_D_167,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd1_MC_Q,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => FOOBAR1_ctinst_5_35,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_tsimcreated_prld_IN0
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_tsimcreated_prld_IN1
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_REG_IN : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd1_MC_tsimcreated_xor_Q_168,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_REG_IN
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_REG_CLK : X_BUF
    port map (
      I => sclk_II_FCLK_10,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_REG_CLK
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_D_IN0 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd1_MC_D1_170,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D_IN0
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_D_IN1 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd1_MC_D2_171,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D_IN1
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd1_94,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount(1),
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN2 : X_BUF
    port map (
      I => ser_in_counter_bitcount(2),
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN2
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN3 : X_BUF
    port map (
      I => ser_in_counter_bitcount(3),
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN3
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN4 : X_BUF
    port map (
      I => ser_in_counter_bitcount(4),
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN4
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN5 : X_BUF
    port map (
      I => ser_in_counter_bitcount(6),
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN5
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN6 : X_BUF
    port map (
      I => ser_in_counter_bitcount(5),
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN6
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN7 : X_BUF
    port map (
      I => ser_in_counter_bitcount(8),
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN7
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN8 : X_BUF
    port map (
      I => ser_in_counter_bitcount(7),
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN8
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN9 : X_BUF
    port map (
      I => ser_in_counter_bitcount(9),
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN9
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN10 : X_BUF
    port map (
      I => N_PZ_383_172,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN10
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN11 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN11
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN12 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN12
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN13 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN13
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN14 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN14
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN15 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN15
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd1_94,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => ser_in_counter_latchcount(0),
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => ser_in_counter_bitcount(1),
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => ser_in_counter_bitcount(0),
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN4 : X_BUF
    port map (
      I => ser_in_counter_bitcount(2),
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN4
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN5 : X_BUF
    port map (
      I => ser_in_counter_bitcount(3),
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN5
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN6 : X_BUF
    port map (
      I => ser_in_counter_bitcount(4),
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN6
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN7 : X_BUF
    port map (
      I => ser_in_counter_bitcount(6),
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN7
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN8 : X_BUF
    port map (
      I => ser_in_counter_bitcount(5),
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN8
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN9 : X_BUF
    port map (
      I => ser_in_counter_bitcount(8),
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN9
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN10 : X_BUF
    port map (
      I => ser_in_counter_bitcount(7),
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN10
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN11 : X_BUF
    port map (
      I => ser_in_counter_bitcount(9),
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN11
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN12 : X_BUF
    port map (
      I => ser_in_counter_latchcount(1),
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN12
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN13 : X_BUF
    port map (
      I => ser_in_counter_latchcount(2),
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN13
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN14 : X_BUF
    port map (
      I => ser_in_counter_latchcount(3),
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN14
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN15 : X_BUF
    port map (
      I => ser_in_counter_latchcount(4),
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN15
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN16 : X_BUF
    port map (
      I => ser_in_counter_latchcount(5),
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN16
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN17 : X_BUF
    port map (
      I => ser_in_counter_latchcount(6),
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN17
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN18 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN18
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN19 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN19
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN20 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN20
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN21 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN21
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN22 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN22
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN23 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN23
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN24 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN24
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN25 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN25
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN26 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN26
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN27 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN27
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN28 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN28
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN29 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN29
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN30 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN30
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN31 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN31
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_IN0 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_173,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_IN0
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_IN1 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_174,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_IN1
    );
  NlwBufferBlock_ser_in_counter_latchcount_0_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => ser_in_counter_latchcount_0_MC_D_176,
      O => NlwBufferSignal_ser_in_counter_latchcount_0_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_ser_in_counter_latchcount_0_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => ser_in_counter_latchcount_0_MC_Q,
      O => NlwBufferSignal_ser_in_counter_latchcount_0_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_ser_in_counter_latchcount_0_MC_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => FOOBAR2_ctinst_5_146,
      O => NlwBufferSignal_ser_in_counter_latchcount_0_MC_tsimcreated_prld_IN0
    );
  NlwBufferBlock_ser_in_counter_latchcount_0_MC_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_ser_in_counter_latchcount_0_MC_tsimcreated_prld_IN1
    );
  NlwBufferBlock_ser_in_counter_latchcount_0_MC_REG_IN : X_BUF
    port map (
      I => ser_in_counter_latchcount_0_MC_tsimcreated_xor_Q_177,
      O => NlwBufferSignal_ser_in_counter_latchcount_0_MC_REG_IN
    );
  NlwBufferBlock_ser_in_counter_latchcount_0_MC_REG_CLK : X_BUF
    port map (
      I => sclk_II_FCLK_10,
      O => NlwBufferSignal_ser_in_counter_latchcount_0_MC_REG_CLK
    );
  NlwBufferBlock_ser_in_counter_latchcount_0_MC_D_IN0 : X_BUF
    port map (
      I => ser_in_counter_latchcount_0_MC_D1_179,
      O => NlwBufferSignal_ser_in_counter_latchcount_0_MC_D_IN0
    );
  NlwBufferBlock_ser_in_counter_latchcount_0_MC_D_IN1 : X_BUF
    port map (
      I => ser_in_counter_latchcount_0_MC_D2_180,
      O => NlwBufferSignal_ser_in_counter_latchcount_0_MC_D_IN1
    );
  NlwBufferBlock_ser_in_counter_latchcount_0_MC_D1_IN0 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd1_94,
      O => NlwBufferSignal_ser_in_counter_latchcount_0_MC_D1_IN0
    );
  NlwBufferBlock_ser_in_counter_latchcount_0_MC_D1_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount(1),
      O => NlwBufferSignal_ser_in_counter_latchcount_0_MC_D1_IN1
    );
  NlwBufferBlock_ser_in_counter_latchcount_0_MC_D1_IN2 : X_BUF
    port map (
      I => ser_in_counter_bitcount(0),
      O => NlwBufferSignal_ser_in_counter_latchcount_0_MC_D1_IN2
    );
  NlwBufferBlock_ser_in_counter_latchcount_0_MC_D1_IN3 : X_BUF
    port map (
      I => ser_in_counter_bitcount(2),
      O => NlwBufferSignal_ser_in_counter_latchcount_0_MC_D1_IN3
    );
  NlwBufferBlock_ser_in_counter_latchcount_0_MC_D1_IN4 : X_BUF
    port map (
      I => ser_in_counter_bitcount(3),
      O => NlwBufferSignal_ser_in_counter_latchcount_0_MC_D1_IN4
    );
  NlwBufferBlock_ser_in_counter_latchcount_0_MC_D1_IN5 : X_BUF
    port map (
      I => ser_in_counter_bitcount(4),
      O => NlwBufferSignal_ser_in_counter_latchcount_0_MC_D1_IN5
    );
  NlwBufferBlock_ser_in_counter_latchcount_0_MC_D1_IN6 : X_BUF
    port map (
      I => ser_in_counter_bitcount(6),
      O => NlwBufferSignal_ser_in_counter_latchcount_0_MC_D1_IN6
    );
  NlwBufferBlock_ser_in_counter_latchcount_0_MC_D1_IN7 : X_BUF
    port map (
      I => ser_in_counter_bitcount(5),
      O => NlwBufferSignal_ser_in_counter_latchcount_0_MC_D1_IN7
    );
  NlwBufferBlock_ser_in_counter_latchcount_0_MC_D1_IN8 : X_BUF
    port map (
      I => ser_in_counter_bitcount(8),
      O => NlwBufferSignal_ser_in_counter_latchcount_0_MC_D1_IN8
    );
  NlwBufferBlock_ser_in_counter_latchcount_0_MC_D1_IN9 : X_BUF
    port map (
      I => ser_in_counter_bitcount(7),
      O => NlwBufferSignal_ser_in_counter_latchcount_0_MC_D1_IN9
    );
  NlwBufferBlock_ser_in_counter_latchcount_0_MC_D1_IN10 : X_BUF
    port map (
      I => ser_in_counter_bitcount(9),
      O => NlwBufferSignal_ser_in_counter_latchcount_0_MC_D1_IN10
    );
  NlwBufferBlock_ser_in_counter_latchcount_0_MC_D1_IN11 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_latchcount_0_MC_D1_IN11
    );
  NlwBufferBlock_ser_in_counter_latchcount_0_MC_D1_IN12 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_latchcount_0_MC_D1_IN12
    );
  NlwBufferBlock_ser_in_counter_latchcount_0_MC_D1_IN13 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_latchcount_0_MC_D1_IN13
    );
  NlwBufferBlock_ser_in_counter_latchcount_0_MC_D1_IN14 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_latchcount_0_MC_D1_IN14
    );
  NlwBufferBlock_ser_in_counter_latchcount_0_MC_D1_IN15 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_latchcount_0_MC_D1_IN15
    );
  NlwBufferBlock_ser_in_counter_bitcount_1_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => ser_in_counter_bitcount_1_MC_D_182,
      O => NlwBufferSignal_ser_in_counter_bitcount_1_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_1_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount_1_MC_Q,
      O => NlwBufferSignal_ser_in_counter_bitcount_1_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_1_MC_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => FOOBAR2_ctinst_5_146,
      O => NlwBufferSignal_ser_in_counter_bitcount_1_MC_tsimcreated_prld_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_1_MC_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_ser_in_counter_bitcount_1_MC_tsimcreated_prld_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_1_MC_REG_IN : X_BUF
    port map (
      I => ser_in_counter_bitcount_1_MC_tsimcreated_xor_Q_183,
      O => NlwBufferSignal_ser_in_counter_bitcount_1_MC_REG_IN
    );
  NlwBufferBlock_ser_in_counter_bitcount_1_MC_REG_CLK : X_BUF
    port map (
      I => sclk_II_FCLK_10,
      O => NlwBufferSignal_ser_in_counter_bitcount_1_MC_REG_CLK
    );
  NlwBufferBlock_ser_in_counter_bitcount_1_MC_D_IN0 : X_BUF
    port map (
      I => ser_in_counter_bitcount_1_MC_D1_185,
      O => NlwBufferSignal_ser_in_counter_bitcount_1_MC_D_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_1_MC_D_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount_1_MC_D2_186,
      O => NlwBufferSignal_ser_in_counter_bitcount_1_MC_D_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_1_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => ser_in_counter_bitcount(0),
      O => NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_1_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount(0),
      O => NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_1_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => ser_in_counter_bitcount(1),
      O => NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_1_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount(2),
      O => NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_1_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => ser_in_counter_bitcount(3),
      O => NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_ser_in_counter_bitcount_1_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => ser_in_counter_bitcount(4),
      O => NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_ser_in_counter_bitcount_1_MC_D2_PT_1_IN4 : X_BUF
    port map (
      I => ser_in_counter_bitcount(6),
      O => NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN4
    );
  NlwBufferBlock_ser_in_counter_bitcount_1_MC_D2_PT_1_IN5 : X_BUF
    port map (
      I => ser_in_counter_bitcount(5),
      O => NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN5
    );
  NlwBufferBlock_ser_in_counter_bitcount_1_MC_D2_PT_1_IN6 : X_BUF
    port map (
      I => ser_in_counter_bitcount(8),
      O => NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN6
    );
  NlwBufferBlock_ser_in_counter_bitcount_1_MC_D2_PT_1_IN7 : X_BUF
    port map (
      I => ser_in_counter_bitcount(7),
      O => NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN7
    );
  NlwBufferBlock_ser_in_counter_bitcount_1_MC_D2_PT_1_IN8 : X_BUF
    port map (
      I => ser_in_counter_bitcount(9),
      O => NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN8
    );
  NlwBufferBlock_ser_in_counter_bitcount_1_MC_D2_PT_1_IN9 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd2_128,
      O => NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN9
    );
  NlwBufferBlock_ser_in_counter_bitcount_1_MC_D2_PT_1_IN10 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN10
    );
  NlwBufferBlock_ser_in_counter_bitcount_1_MC_D2_PT_1_IN11 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN11
    );
  NlwBufferBlock_ser_in_counter_bitcount_1_MC_D2_PT_1_IN12 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN12
    );
  NlwBufferBlock_ser_in_counter_bitcount_1_MC_D2_PT_1_IN13 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN13
    );
  NlwBufferBlock_ser_in_counter_bitcount_1_MC_D2_PT_1_IN14 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN14
    );
  NlwBufferBlock_ser_in_counter_bitcount_1_MC_D2_PT_1_IN15 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN15
    );
  NlwBufferBlock_ser_in_counter_bitcount_1_MC_D2_IN0 : X_BUF
    port map (
      I => ser_in_counter_bitcount_1_MC_D2_PT_0_187,
      O => NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_1_MC_D2_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount_1_MC_D2_PT_1_188,
      O => NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_0_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => ser_in_counter_bitcount_0_MC_D_190,
      O => NlwBufferSignal_ser_in_counter_bitcount_0_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_0_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount_0_MC_Q,
      O => NlwBufferSignal_ser_in_counter_bitcount_0_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_0_MC_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => ser_in_counter_bitcount_0_MC_RSTF_192,
      O => NlwBufferSignal_ser_in_counter_bitcount_0_MC_tsimcreated_prld_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_0_MC_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_ser_in_counter_bitcount_0_MC_tsimcreated_prld_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_0_MC_REG_IN : X_BUF
    port map (
      I => ser_in_counter_bitcount_0_MC_tsimcreated_xor_Q_191,
      O => NlwBufferSignal_ser_in_counter_bitcount_0_MC_REG_IN
    );
  NlwBufferBlock_ser_in_counter_bitcount_0_MC_REG_CLK : X_BUF
    port map (
      I => sclk_II_FCLK_10,
      O => NlwBufferSignal_ser_in_counter_bitcount_0_MC_REG_CLK
    );
  NlwBufferBlock_ser_in_counter_bitcount_0_MC_D_IN0 : X_BUF
    port map (
      I => ser_in_counter_bitcount_0_MC_D1_194,
      O => NlwBufferSignal_ser_in_counter_bitcount_0_MC_D_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_0_MC_D_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount_0_MC_D2_195,
      O => NlwBufferSignal_ser_in_counter_bitcount_0_MC_D_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_0_MC_RSTF_IN0 : X_BUF
    port map (
      I => ser_in_counter_STATE_or0000_127,
      O => NlwBufferSignal_ser_in_counter_bitcount_0_MC_RSTF_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_0_MC_RSTF_IN1 : X_BUF
    port map (
      I => ser_in_counter_STATE_or0000_127,
      O => NlwBufferSignal_ser_in_counter_bitcount_0_MC_RSTF_IN1
    );
  NlwBufferBlock_ser_in_counter_STATE_or0000_MC_D_IN0 : X_BUF
    port map (
      I => ser_in_counter_STATE_or0000_MC_D1_198,
      O => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D_IN0
    );
  NlwBufferBlock_ser_in_counter_STATE_or0000_MC_D_IN1 : X_BUF
    port map (
      I => ser_in_counter_STATE_or0000_MC_D2_199,
      O => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D_IN1
    );
  NlwBufferBlock_ser_in_counter_STATE_or0000_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => reset_BUFR_98,
      O => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_ser_in_counter_STATE_or0000_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => reset_BUFR_98,
      O => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_ser_in_counter_STATE_or0000_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd1_94,
      O => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_ser_in_counter_STATE_or0000_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => mode_data_2_MC_UIM_99,
      O => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_ser_in_counter_STATE_or0000_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => proc_rcv_en_II_UIM_15,
      O => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_ser_in_counter_STATE_or0000_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => N_PZ_448_117,
      O => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_ser_in_counter_STATE_or0000_MC_D2_PT_1_IN4 : X_BUF
    port map (
      I => ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_201,
      O => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_1_IN4
    );
  NlwBufferBlock_ser_in_counter_STATE_or0000_MC_D2_PT_1_IN5 : X_BUF
    port map (
      I => ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_202,
      O => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_1_IN5
    );
  NlwBufferBlock_ser_in_counter_STATE_or0000_MC_D2_PT_2_IN0 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd1_94,
      O => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_2_IN0
    );
  NlwBufferBlock_ser_in_counter_STATE_or0000_MC_D2_PT_2_IN1 : X_BUF
    port map (
      I => mode_data_2_MC_UIM_99,
      O => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_2_IN1
    );
  NlwBufferBlock_ser_in_counter_STATE_or0000_MC_D2_PT_2_IN2 : X_BUF
    port map (
      I => proc_rcv_en_II_UIM_15,
      O => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_2_IN2
    );
  NlwBufferBlock_ser_in_counter_STATE_or0000_MC_D2_PT_2_IN3 : X_BUF
    port map (
      I => N_PZ_448_117,
      O => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_2_IN3
    );
  NlwBufferBlock_ser_in_counter_STATE_or0000_MC_D2_PT_2_IN4 : X_BUF
    port map (
      I => ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_201,
      O => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_2_IN4
    );
  NlwBufferBlock_ser_in_counter_STATE_or0000_MC_D2_PT_2_IN5 : X_BUF
    port map (
      I => ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_202,
      O => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_2_IN5
    );
  NlwBufferBlock_ser_in_counter_STATE_or0000_MC_D2_PT_3_IN0 : X_BUF
    port map (
      I => mode_data_2_MC_UIM_99,
      O => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_3_IN0
    );
  NlwBufferBlock_ser_in_counter_STATE_or0000_MC_D2_PT_3_IN1 : X_BUF
    port map (
      I => proc_rcv_en_II_UIM_15,
      O => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_3_IN1
    );
  NlwBufferBlock_ser_in_counter_STATE_or0000_MC_D2_PT_3_IN2 : X_BUF
    port map (
      I => N_PZ_448_117,
      O => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_3_IN2
    );
  NlwBufferBlock_ser_in_counter_STATE_or0000_MC_D2_PT_3_IN3 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd2_128,
      O => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_3_IN3
    );
  NlwBufferBlock_ser_in_counter_STATE_or0000_MC_D2_PT_3_IN4 : X_BUF
    port map (
      I => ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_201,
      O => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_3_IN4
    );
  NlwBufferBlock_ser_in_counter_STATE_or0000_MC_D2_PT_3_IN5 : X_BUF
    port map (
      I => ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_202,
      O => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_3_IN5
    );
  NlwBufferBlock_ser_in_counter_STATE_or0000_MC_D2_PT_4_IN0 : X_BUF
    port map (
      I => mode_data_2_MC_UIM_99,
      O => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_4_IN0
    );
  NlwBufferBlock_ser_in_counter_STATE_or0000_MC_D2_PT_4_IN1 : X_BUF
    port map (
      I => proc_rcv_en_II_UIM_15,
      O => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_4_IN1
    );
  NlwBufferBlock_ser_in_counter_STATE_or0000_MC_D2_PT_4_IN2 : X_BUF
    port map (
      I => N_PZ_448_117,
      O => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_4_IN2
    );
  NlwBufferBlock_ser_in_counter_STATE_or0000_MC_D2_PT_4_IN3 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd2_128,
      O => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_4_IN3
    );
  NlwBufferBlock_ser_in_counter_STATE_or0000_MC_D2_PT_4_IN4 : X_BUF
    port map (
      I => ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_201,
      O => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_4_IN4
    );
  NlwBufferBlock_ser_in_counter_STATE_or0000_MC_D2_PT_4_IN5 : X_BUF
    port map (
      I => ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_202,
      O => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_4_IN5
    );
  NlwBufferBlock_ser_in_counter_STATE_or0000_MC_D2_IN0 : X_BUF
    port map (
      I => ser_in_counter_STATE_or0000_MC_D2_PT_0_200,
      O => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_IN0
    );
  NlwBufferBlock_ser_in_counter_STATE_or0000_MC_D2_IN1 : X_BUF
    port map (
      I => ser_in_counter_STATE_or0000_MC_D2_PT_1_203,
      O => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_IN1
    );
  NlwBufferBlock_ser_in_counter_STATE_or0000_MC_D2_IN2 : X_BUF
    port map (
      I => ser_in_counter_STATE_or0000_MC_D2_PT_2_204,
      O => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_IN2
    );
  NlwBufferBlock_ser_in_counter_STATE_or0000_MC_D2_IN3 : X_BUF
    port map (
      I => ser_in_counter_STATE_or0000_MC_D2_PT_3_205,
      O => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_IN3
    );
  NlwBufferBlock_ser_in_counter_STATE_or0000_MC_D2_IN4 : X_BUF
    port map (
      I => ser_in_counter_STATE_or0000_MC_D2_PT_4_206,
      O => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_IN4
    );
  NlwBufferBlock_reset_BUFR_MC_D_IN0 : X_BUF
    port map (
      I => reset_BUFR_MC_D1_209,
      O => NlwBufferSignal_reset_BUFR_MC_D_IN0
    );
  NlwBufferBlock_reset_BUFR_MC_D_IN1 : X_BUF
    port map (
      I => reset_BUFR_MC_D2_210,
      O => NlwBufferSignal_reset_BUFR_MC_D_IN1
    );
  NlwBufferBlock_reset_BUFR_MC_D1_IN0 : X_BUF
    port map (
      I => res_reg(0),
      O => NlwBufferSignal_reset_BUFR_MC_D1_IN0
    );
  NlwBufferBlock_reset_BUFR_MC_D1_IN1 : X_BUF
    port map (
      I => res_reg(10),
      O => NlwBufferSignal_reset_BUFR_MC_D1_IN1
    );
  NlwBufferBlock_reset_BUFR_MC_D1_IN2 : X_BUF
    port map (
      I => res_reg(1),
      O => NlwBufferSignal_reset_BUFR_MC_D1_IN2
    );
  NlwBufferBlock_reset_BUFR_MC_D1_IN3 : X_BUF
    port map (
      I => res_reg(2),
      O => NlwBufferSignal_reset_BUFR_MC_D1_IN3
    );
  NlwBufferBlock_reset_BUFR_MC_D1_IN4 : X_BUF
    port map (
      I => res_reg(3),
      O => NlwBufferSignal_reset_BUFR_MC_D1_IN4
    );
  NlwBufferBlock_reset_BUFR_MC_D1_IN5 : X_BUF
    port map (
      I => res_reg(4),
      O => NlwBufferSignal_reset_BUFR_MC_D1_IN5
    );
  NlwBufferBlock_reset_BUFR_MC_D1_IN6 : X_BUF
    port map (
      I => res_reg(5),
      O => NlwBufferSignal_reset_BUFR_MC_D1_IN6
    );
  NlwBufferBlock_reset_BUFR_MC_D1_IN7 : X_BUF
    port map (
      I => res_reg(6),
      O => NlwBufferSignal_reset_BUFR_MC_D1_IN7
    );
  NlwBufferBlock_reset_BUFR_MC_D1_IN8 : X_BUF
    port map (
      I => res_reg(7),
      O => NlwBufferSignal_reset_BUFR_MC_D1_IN8
    );
  NlwBufferBlock_reset_BUFR_MC_D1_IN9 : X_BUF
    port map (
      I => res_reg(8),
      O => NlwBufferSignal_reset_BUFR_MC_D1_IN9
    );
  NlwBufferBlock_reset_BUFR_MC_D1_IN10 : X_BUF
    port map (
      I => res_reg(9),
      O => NlwBufferSignal_reset_BUFR_MC_D1_IN10
    );
  NlwBufferBlock_reset_BUFR_MC_D1_IN11 : X_BUF
    port map (
      I => res_reg(11),
      O => NlwBufferSignal_reset_BUFR_MC_D1_IN11
    );
  NlwBufferBlock_reset_BUFR_MC_D1_IN12 : X_BUF
    port map (
      I => res_reg(12),
      O => NlwBufferSignal_reset_BUFR_MC_D1_IN12
    );
  NlwBufferBlock_reset_BUFR_MC_D1_IN13 : X_BUF
    port map (
      I => res_reg(13),
      O => NlwBufferSignal_reset_BUFR_MC_D1_IN13
    );
  NlwBufferBlock_reset_BUFR_MC_D1_IN14 : X_BUF
    port map (
      I => res_reg(14),
      O => NlwBufferSignal_reset_BUFR_MC_D1_IN14
    );
  NlwBufferBlock_reset_BUFR_MC_D1_IN15 : X_BUF
    port map (
      I => res_reg(15),
      O => NlwBufferSignal_reset_BUFR_MC_D1_IN15
    );
  NlwBufferBlock_res_reg_0_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => res_reg_0_MC_D_228,
      O => NlwBufferSignal_res_reg_0_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_res_reg_0_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => res_reg_0_MC_Q,
      O => NlwBufferSignal_res_reg_0_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_res_reg_0_MC_REG_IN : X_BUF
    port map (
      I => res_reg_0_MC_tsimcreated_xor_Q_229,
      O => NlwBufferSignal_res_reg_0_MC_REG_IN
    );
  NlwBufferBlock_res_reg_0_MC_REG_CLK : X_BUF
    port map (
      I => gclk_II_FCLK_13,
      O => NlwBufferSignal_res_reg_0_MC_REG_CLK
    );
  NlwBufferBlock_res_reg_0_MC_D_IN0 : X_BUF
    port map (
      I => res_reg_0_MC_D1_230,
      O => NlwBufferSignal_res_reg_0_MC_D_IN0
    );
  NlwBufferBlock_res_reg_0_MC_D_IN1 : X_BUF
    port map (
      I => res_reg_0_MC_D2_231,
      O => NlwBufferSignal_res_reg_0_MC_D_IN1
    );
  NlwBufferBlock_res_reg_0_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => sclk_II_UIM_9,
      O => NlwBufferSignal_res_reg_0_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_res_reg_0_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => res_reg(0),
      O => NlwBufferSignal_res_reg_0_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_res_reg_0_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => reset_BUFR_98,
      O => NlwBufferSignal_res_reg_0_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_res_reg_0_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => sclk_II_UIM_9,
      O => NlwBufferSignal_res_reg_0_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_res_reg_0_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => tick_233,
      O => NlwBufferSignal_res_reg_0_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_res_reg_0_MC_D2_IN0 : X_BUF
    port map (
      I => res_reg_0_MC_D2_PT_0_232,
      O => NlwBufferSignal_res_reg_0_MC_D2_IN0
    );
  NlwBufferBlock_res_reg_0_MC_D2_IN1 : X_BUF
    port map (
      I => res_reg_0_MC_D2_PT_1_234,
      O => NlwBufferSignal_res_reg_0_MC_D2_IN1
    );
  NlwBufferBlock_tick_MC_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => FOOBAR7_ctinst_5_236,
      O => NlwBufferSignal_tick_MC_tsimcreated_prld_IN0
    );
  NlwBufferBlock_tick_MC_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_tick_MC_tsimcreated_prld_IN1
    );
  NlwBufferBlock_tick_MC_REG_IN : X_BUF
    port map (
      I => tick_MC_D_238,
      O => NlwBufferSignal_tick_MC_REG_IN
    );
  NlwBufferBlock_tick_MC_REG_CLK : X_BUF
    port map (
      I => gclk_II_FCLK_13,
      O => NlwBufferSignal_tick_MC_REG_CLK
    );
  NlwBufferBlock_tick_MC_D_IN0 : X_BUF
    port map (
      I => tick_MC_D1_239,
      O => NlwBufferSignal_tick_MC_D_IN0
    );
  NlwBufferBlock_tick_MC_D_IN1 : X_BUF
    port map (
      I => tick_MC_D2_240,
      O => NlwBufferSignal_tick_MC_D_IN1
    );
  NlwBufferBlock_tick_MC_D1_IN0 : X_BUF
    port map (
      I => grclkgen_tgen_cnt(0),
      O => NlwBufferSignal_tick_MC_D1_IN0
    );
  NlwBufferBlock_tick_MC_D1_IN1 : X_BUF
    port map (
      I => grclkgen_tgen_cnt(1),
      O => NlwBufferSignal_tick_MC_D1_IN1
    );
  NlwBufferBlock_grclkgen_tgen_cnt_0_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => grclkgen_tgen_cnt_0_MC_D_244,
      O => NlwBufferSignal_grclkgen_tgen_cnt_0_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_grclkgen_tgen_cnt_0_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => grclkgen_tgen_cnt_0_MC_Q,
      O => NlwBufferSignal_grclkgen_tgen_cnt_0_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_grclkgen_tgen_cnt_0_MC_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => FOOBAR3_ctinst_5_246,
      O => NlwBufferSignal_grclkgen_tgen_cnt_0_MC_tsimcreated_prld_IN0
    );
  NlwBufferBlock_grclkgen_tgen_cnt_0_MC_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_grclkgen_tgen_cnt_0_MC_tsimcreated_prld_IN1
    );
  NlwBufferBlock_grclkgen_tgen_cnt_0_MC_REG_IN : X_BUF
    port map (
      I => grclkgen_tgen_cnt_0_MC_tsimcreated_xor_Q_245,
      O => NlwBufferSignal_grclkgen_tgen_cnt_0_MC_REG_IN
    );
  NlwBufferBlock_grclkgen_tgen_cnt_0_MC_REG_CLK : X_BUF
    port map (
      I => gclk_II_FCLK_13,
      O => NlwBufferSignal_grclkgen_tgen_cnt_0_MC_REG_CLK
    );
  NlwBufferBlock_grclkgen_tgen_cnt_0_MC_D_IN0 : X_BUF
    port map (
      I => grclkgen_tgen_cnt_0_MC_D1_248,
      O => NlwBufferSignal_grclkgen_tgen_cnt_0_MC_D_IN0
    );
  NlwBufferBlock_grclkgen_tgen_cnt_0_MC_D_IN1 : X_BUF
    port map (
      I => grclkgen_tgen_cnt_0_MC_D2_249,
      O => NlwBufferSignal_grclkgen_tgen_cnt_0_MC_D_IN1
    );
  NlwBufferBlock_grclkgen_tgen_cnt_1_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => grclkgen_tgen_cnt_1_MC_D_251,
      O => NlwBufferSignal_grclkgen_tgen_cnt_1_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_grclkgen_tgen_cnt_1_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => grclkgen_tgen_cnt_1_MC_Q,
      O => NlwBufferSignal_grclkgen_tgen_cnt_1_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_grclkgen_tgen_cnt_1_MC_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => FOOBAR7_ctinst_5_236,
      O => NlwBufferSignal_grclkgen_tgen_cnt_1_MC_tsimcreated_prld_IN0
    );
  NlwBufferBlock_grclkgen_tgen_cnt_1_MC_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_grclkgen_tgen_cnt_1_MC_tsimcreated_prld_IN1
    );
  NlwBufferBlock_grclkgen_tgen_cnt_1_MC_REG_IN : X_BUF
    port map (
      I => grclkgen_tgen_cnt_1_MC_tsimcreated_xor_Q_252,
      O => NlwBufferSignal_grclkgen_tgen_cnt_1_MC_REG_IN
    );
  NlwBufferBlock_grclkgen_tgen_cnt_1_MC_REG_CLK : X_BUF
    port map (
      I => gclk_II_FCLK_13,
      O => NlwBufferSignal_grclkgen_tgen_cnt_1_MC_REG_CLK
    );
  NlwBufferBlock_grclkgen_tgen_cnt_1_MC_D_IN0 : X_BUF
    port map (
      I => grclkgen_tgen_cnt_1_MC_D1_254,
      O => NlwBufferSignal_grclkgen_tgen_cnt_1_MC_D_IN0
    );
  NlwBufferBlock_grclkgen_tgen_cnt_1_MC_D_IN1 : X_BUF
    port map (
      I => grclkgen_tgen_cnt_1_MC_D2_255,
      O => NlwBufferSignal_grclkgen_tgen_cnt_1_MC_D_IN1
    );
  NlwBufferBlock_grclkgen_tgen_cnt_1_MC_D1_IN0 : X_BUF
    port map (
      I => grclkgen_tgen_cnt(0),
      O => NlwBufferSignal_grclkgen_tgen_cnt_1_MC_D1_IN0
    );
  NlwBufferBlock_grclkgen_tgen_cnt_1_MC_D1_IN1 : X_BUF
    port map (
      I => grclkgen_tgen_cnt(0),
      O => NlwBufferSignal_grclkgen_tgen_cnt_1_MC_D1_IN1
    );
  NlwBufferBlock_res_reg_10_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => res_reg_10_MC_D_257,
      O => NlwBufferSignal_res_reg_10_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_res_reg_10_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => res_reg_10_MC_Q,
      O => NlwBufferSignal_res_reg_10_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_res_reg_10_MC_REG_IN : X_BUF
    port map (
      I => res_reg_10_MC_tsimcreated_xor_Q_258,
      O => NlwBufferSignal_res_reg_10_MC_REG_IN
    );
  NlwBufferBlock_res_reg_10_MC_REG_CLK : X_BUF
    port map (
      I => gclk_II_FCLK_13,
      O => NlwBufferSignal_res_reg_10_MC_REG_CLK
    );
  NlwBufferBlock_res_reg_10_MC_D_IN0 : X_BUF
    port map (
      I => res_reg_10_MC_D1_259,
      O => NlwBufferSignal_res_reg_10_MC_D_IN0
    );
  NlwBufferBlock_res_reg_10_MC_D_IN1 : X_BUF
    port map (
      I => res_reg_10_MC_D2_260,
      O => NlwBufferSignal_res_reg_10_MC_D_IN1
    );
  NlwBufferBlock_res_reg_10_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => sclk_II_UIM_9,
      O => NlwBufferSignal_res_reg_10_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_res_reg_10_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => res_reg(10),
      O => NlwBufferSignal_res_reg_10_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_res_reg_10_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => reset_BUFR_98,
      O => NlwBufferSignal_res_reg_10_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_res_reg_10_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => sclk_II_UIM_9,
      O => NlwBufferSignal_res_reg_10_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_res_reg_10_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => res_reg(0),
      O => NlwBufferSignal_res_reg_10_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_res_reg_10_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => res_reg(1),
      O => NlwBufferSignal_res_reg_10_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_res_reg_10_MC_D2_PT_1_IN4 : X_BUF
    port map (
      I => res_reg(2),
      O => NlwBufferSignal_res_reg_10_MC_D2_PT_1_IN4
    );
  NlwBufferBlock_res_reg_10_MC_D2_PT_1_IN5 : X_BUF
    port map (
      I => res_reg(3),
      O => NlwBufferSignal_res_reg_10_MC_D2_PT_1_IN5
    );
  NlwBufferBlock_res_reg_10_MC_D2_PT_1_IN6 : X_BUF
    port map (
      I => res_reg(4),
      O => NlwBufferSignal_res_reg_10_MC_D2_PT_1_IN6
    );
  NlwBufferBlock_res_reg_10_MC_D2_PT_1_IN7 : X_BUF
    port map (
      I => res_reg(5),
      O => NlwBufferSignal_res_reg_10_MC_D2_PT_1_IN7
    );
  NlwBufferBlock_res_reg_10_MC_D2_PT_1_IN8 : X_BUF
    port map (
      I => res_reg(6),
      O => NlwBufferSignal_res_reg_10_MC_D2_PT_1_IN8
    );
  NlwBufferBlock_res_reg_10_MC_D2_PT_1_IN9 : X_BUF
    port map (
      I => res_reg(7),
      O => NlwBufferSignal_res_reg_10_MC_D2_PT_1_IN9
    );
  NlwBufferBlock_res_reg_10_MC_D2_PT_1_IN10 : X_BUF
    port map (
      I => res_reg(8),
      O => NlwBufferSignal_res_reg_10_MC_D2_PT_1_IN10
    );
  NlwBufferBlock_res_reg_10_MC_D2_PT_1_IN11 : X_BUF
    port map (
      I => res_reg(9),
      O => NlwBufferSignal_res_reg_10_MC_D2_PT_1_IN11
    );
  NlwBufferBlock_res_reg_10_MC_D2_PT_1_IN12 : X_BUF
    port map (
      I => tick_233,
      O => NlwBufferSignal_res_reg_10_MC_D2_PT_1_IN12
    );
  NlwBufferBlock_res_reg_10_MC_D2_PT_1_IN13 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_10_MC_D2_PT_1_IN13
    );
  NlwBufferBlock_res_reg_10_MC_D2_PT_1_IN14 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_10_MC_D2_PT_1_IN14
    );
  NlwBufferBlock_res_reg_10_MC_D2_PT_1_IN15 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_10_MC_D2_PT_1_IN15
    );
  NlwBufferBlock_res_reg_10_MC_D2_IN0 : X_BUF
    port map (
      I => res_reg_10_MC_D2_PT_0_261,
      O => NlwBufferSignal_res_reg_10_MC_D2_IN0
    );
  NlwBufferBlock_res_reg_10_MC_D2_IN1 : X_BUF
    port map (
      I => res_reg_10_MC_D2_PT_1_262,
      O => NlwBufferSignal_res_reg_10_MC_D2_IN1
    );
  NlwBufferBlock_res_reg_1_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => res_reg_1_MC_D_264,
      O => NlwBufferSignal_res_reg_1_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_res_reg_1_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => res_reg_1_MC_Q,
      O => NlwBufferSignal_res_reg_1_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_res_reg_1_MC_REG_IN : X_BUF
    port map (
      I => res_reg_1_MC_tsimcreated_xor_Q_265,
      O => NlwBufferSignal_res_reg_1_MC_REG_IN
    );
  NlwBufferBlock_res_reg_1_MC_REG_CLK : X_BUF
    port map (
      I => gclk_II_FCLK_13,
      O => NlwBufferSignal_res_reg_1_MC_REG_CLK
    );
  NlwBufferBlock_res_reg_1_MC_D_IN0 : X_BUF
    port map (
      I => res_reg_1_MC_D1_266,
      O => NlwBufferSignal_res_reg_1_MC_D_IN0
    );
  NlwBufferBlock_res_reg_1_MC_D_IN1 : X_BUF
    port map (
      I => res_reg_1_MC_D2_267,
      O => NlwBufferSignal_res_reg_1_MC_D_IN1
    );
  NlwBufferBlock_res_reg_1_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => sclk_II_UIM_9,
      O => NlwBufferSignal_res_reg_1_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_res_reg_1_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => res_reg(1),
      O => NlwBufferSignal_res_reg_1_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_res_reg_1_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => reset_BUFR_98,
      O => NlwBufferSignal_res_reg_1_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_res_reg_1_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => sclk_II_UIM_9,
      O => NlwBufferSignal_res_reg_1_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_res_reg_1_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => res_reg(0),
      O => NlwBufferSignal_res_reg_1_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_res_reg_1_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => tick_233,
      O => NlwBufferSignal_res_reg_1_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_res_reg_1_MC_D2_IN0 : X_BUF
    port map (
      I => res_reg_1_MC_D2_PT_0_268,
      O => NlwBufferSignal_res_reg_1_MC_D2_IN0
    );
  NlwBufferBlock_res_reg_1_MC_D2_IN1 : X_BUF
    port map (
      I => res_reg_1_MC_D2_PT_1_269,
      O => NlwBufferSignal_res_reg_1_MC_D2_IN1
    );
  NlwBufferBlock_res_reg_2_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => res_reg_2_MC_D_271,
      O => NlwBufferSignal_res_reg_2_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_res_reg_2_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => res_reg_2_MC_Q,
      O => NlwBufferSignal_res_reg_2_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_res_reg_2_MC_REG_IN : X_BUF
    port map (
      I => res_reg_2_MC_tsimcreated_xor_Q_272,
      O => NlwBufferSignal_res_reg_2_MC_REG_IN
    );
  NlwBufferBlock_res_reg_2_MC_REG_CLK : X_BUF
    port map (
      I => gclk_II_FCLK_13,
      O => NlwBufferSignal_res_reg_2_MC_REG_CLK
    );
  NlwBufferBlock_res_reg_2_MC_D_IN0 : X_BUF
    port map (
      I => res_reg_2_MC_D1_273,
      O => NlwBufferSignal_res_reg_2_MC_D_IN0
    );
  NlwBufferBlock_res_reg_2_MC_D_IN1 : X_BUF
    port map (
      I => res_reg_2_MC_D2_274,
      O => NlwBufferSignal_res_reg_2_MC_D_IN1
    );
  NlwBufferBlock_res_reg_2_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => sclk_II_UIM_9,
      O => NlwBufferSignal_res_reg_2_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_res_reg_2_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => res_reg(2),
      O => NlwBufferSignal_res_reg_2_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_res_reg_2_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => reset_BUFR_98,
      O => NlwBufferSignal_res_reg_2_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_res_reg_2_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => sclk_II_UIM_9,
      O => NlwBufferSignal_res_reg_2_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_res_reg_2_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => res_reg(0),
      O => NlwBufferSignal_res_reg_2_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_res_reg_2_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => res_reg(1),
      O => NlwBufferSignal_res_reg_2_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_res_reg_2_MC_D2_PT_1_IN4 : X_BUF
    port map (
      I => tick_233,
      O => NlwBufferSignal_res_reg_2_MC_D2_PT_1_IN4
    );
  NlwBufferBlock_res_reg_2_MC_D2_IN0 : X_BUF
    port map (
      I => res_reg_2_MC_D2_PT_0_275,
      O => NlwBufferSignal_res_reg_2_MC_D2_IN0
    );
  NlwBufferBlock_res_reg_2_MC_D2_IN1 : X_BUF
    port map (
      I => res_reg_2_MC_D2_PT_1_276,
      O => NlwBufferSignal_res_reg_2_MC_D2_IN1
    );
  NlwBufferBlock_res_reg_3_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => res_reg_3_MC_D_278,
      O => NlwBufferSignal_res_reg_3_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_res_reg_3_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => res_reg_3_MC_Q,
      O => NlwBufferSignal_res_reg_3_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_res_reg_3_MC_REG_IN : X_BUF
    port map (
      I => res_reg_3_MC_tsimcreated_xor_Q_279,
      O => NlwBufferSignal_res_reg_3_MC_REG_IN
    );
  NlwBufferBlock_res_reg_3_MC_REG_CLK : X_BUF
    port map (
      I => gclk_II_FCLK_13,
      O => NlwBufferSignal_res_reg_3_MC_REG_CLK
    );
  NlwBufferBlock_res_reg_3_MC_D_IN0 : X_BUF
    port map (
      I => res_reg_3_MC_D1_280,
      O => NlwBufferSignal_res_reg_3_MC_D_IN0
    );
  NlwBufferBlock_res_reg_3_MC_D_IN1 : X_BUF
    port map (
      I => res_reg_3_MC_D2_281,
      O => NlwBufferSignal_res_reg_3_MC_D_IN1
    );
  NlwBufferBlock_res_reg_3_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => sclk_II_UIM_9,
      O => NlwBufferSignal_res_reg_3_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_res_reg_3_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => res_reg(3),
      O => NlwBufferSignal_res_reg_3_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_res_reg_3_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => reset_BUFR_98,
      O => NlwBufferSignal_res_reg_3_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_res_reg_3_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => sclk_II_UIM_9,
      O => NlwBufferSignal_res_reg_3_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_res_reg_3_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => res_reg(0),
      O => NlwBufferSignal_res_reg_3_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_res_reg_3_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => res_reg(1),
      O => NlwBufferSignal_res_reg_3_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_res_reg_3_MC_D2_PT_1_IN4 : X_BUF
    port map (
      I => res_reg(2),
      O => NlwBufferSignal_res_reg_3_MC_D2_PT_1_IN4
    );
  NlwBufferBlock_res_reg_3_MC_D2_PT_1_IN5 : X_BUF
    port map (
      I => tick_233,
      O => NlwBufferSignal_res_reg_3_MC_D2_PT_1_IN5
    );
  NlwBufferBlock_res_reg_3_MC_D2_IN0 : X_BUF
    port map (
      I => res_reg_3_MC_D2_PT_0_282,
      O => NlwBufferSignal_res_reg_3_MC_D2_IN0
    );
  NlwBufferBlock_res_reg_3_MC_D2_IN1 : X_BUF
    port map (
      I => res_reg_3_MC_D2_PT_1_283,
      O => NlwBufferSignal_res_reg_3_MC_D2_IN1
    );
  NlwBufferBlock_res_reg_4_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => res_reg_4_MC_D_285,
      O => NlwBufferSignal_res_reg_4_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_res_reg_4_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => res_reg_4_MC_Q,
      O => NlwBufferSignal_res_reg_4_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_res_reg_4_MC_REG_IN : X_BUF
    port map (
      I => res_reg_4_MC_tsimcreated_xor_Q_286,
      O => NlwBufferSignal_res_reg_4_MC_REG_IN
    );
  NlwBufferBlock_res_reg_4_MC_REG_CLK : X_BUF
    port map (
      I => gclk_II_FCLK_13,
      O => NlwBufferSignal_res_reg_4_MC_REG_CLK
    );
  NlwBufferBlock_res_reg_4_MC_D_IN0 : X_BUF
    port map (
      I => res_reg_4_MC_D1_287,
      O => NlwBufferSignal_res_reg_4_MC_D_IN0
    );
  NlwBufferBlock_res_reg_4_MC_D_IN1 : X_BUF
    port map (
      I => res_reg_4_MC_D2_288,
      O => NlwBufferSignal_res_reg_4_MC_D_IN1
    );
  NlwBufferBlock_res_reg_4_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => sclk_II_UIM_9,
      O => NlwBufferSignal_res_reg_4_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_res_reg_4_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => res_reg(4),
      O => NlwBufferSignal_res_reg_4_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_res_reg_4_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => reset_BUFR_98,
      O => NlwBufferSignal_res_reg_4_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_res_reg_4_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => sclk_II_UIM_9,
      O => NlwBufferSignal_res_reg_4_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_res_reg_4_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => res_reg(0),
      O => NlwBufferSignal_res_reg_4_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_res_reg_4_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => res_reg(1),
      O => NlwBufferSignal_res_reg_4_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_res_reg_4_MC_D2_PT_1_IN4 : X_BUF
    port map (
      I => res_reg(2),
      O => NlwBufferSignal_res_reg_4_MC_D2_PT_1_IN4
    );
  NlwBufferBlock_res_reg_4_MC_D2_PT_1_IN5 : X_BUF
    port map (
      I => res_reg(3),
      O => NlwBufferSignal_res_reg_4_MC_D2_PT_1_IN5
    );
  NlwBufferBlock_res_reg_4_MC_D2_PT_1_IN6 : X_BUF
    port map (
      I => tick_233,
      O => NlwBufferSignal_res_reg_4_MC_D2_PT_1_IN6
    );
  NlwBufferBlock_res_reg_4_MC_D2_IN0 : X_BUF
    port map (
      I => res_reg_4_MC_D2_PT_0_289,
      O => NlwBufferSignal_res_reg_4_MC_D2_IN0
    );
  NlwBufferBlock_res_reg_4_MC_D2_IN1 : X_BUF
    port map (
      I => res_reg_4_MC_D2_PT_1_290,
      O => NlwBufferSignal_res_reg_4_MC_D2_IN1
    );
  NlwBufferBlock_res_reg_5_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => res_reg_5_MC_D_292,
      O => NlwBufferSignal_res_reg_5_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_res_reg_5_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => res_reg_5_MC_Q,
      O => NlwBufferSignal_res_reg_5_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_res_reg_5_MC_REG_IN : X_BUF
    port map (
      I => res_reg_5_MC_tsimcreated_xor_Q_293,
      O => NlwBufferSignal_res_reg_5_MC_REG_IN
    );
  NlwBufferBlock_res_reg_5_MC_REG_CLK : X_BUF
    port map (
      I => gclk_II_FCLK_13,
      O => NlwBufferSignal_res_reg_5_MC_REG_CLK
    );
  NlwBufferBlock_res_reg_5_MC_D_IN0 : X_BUF
    port map (
      I => res_reg_5_MC_D1_294,
      O => NlwBufferSignal_res_reg_5_MC_D_IN0
    );
  NlwBufferBlock_res_reg_5_MC_D_IN1 : X_BUF
    port map (
      I => res_reg_5_MC_D2_295,
      O => NlwBufferSignal_res_reg_5_MC_D_IN1
    );
  NlwBufferBlock_res_reg_5_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => sclk_II_UIM_9,
      O => NlwBufferSignal_res_reg_5_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_res_reg_5_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => res_reg(5),
      O => NlwBufferSignal_res_reg_5_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_res_reg_5_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => reset_BUFR_98,
      O => NlwBufferSignal_res_reg_5_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_res_reg_5_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => sclk_II_UIM_9,
      O => NlwBufferSignal_res_reg_5_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_res_reg_5_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => res_reg(0),
      O => NlwBufferSignal_res_reg_5_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_res_reg_5_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => res_reg(1),
      O => NlwBufferSignal_res_reg_5_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_res_reg_5_MC_D2_PT_1_IN4 : X_BUF
    port map (
      I => res_reg(2),
      O => NlwBufferSignal_res_reg_5_MC_D2_PT_1_IN4
    );
  NlwBufferBlock_res_reg_5_MC_D2_PT_1_IN5 : X_BUF
    port map (
      I => res_reg(3),
      O => NlwBufferSignal_res_reg_5_MC_D2_PT_1_IN5
    );
  NlwBufferBlock_res_reg_5_MC_D2_PT_1_IN6 : X_BUF
    port map (
      I => res_reg(4),
      O => NlwBufferSignal_res_reg_5_MC_D2_PT_1_IN6
    );
  NlwBufferBlock_res_reg_5_MC_D2_PT_1_IN7 : X_BUF
    port map (
      I => tick_233,
      O => NlwBufferSignal_res_reg_5_MC_D2_PT_1_IN7
    );
  NlwBufferBlock_res_reg_5_MC_D2_IN0 : X_BUF
    port map (
      I => res_reg_5_MC_D2_PT_0_296,
      O => NlwBufferSignal_res_reg_5_MC_D2_IN0
    );
  NlwBufferBlock_res_reg_5_MC_D2_IN1 : X_BUF
    port map (
      I => res_reg_5_MC_D2_PT_1_297,
      O => NlwBufferSignal_res_reg_5_MC_D2_IN1
    );
  NlwBufferBlock_res_reg_6_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => res_reg_6_MC_D_299,
      O => NlwBufferSignal_res_reg_6_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_res_reg_6_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => res_reg_6_MC_Q,
      O => NlwBufferSignal_res_reg_6_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_res_reg_6_MC_REG_IN : X_BUF
    port map (
      I => res_reg_6_MC_tsimcreated_xor_Q_300,
      O => NlwBufferSignal_res_reg_6_MC_REG_IN
    );
  NlwBufferBlock_res_reg_6_MC_REG_CLK : X_BUF
    port map (
      I => gclk_II_FCLK_13,
      O => NlwBufferSignal_res_reg_6_MC_REG_CLK
    );
  NlwBufferBlock_res_reg_6_MC_D_IN0 : X_BUF
    port map (
      I => res_reg_6_MC_D1_301,
      O => NlwBufferSignal_res_reg_6_MC_D_IN0
    );
  NlwBufferBlock_res_reg_6_MC_D_IN1 : X_BUF
    port map (
      I => res_reg_6_MC_D2_302,
      O => NlwBufferSignal_res_reg_6_MC_D_IN1
    );
  NlwBufferBlock_res_reg_6_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => sclk_II_UIM_9,
      O => NlwBufferSignal_res_reg_6_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_res_reg_6_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => res_reg(6),
      O => NlwBufferSignal_res_reg_6_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_res_reg_6_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => reset_BUFR_98,
      O => NlwBufferSignal_res_reg_6_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_res_reg_6_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => sclk_II_UIM_9,
      O => NlwBufferSignal_res_reg_6_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_res_reg_6_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => res_reg(0),
      O => NlwBufferSignal_res_reg_6_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_res_reg_6_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => res_reg(1),
      O => NlwBufferSignal_res_reg_6_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_res_reg_6_MC_D2_PT_1_IN4 : X_BUF
    port map (
      I => res_reg(2),
      O => NlwBufferSignal_res_reg_6_MC_D2_PT_1_IN4
    );
  NlwBufferBlock_res_reg_6_MC_D2_PT_1_IN5 : X_BUF
    port map (
      I => res_reg(3),
      O => NlwBufferSignal_res_reg_6_MC_D2_PT_1_IN5
    );
  NlwBufferBlock_res_reg_6_MC_D2_PT_1_IN6 : X_BUF
    port map (
      I => res_reg(4),
      O => NlwBufferSignal_res_reg_6_MC_D2_PT_1_IN6
    );
  NlwBufferBlock_res_reg_6_MC_D2_PT_1_IN7 : X_BUF
    port map (
      I => res_reg(5),
      O => NlwBufferSignal_res_reg_6_MC_D2_PT_1_IN7
    );
  NlwBufferBlock_res_reg_6_MC_D2_PT_1_IN8 : X_BUF
    port map (
      I => tick_233,
      O => NlwBufferSignal_res_reg_6_MC_D2_PT_1_IN8
    );
  NlwBufferBlock_res_reg_6_MC_D2_PT_1_IN9 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_6_MC_D2_PT_1_IN9
    );
  NlwBufferBlock_res_reg_6_MC_D2_PT_1_IN10 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_6_MC_D2_PT_1_IN10
    );
  NlwBufferBlock_res_reg_6_MC_D2_PT_1_IN11 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_6_MC_D2_PT_1_IN11
    );
  NlwBufferBlock_res_reg_6_MC_D2_PT_1_IN12 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_6_MC_D2_PT_1_IN12
    );
  NlwBufferBlock_res_reg_6_MC_D2_PT_1_IN13 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_6_MC_D2_PT_1_IN13
    );
  NlwBufferBlock_res_reg_6_MC_D2_PT_1_IN14 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_6_MC_D2_PT_1_IN14
    );
  NlwBufferBlock_res_reg_6_MC_D2_PT_1_IN15 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_6_MC_D2_PT_1_IN15
    );
  NlwBufferBlock_res_reg_6_MC_D2_IN0 : X_BUF
    port map (
      I => res_reg_6_MC_D2_PT_0_303,
      O => NlwBufferSignal_res_reg_6_MC_D2_IN0
    );
  NlwBufferBlock_res_reg_6_MC_D2_IN1 : X_BUF
    port map (
      I => res_reg_6_MC_D2_PT_1_304,
      O => NlwBufferSignal_res_reg_6_MC_D2_IN1
    );
  NlwBufferBlock_res_reg_7_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => res_reg_7_MC_D_306,
      O => NlwBufferSignal_res_reg_7_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_res_reg_7_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => res_reg_7_MC_Q,
      O => NlwBufferSignal_res_reg_7_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_res_reg_7_MC_REG_IN : X_BUF
    port map (
      I => res_reg_7_MC_tsimcreated_xor_Q_307,
      O => NlwBufferSignal_res_reg_7_MC_REG_IN
    );
  NlwBufferBlock_res_reg_7_MC_REG_CLK : X_BUF
    port map (
      I => gclk_II_FCLK_13,
      O => NlwBufferSignal_res_reg_7_MC_REG_CLK
    );
  NlwBufferBlock_res_reg_7_MC_D_IN0 : X_BUF
    port map (
      I => res_reg_7_MC_D1_308,
      O => NlwBufferSignal_res_reg_7_MC_D_IN0
    );
  NlwBufferBlock_res_reg_7_MC_D_IN1 : X_BUF
    port map (
      I => res_reg_7_MC_D2_309,
      O => NlwBufferSignal_res_reg_7_MC_D_IN1
    );
  NlwBufferBlock_res_reg_7_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => sclk_II_UIM_9,
      O => NlwBufferSignal_res_reg_7_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_res_reg_7_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => res_reg(7),
      O => NlwBufferSignal_res_reg_7_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_res_reg_7_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => reset_BUFR_98,
      O => NlwBufferSignal_res_reg_7_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_res_reg_7_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => sclk_II_UIM_9,
      O => NlwBufferSignal_res_reg_7_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_res_reg_7_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => res_reg(0),
      O => NlwBufferSignal_res_reg_7_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_res_reg_7_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => res_reg(1),
      O => NlwBufferSignal_res_reg_7_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_res_reg_7_MC_D2_PT_1_IN4 : X_BUF
    port map (
      I => res_reg(2),
      O => NlwBufferSignal_res_reg_7_MC_D2_PT_1_IN4
    );
  NlwBufferBlock_res_reg_7_MC_D2_PT_1_IN5 : X_BUF
    port map (
      I => res_reg(3),
      O => NlwBufferSignal_res_reg_7_MC_D2_PT_1_IN5
    );
  NlwBufferBlock_res_reg_7_MC_D2_PT_1_IN6 : X_BUF
    port map (
      I => res_reg(4),
      O => NlwBufferSignal_res_reg_7_MC_D2_PT_1_IN6
    );
  NlwBufferBlock_res_reg_7_MC_D2_PT_1_IN7 : X_BUF
    port map (
      I => res_reg(5),
      O => NlwBufferSignal_res_reg_7_MC_D2_PT_1_IN7
    );
  NlwBufferBlock_res_reg_7_MC_D2_PT_1_IN8 : X_BUF
    port map (
      I => res_reg(6),
      O => NlwBufferSignal_res_reg_7_MC_D2_PT_1_IN8
    );
  NlwBufferBlock_res_reg_7_MC_D2_PT_1_IN9 : X_BUF
    port map (
      I => tick_233,
      O => NlwBufferSignal_res_reg_7_MC_D2_PT_1_IN9
    );
  NlwBufferBlock_res_reg_7_MC_D2_PT_1_IN10 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_7_MC_D2_PT_1_IN10
    );
  NlwBufferBlock_res_reg_7_MC_D2_PT_1_IN11 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_7_MC_D2_PT_1_IN11
    );
  NlwBufferBlock_res_reg_7_MC_D2_PT_1_IN12 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_7_MC_D2_PT_1_IN12
    );
  NlwBufferBlock_res_reg_7_MC_D2_PT_1_IN13 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_7_MC_D2_PT_1_IN13
    );
  NlwBufferBlock_res_reg_7_MC_D2_PT_1_IN14 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_7_MC_D2_PT_1_IN14
    );
  NlwBufferBlock_res_reg_7_MC_D2_PT_1_IN15 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_7_MC_D2_PT_1_IN15
    );
  NlwBufferBlock_res_reg_7_MC_D2_IN0 : X_BUF
    port map (
      I => res_reg_7_MC_D2_PT_0_310,
      O => NlwBufferSignal_res_reg_7_MC_D2_IN0
    );
  NlwBufferBlock_res_reg_7_MC_D2_IN1 : X_BUF
    port map (
      I => res_reg_7_MC_D2_PT_1_311,
      O => NlwBufferSignal_res_reg_7_MC_D2_IN1
    );
  NlwBufferBlock_res_reg_8_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => res_reg_8_MC_D_313,
      O => NlwBufferSignal_res_reg_8_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_res_reg_8_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => res_reg_8_MC_Q,
      O => NlwBufferSignal_res_reg_8_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_res_reg_8_MC_REG_IN : X_BUF
    port map (
      I => res_reg_8_MC_tsimcreated_xor_Q_314,
      O => NlwBufferSignal_res_reg_8_MC_REG_IN
    );
  NlwBufferBlock_res_reg_8_MC_REG_CLK : X_BUF
    port map (
      I => gclk_II_FCLK_13,
      O => NlwBufferSignal_res_reg_8_MC_REG_CLK
    );
  NlwBufferBlock_res_reg_8_MC_D_IN0 : X_BUF
    port map (
      I => res_reg_8_MC_D1_315,
      O => NlwBufferSignal_res_reg_8_MC_D_IN0
    );
  NlwBufferBlock_res_reg_8_MC_D_IN1 : X_BUF
    port map (
      I => res_reg_8_MC_D2_316,
      O => NlwBufferSignal_res_reg_8_MC_D_IN1
    );
  NlwBufferBlock_res_reg_8_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => sclk_II_UIM_9,
      O => NlwBufferSignal_res_reg_8_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_res_reg_8_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => res_reg(8),
      O => NlwBufferSignal_res_reg_8_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_res_reg_8_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => reset_BUFR_98,
      O => NlwBufferSignal_res_reg_8_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_res_reg_8_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => sclk_II_UIM_9,
      O => NlwBufferSignal_res_reg_8_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_res_reg_8_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => res_reg(0),
      O => NlwBufferSignal_res_reg_8_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_res_reg_8_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => res_reg(1),
      O => NlwBufferSignal_res_reg_8_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_res_reg_8_MC_D2_PT_1_IN4 : X_BUF
    port map (
      I => res_reg(2),
      O => NlwBufferSignal_res_reg_8_MC_D2_PT_1_IN4
    );
  NlwBufferBlock_res_reg_8_MC_D2_PT_1_IN5 : X_BUF
    port map (
      I => res_reg(3),
      O => NlwBufferSignal_res_reg_8_MC_D2_PT_1_IN5
    );
  NlwBufferBlock_res_reg_8_MC_D2_PT_1_IN6 : X_BUF
    port map (
      I => res_reg(4),
      O => NlwBufferSignal_res_reg_8_MC_D2_PT_1_IN6
    );
  NlwBufferBlock_res_reg_8_MC_D2_PT_1_IN7 : X_BUF
    port map (
      I => res_reg(5),
      O => NlwBufferSignal_res_reg_8_MC_D2_PT_1_IN7
    );
  NlwBufferBlock_res_reg_8_MC_D2_PT_1_IN8 : X_BUF
    port map (
      I => res_reg(6),
      O => NlwBufferSignal_res_reg_8_MC_D2_PT_1_IN8
    );
  NlwBufferBlock_res_reg_8_MC_D2_PT_1_IN9 : X_BUF
    port map (
      I => res_reg(7),
      O => NlwBufferSignal_res_reg_8_MC_D2_PT_1_IN9
    );
  NlwBufferBlock_res_reg_8_MC_D2_PT_1_IN10 : X_BUF
    port map (
      I => tick_233,
      O => NlwBufferSignal_res_reg_8_MC_D2_PT_1_IN10
    );
  NlwBufferBlock_res_reg_8_MC_D2_PT_1_IN11 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_8_MC_D2_PT_1_IN11
    );
  NlwBufferBlock_res_reg_8_MC_D2_PT_1_IN12 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_8_MC_D2_PT_1_IN12
    );
  NlwBufferBlock_res_reg_8_MC_D2_PT_1_IN13 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_8_MC_D2_PT_1_IN13
    );
  NlwBufferBlock_res_reg_8_MC_D2_PT_1_IN14 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_8_MC_D2_PT_1_IN14
    );
  NlwBufferBlock_res_reg_8_MC_D2_PT_1_IN15 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_8_MC_D2_PT_1_IN15
    );
  NlwBufferBlock_res_reg_8_MC_D2_IN0 : X_BUF
    port map (
      I => res_reg_8_MC_D2_PT_0_317,
      O => NlwBufferSignal_res_reg_8_MC_D2_IN0
    );
  NlwBufferBlock_res_reg_8_MC_D2_IN1 : X_BUF
    port map (
      I => res_reg_8_MC_D2_PT_1_318,
      O => NlwBufferSignal_res_reg_8_MC_D2_IN1
    );
  NlwBufferBlock_res_reg_9_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => res_reg_9_MC_D_320,
      O => NlwBufferSignal_res_reg_9_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_res_reg_9_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => res_reg_9_MC_Q,
      O => NlwBufferSignal_res_reg_9_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_res_reg_9_MC_REG_IN : X_BUF
    port map (
      I => res_reg_9_MC_tsimcreated_xor_Q_321,
      O => NlwBufferSignal_res_reg_9_MC_REG_IN
    );
  NlwBufferBlock_res_reg_9_MC_REG_CLK : X_BUF
    port map (
      I => gclk_II_FCLK_13,
      O => NlwBufferSignal_res_reg_9_MC_REG_CLK
    );
  NlwBufferBlock_res_reg_9_MC_D_IN0 : X_BUF
    port map (
      I => res_reg_9_MC_D1_322,
      O => NlwBufferSignal_res_reg_9_MC_D_IN0
    );
  NlwBufferBlock_res_reg_9_MC_D_IN1 : X_BUF
    port map (
      I => res_reg_9_MC_D2_323,
      O => NlwBufferSignal_res_reg_9_MC_D_IN1
    );
  NlwBufferBlock_res_reg_9_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => sclk_II_UIM_9,
      O => NlwBufferSignal_res_reg_9_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_res_reg_9_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => res_reg(9),
      O => NlwBufferSignal_res_reg_9_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_res_reg_9_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => reset_BUFR_98,
      O => NlwBufferSignal_res_reg_9_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_res_reg_9_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => sclk_II_UIM_9,
      O => NlwBufferSignal_res_reg_9_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_res_reg_9_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => res_reg(0),
      O => NlwBufferSignal_res_reg_9_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_res_reg_9_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => res_reg(1),
      O => NlwBufferSignal_res_reg_9_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_res_reg_9_MC_D2_PT_1_IN4 : X_BUF
    port map (
      I => res_reg(2),
      O => NlwBufferSignal_res_reg_9_MC_D2_PT_1_IN4
    );
  NlwBufferBlock_res_reg_9_MC_D2_PT_1_IN5 : X_BUF
    port map (
      I => res_reg(3),
      O => NlwBufferSignal_res_reg_9_MC_D2_PT_1_IN5
    );
  NlwBufferBlock_res_reg_9_MC_D2_PT_1_IN6 : X_BUF
    port map (
      I => res_reg(4),
      O => NlwBufferSignal_res_reg_9_MC_D2_PT_1_IN6
    );
  NlwBufferBlock_res_reg_9_MC_D2_PT_1_IN7 : X_BUF
    port map (
      I => res_reg(5),
      O => NlwBufferSignal_res_reg_9_MC_D2_PT_1_IN7
    );
  NlwBufferBlock_res_reg_9_MC_D2_PT_1_IN8 : X_BUF
    port map (
      I => res_reg(6),
      O => NlwBufferSignal_res_reg_9_MC_D2_PT_1_IN8
    );
  NlwBufferBlock_res_reg_9_MC_D2_PT_1_IN9 : X_BUF
    port map (
      I => res_reg(7),
      O => NlwBufferSignal_res_reg_9_MC_D2_PT_1_IN9
    );
  NlwBufferBlock_res_reg_9_MC_D2_PT_1_IN10 : X_BUF
    port map (
      I => res_reg(8),
      O => NlwBufferSignal_res_reg_9_MC_D2_PT_1_IN10
    );
  NlwBufferBlock_res_reg_9_MC_D2_PT_1_IN11 : X_BUF
    port map (
      I => tick_233,
      O => NlwBufferSignal_res_reg_9_MC_D2_PT_1_IN11
    );
  NlwBufferBlock_res_reg_9_MC_D2_PT_1_IN12 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_9_MC_D2_PT_1_IN12
    );
  NlwBufferBlock_res_reg_9_MC_D2_PT_1_IN13 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_9_MC_D2_PT_1_IN13
    );
  NlwBufferBlock_res_reg_9_MC_D2_PT_1_IN14 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_9_MC_D2_PT_1_IN14
    );
  NlwBufferBlock_res_reg_9_MC_D2_PT_1_IN15 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_9_MC_D2_PT_1_IN15
    );
  NlwBufferBlock_res_reg_9_MC_D2_IN0 : X_BUF
    port map (
      I => res_reg_9_MC_D2_PT_0_324,
      O => NlwBufferSignal_res_reg_9_MC_D2_IN0
    );
  NlwBufferBlock_res_reg_9_MC_D2_IN1 : X_BUF
    port map (
      I => res_reg_9_MC_D2_PT_1_325,
      O => NlwBufferSignal_res_reg_9_MC_D2_IN1
    );
  NlwBufferBlock_res_reg_11_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => res_reg_11_MC_D_327,
      O => NlwBufferSignal_res_reg_11_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_res_reg_11_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => res_reg_11_MC_Q,
      O => NlwBufferSignal_res_reg_11_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_res_reg_11_MC_REG_IN : X_BUF
    port map (
      I => res_reg_11_MC_tsimcreated_xor_Q_328,
      O => NlwBufferSignal_res_reg_11_MC_REG_IN
    );
  NlwBufferBlock_res_reg_11_MC_REG_CLK : X_BUF
    port map (
      I => gclk_II_FCLK_13,
      O => NlwBufferSignal_res_reg_11_MC_REG_CLK
    );
  NlwBufferBlock_res_reg_11_MC_D_IN0 : X_BUF
    port map (
      I => res_reg_11_MC_D1_329,
      O => NlwBufferSignal_res_reg_11_MC_D_IN0
    );
  NlwBufferBlock_res_reg_11_MC_D_IN1 : X_BUF
    port map (
      I => res_reg_11_MC_D2_330,
      O => NlwBufferSignal_res_reg_11_MC_D_IN1
    );
  NlwBufferBlock_res_reg_11_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => sclk_II_UIM_9,
      O => NlwBufferSignal_res_reg_11_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_res_reg_11_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => res_reg(11),
      O => NlwBufferSignal_res_reg_11_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_res_reg_11_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => reset_BUFR_98,
      O => NlwBufferSignal_res_reg_11_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_res_reg_11_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => sclk_II_UIM_9,
      O => NlwBufferSignal_res_reg_11_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_res_reg_11_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => res_reg(0),
      O => NlwBufferSignal_res_reg_11_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_res_reg_11_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => res_reg(10),
      O => NlwBufferSignal_res_reg_11_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_res_reg_11_MC_D2_PT_1_IN4 : X_BUF
    port map (
      I => res_reg(1),
      O => NlwBufferSignal_res_reg_11_MC_D2_PT_1_IN4
    );
  NlwBufferBlock_res_reg_11_MC_D2_PT_1_IN5 : X_BUF
    port map (
      I => res_reg(2),
      O => NlwBufferSignal_res_reg_11_MC_D2_PT_1_IN5
    );
  NlwBufferBlock_res_reg_11_MC_D2_PT_1_IN6 : X_BUF
    port map (
      I => res_reg(3),
      O => NlwBufferSignal_res_reg_11_MC_D2_PT_1_IN6
    );
  NlwBufferBlock_res_reg_11_MC_D2_PT_1_IN7 : X_BUF
    port map (
      I => res_reg(4),
      O => NlwBufferSignal_res_reg_11_MC_D2_PT_1_IN7
    );
  NlwBufferBlock_res_reg_11_MC_D2_PT_1_IN8 : X_BUF
    port map (
      I => res_reg(5),
      O => NlwBufferSignal_res_reg_11_MC_D2_PT_1_IN8
    );
  NlwBufferBlock_res_reg_11_MC_D2_PT_1_IN9 : X_BUF
    port map (
      I => res_reg(6),
      O => NlwBufferSignal_res_reg_11_MC_D2_PT_1_IN9
    );
  NlwBufferBlock_res_reg_11_MC_D2_PT_1_IN10 : X_BUF
    port map (
      I => res_reg(7),
      O => NlwBufferSignal_res_reg_11_MC_D2_PT_1_IN10
    );
  NlwBufferBlock_res_reg_11_MC_D2_PT_1_IN11 : X_BUF
    port map (
      I => res_reg(8),
      O => NlwBufferSignal_res_reg_11_MC_D2_PT_1_IN11
    );
  NlwBufferBlock_res_reg_11_MC_D2_PT_1_IN12 : X_BUF
    port map (
      I => res_reg(9),
      O => NlwBufferSignal_res_reg_11_MC_D2_PT_1_IN12
    );
  NlwBufferBlock_res_reg_11_MC_D2_PT_1_IN13 : X_BUF
    port map (
      I => tick_233,
      O => NlwBufferSignal_res_reg_11_MC_D2_PT_1_IN13
    );
  NlwBufferBlock_res_reg_11_MC_D2_PT_1_IN14 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_11_MC_D2_PT_1_IN14
    );
  NlwBufferBlock_res_reg_11_MC_D2_PT_1_IN15 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_11_MC_D2_PT_1_IN15
    );
  NlwBufferBlock_res_reg_11_MC_D2_IN0 : X_BUF
    port map (
      I => res_reg_11_MC_D2_PT_0_331,
      O => NlwBufferSignal_res_reg_11_MC_D2_IN0
    );
  NlwBufferBlock_res_reg_11_MC_D2_IN1 : X_BUF
    port map (
      I => res_reg_11_MC_D2_PT_1_332,
      O => NlwBufferSignal_res_reg_11_MC_D2_IN1
    );
  NlwBufferBlock_res_reg_12_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => res_reg_12_MC_D_334,
      O => NlwBufferSignal_res_reg_12_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_res_reg_12_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => res_reg_12_MC_Q,
      O => NlwBufferSignal_res_reg_12_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_res_reg_12_MC_REG_IN : X_BUF
    port map (
      I => res_reg_12_MC_tsimcreated_xor_Q_335,
      O => NlwBufferSignal_res_reg_12_MC_REG_IN
    );
  NlwBufferBlock_res_reg_12_MC_REG_CLK : X_BUF
    port map (
      I => gclk_II_FCLK_13,
      O => NlwBufferSignal_res_reg_12_MC_REG_CLK
    );
  NlwBufferBlock_res_reg_12_MC_D_IN0 : X_BUF
    port map (
      I => res_reg_12_MC_D1_336,
      O => NlwBufferSignal_res_reg_12_MC_D_IN0
    );
  NlwBufferBlock_res_reg_12_MC_D_IN1 : X_BUF
    port map (
      I => res_reg_12_MC_D2_337,
      O => NlwBufferSignal_res_reg_12_MC_D_IN1
    );
  NlwBufferBlock_res_reg_12_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => sclk_II_UIM_9,
      O => NlwBufferSignal_res_reg_12_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_res_reg_12_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => res_reg(12),
      O => NlwBufferSignal_res_reg_12_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_res_reg_12_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => reset_BUFR_98,
      O => NlwBufferSignal_res_reg_12_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_res_reg_12_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => sclk_II_UIM_9,
      O => NlwBufferSignal_res_reg_12_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_res_reg_12_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => res_reg(0),
      O => NlwBufferSignal_res_reg_12_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_res_reg_12_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => res_reg(10),
      O => NlwBufferSignal_res_reg_12_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_res_reg_12_MC_D2_PT_1_IN4 : X_BUF
    port map (
      I => res_reg(1),
      O => NlwBufferSignal_res_reg_12_MC_D2_PT_1_IN4
    );
  NlwBufferBlock_res_reg_12_MC_D2_PT_1_IN5 : X_BUF
    port map (
      I => res_reg(2),
      O => NlwBufferSignal_res_reg_12_MC_D2_PT_1_IN5
    );
  NlwBufferBlock_res_reg_12_MC_D2_PT_1_IN6 : X_BUF
    port map (
      I => res_reg(3),
      O => NlwBufferSignal_res_reg_12_MC_D2_PT_1_IN6
    );
  NlwBufferBlock_res_reg_12_MC_D2_PT_1_IN7 : X_BUF
    port map (
      I => res_reg(4),
      O => NlwBufferSignal_res_reg_12_MC_D2_PT_1_IN7
    );
  NlwBufferBlock_res_reg_12_MC_D2_PT_1_IN8 : X_BUF
    port map (
      I => res_reg(5),
      O => NlwBufferSignal_res_reg_12_MC_D2_PT_1_IN8
    );
  NlwBufferBlock_res_reg_12_MC_D2_PT_1_IN9 : X_BUF
    port map (
      I => res_reg(6),
      O => NlwBufferSignal_res_reg_12_MC_D2_PT_1_IN9
    );
  NlwBufferBlock_res_reg_12_MC_D2_PT_1_IN10 : X_BUF
    port map (
      I => res_reg(7),
      O => NlwBufferSignal_res_reg_12_MC_D2_PT_1_IN10
    );
  NlwBufferBlock_res_reg_12_MC_D2_PT_1_IN11 : X_BUF
    port map (
      I => res_reg(8),
      O => NlwBufferSignal_res_reg_12_MC_D2_PT_1_IN11
    );
  NlwBufferBlock_res_reg_12_MC_D2_PT_1_IN12 : X_BUF
    port map (
      I => res_reg(9),
      O => NlwBufferSignal_res_reg_12_MC_D2_PT_1_IN12
    );
  NlwBufferBlock_res_reg_12_MC_D2_PT_1_IN13 : X_BUF
    port map (
      I => res_reg(11),
      O => NlwBufferSignal_res_reg_12_MC_D2_PT_1_IN13
    );
  NlwBufferBlock_res_reg_12_MC_D2_PT_1_IN14 : X_BUF
    port map (
      I => tick_233,
      O => NlwBufferSignal_res_reg_12_MC_D2_PT_1_IN14
    );
  NlwBufferBlock_res_reg_12_MC_D2_PT_1_IN15 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_12_MC_D2_PT_1_IN15
    );
  NlwBufferBlock_res_reg_12_MC_D2_IN0 : X_BUF
    port map (
      I => res_reg_12_MC_D2_PT_0_338,
      O => NlwBufferSignal_res_reg_12_MC_D2_IN0
    );
  NlwBufferBlock_res_reg_12_MC_D2_IN1 : X_BUF
    port map (
      I => res_reg_12_MC_D2_PT_1_339,
      O => NlwBufferSignal_res_reg_12_MC_D2_IN1
    );
  NlwBufferBlock_res_reg_13_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => res_reg_13_MC_D_341,
      O => NlwBufferSignal_res_reg_13_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_res_reg_13_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => res_reg_13_MC_Q,
      O => NlwBufferSignal_res_reg_13_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_res_reg_13_MC_REG_IN : X_BUF
    port map (
      I => res_reg_13_MC_tsimcreated_xor_Q_342,
      O => NlwBufferSignal_res_reg_13_MC_REG_IN
    );
  NlwBufferBlock_res_reg_13_MC_REG_CLK : X_BUF
    port map (
      I => gclk_II_FCLK_13,
      O => NlwBufferSignal_res_reg_13_MC_REG_CLK
    );
  NlwBufferBlock_res_reg_13_MC_D_IN0 : X_BUF
    port map (
      I => res_reg_13_MC_D1_343,
      O => NlwBufferSignal_res_reg_13_MC_D_IN0
    );
  NlwBufferBlock_res_reg_13_MC_D_IN1 : X_BUF
    port map (
      I => res_reg_13_MC_D2_344,
      O => NlwBufferSignal_res_reg_13_MC_D_IN1
    );
  NlwBufferBlock_res_reg_13_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => sclk_II_UIM_9,
      O => NlwBufferSignal_res_reg_13_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_res_reg_13_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => res_reg(13),
      O => NlwBufferSignal_res_reg_13_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_res_reg_13_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => reset_BUFR_98,
      O => NlwBufferSignal_res_reg_13_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_res_reg_13_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => sclk_II_UIM_9,
      O => NlwBufferSignal_res_reg_13_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_res_reg_13_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => res_reg(0),
      O => NlwBufferSignal_res_reg_13_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_res_reg_13_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => res_reg(10),
      O => NlwBufferSignal_res_reg_13_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_res_reg_13_MC_D2_PT_1_IN4 : X_BUF
    port map (
      I => res_reg(1),
      O => NlwBufferSignal_res_reg_13_MC_D2_PT_1_IN4
    );
  NlwBufferBlock_res_reg_13_MC_D2_PT_1_IN5 : X_BUF
    port map (
      I => res_reg(2),
      O => NlwBufferSignal_res_reg_13_MC_D2_PT_1_IN5
    );
  NlwBufferBlock_res_reg_13_MC_D2_PT_1_IN6 : X_BUF
    port map (
      I => res_reg(3),
      O => NlwBufferSignal_res_reg_13_MC_D2_PT_1_IN6
    );
  NlwBufferBlock_res_reg_13_MC_D2_PT_1_IN7 : X_BUF
    port map (
      I => res_reg(4),
      O => NlwBufferSignal_res_reg_13_MC_D2_PT_1_IN7
    );
  NlwBufferBlock_res_reg_13_MC_D2_PT_1_IN8 : X_BUF
    port map (
      I => res_reg(5),
      O => NlwBufferSignal_res_reg_13_MC_D2_PT_1_IN8
    );
  NlwBufferBlock_res_reg_13_MC_D2_PT_1_IN9 : X_BUF
    port map (
      I => res_reg(6),
      O => NlwBufferSignal_res_reg_13_MC_D2_PT_1_IN9
    );
  NlwBufferBlock_res_reg_13_MC_D2_PT_1_IN10 : X_BUF
    port map (
      I => res_reg(7),
      O => NlwBufferSignal_res_reg_13_MC_D2_PT_1_IN10
    );
  NlwBufferBlock_res_reg_13_MC_D2_PT_1_IN11 : X_BUF
    port map (
      I => res_reg(8),
      O => NlwBufferSignal_res_reg_13_MC_D2_PT_1_IN11
    );
  NlwBufferBlock_res_reg_13_MC_D2_PT_1_IN12 : X_BUF
    port map (
      I => res_reg(9),
      O => NlwBufferSignal_res_reg_13_MC_D2_PT_1_IN12
    );
  NlwBufferBlock_res_reg_13_MC_D2_PT_1_IN13 : X_BUF
    port map (
      I => res_reg(11),
      O => NlwBufferSignal_res_reg_13_MC_D2_PT_1_IN13
    );
  NlwBufferBlock_res_reg_13_MC_D2_PT_1_IN14 : X_BUF
    port map (
      I => res_reg(12),
      O => NlwBufferSignal_res_reg_13_MC_D2_PT_1_IN14
    );
  NlwBufferBlock_res_reg_13_MC_D2_PT_1_IN15 : X_BUF
    port map (
      I => tick_233,
      O => NlwBufferSignal_res_reg_13_MC_D2_PT_1_IN15
    );
  NlwBufferBlock_res_reg_13_MC_D2_IN0 : X_BUF
    port map (
      I => res_reg_13_MC_D2_PT_0_345,
      O => NlwBufferSignal_res_reg_13_MC_D2_IN0
    );
  NlwBufferBlock_res_reg_13_MC_D2_IN1 : X_BUF
    port map (
      I => res_reg_13_MC_D2_PT_1_346,
      O => NlwBufferSignal_res_reg_13_MC_D2_IN1
    );
  NlwBufferBlock_res_reg_14_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => res_reg_14_MC_D_348,
      O => NlwBufferSignal_res_reg_14_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_res_reg_14_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => res_reg_14_MC_Q,
      O => NlwBufferSignal_res_reg_14_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_res_reg_14_MC_REG_IN : X_BUF
    port map (
      I => res_reg_14_MC_tsimcreated_xor_Q_349,
      O => NlwBufferSignal_res_reg_14_MC_REG_IN
    );
  NlwBufferBlock_res_reg_14_MC_REG_CLK : X_BUF
    port map (
      I => gclk_II_FCLK_13,
      O => NlwBufferSignal_res_reg_14_MC_REG_CLK
    );
  NlwBufferBlock_res_reg_14_MC_D_IN0 : X_BUF
    port map (
      I => res_reg_14_MC_D1_350,
      O => NlwBufferSignal_res_reg_14_MC_D_IN0
    );
  NlwBufferBlock_res_reg_14_MC_D_IN1 : X_BUF
    port map (
      I => res_reg_14_MC_D2_351,
      O => NlwBufferSignal_res_reg_14_MC_D_IN1
    );
  NlwBufferBlock_res_reg_14_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => sclk_II_UIM_9,
      O => NlwBufferSignal_res_reg_14_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_res_reg_14_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => res_reg(14),
      O => NlwBufferSignal_res_reg_14_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_res_reg_14_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => reset_BUFR_98,
      O => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_res_reg_14_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => sclk_II_UIM_9,
      O => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_res_reg_14_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => res_reg(0),
      O => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_res_reg_14_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => res_reg(10),
      O => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_res_reg_14_MC_D2_PT_1_IN4 : X_BUF
    port map (
      I => res_reg(1),
      O => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN4
    );
  NlwBufferBlock_res_reg_14_MC_D2_PT_1_IN5 : X_BUF
    port map (
      I => res_reg(2),
      O => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN5
    );
  NlwBufferBlock_res_reg_14_MC_D2_PT_1_IN6 : X_BUF
    port map (
      I => res_reg(3),
      O => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN6
    );
  NlwBufferBlock_res_reg_14_MC_D2_PT_1_IN7 : X_BUF
    port map (
      I => res_reg(4),
      O => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN7
    );
  NlwBufferBlock_res_reg_14_MC_D2_PT_1_IN8 : X_BUF
    port map (
      I => res_reg(5),
      O => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN8
    );
  NlwBufferBlock_res_reg_14_MC_D2_PT_1_IN9 : X_BUF
    port map (
      I => res_reg(6),
      O => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN9
    );
  NlwBufferBlock_res_reg_14_MC_D2_PT_1_IN10 : X_BUF
    port map (
      I => res_reg(7),
      O => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN10
    );
  NlwBufferBlock_res_reg_14_MC_D2_PT_1_IN11 : X_BUF
    port map (
      I => res_reg(8),
      O => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN11
    );
  NlwBufferBlock_res_reg_14_MC_D2_PT_1_IN12 : X_BUF
    port map (
      I => res_reg(9),
      O => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN12
    );
  NlwBufferBlock_res_reg_14_MC_D2_PT_1_IN13 : X_BUF
    port map (
      I => res_reg(11),
      O => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN13
    );
  NlwBufferBlock_res_reg_14_MC_D2_PT_1_IN14 : X_BUF
    port map (
      I => res_reg(12),
      O => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN14
    );
  NlwBufferBlock_res_reg_14_MC_D2_PT_1_IN15 : X_BUF
    port map (
      I => res_reg(13),
      O => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN15
    );
  NlwBufferBlock_res_reg_14_MC_D2_PT_1_IN16 : X_BUF
    port map (
      I => tick_233,
      O => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN16
    );
  NlwBufferBlock_res_reg_14_MC_D2_PT_1_IN17 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN17
    );
  NlwBufferBlock_res_reg_14_MC_D2_PT_1_IN18 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN18
    );
  NlwBufferBlock_res_reg_14_MC_D2_PT_1_IN19 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN19
    );
  NlwBufferBlock_res_reg_14_MC_D2_PT_1_IN20 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN20
    );
  NlwBufferBlock_res_reg_14_MC_D2_PT_1_IN21 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN21
    );
  NlwBufferBlock_res_reg_14_MC_D2_PT_1_IN22 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN22
    );
  NlwBufferBlock_res_reg_14_MC_D2_PT_1_IN23 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN23
    );
  NlwBufferBlock_res_reg_14_MC_D2_PT_1_IN24 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN24
    );
  NlwBufferBlock_res_reg_14_MC_D2_PT_1_IN25 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN25
    );
  NlwBufferBlock_res_reg_14_MC_D2_PT_1_IN26 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN26
    );
  NlwBufferBlock_res_reg_14_MC_D2_PT_1_IN27 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN27
    );
  NlwBufferBlock_res_reg_14_MC_D2_PT_1_IN28 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN28
    );
  NlwBufferBlock_res_reg_14_MC_D2_PT_1_IN29 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN29
    );
  NlwBufferBlock_res_reg_14_MC_D2_PT_1_IN30 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN30
    );
  NlwBufferBlock_res_reg_14_MC_D2_PT_1_IN31 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN31
    );
  NlwBufferBlock_res_reg_14_MC_D2_IN0 : X_BUF
    port map (
      I => res_reg_14_MC_D2_PT_0_352,
      O => NlwBufferSignal_res_reg_14_MC_D2_IN0
    );
  NlwBufferBlock_res_reg_14_MC_D2_IN1 : X_BUF
    port map (
      I => res_reg_14_MC_D2_PT_1_353,
      O => NlwBufferSignal_res_reg_14_MC_D2_IN1
    );
  NlwBufferBlock_res_reg_15_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => res_reg_15_MC_D_355,
      O => NlwBufferSignal_res_reg_15_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_res_reg_15_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => res_reg_15_MC_Q,
      O => NlwBufferSignal_res_reg_15_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_res_reg_15_MC_REG_IN : X_BUF
    port map (
      I => res_reg_15_MC_tsimcreated_xor_Q_356,
      O => NlwBufferSignal_res_reg_15_MC_REG_IN
    );
  NlwBufferBlock_res_reg_15_MC_REG_CLK : X_BUF
    port map (
      I => gclk_II_FCLK_13,
      O => NlwBufferSignal_res_reg_15_MC_REG_CLK
    );
  NlwBufferBlock_res_reg_15_MC_D_IN0 : X_BUF
    port map (
      I => res_reg_15_MC_D1_357,
      O => NlwBufferSignal_res_reg_15_MC_D_IN0
    );
  NlwBufferBlock_res_reg_15_MC_D_IN1 : X_BUF
    port map (
      I => res_reg_15_MC_D2_358,
      O => NlwBufferSignal_res_reg_15_MC_D_IN1
    );
  NlwBufferBlock_res_reg_15_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => sclk_II_UIM_9,
      O => NlwBufferSignal_res_reg_15_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_res_reg_15_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => res_reg(15),
      O => NlwBufferSignal_res_reg_15_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_res_reg_15_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => reset_BUFR_98,
      O => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_res_reg_15_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => sclk_II_UIM_9,
      O => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_res_reg_15_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => res_reg(0),
      O => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_res_reg_15_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => res_reg(10),
      O => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_res_reg_15_MC_D2_PT_1_IN4 : X_BUF
    port map (
      I => res_reg(1),
      O => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN4
    );
  NlwBufferBlock_res_reg_15_MC_D2_PT_1_IN5 : X_BUF
    port map (
      I => res_reg(2),
      O => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN5
    );
  NlwBufferBlock_res_reg_15_MC_D2_PT_1_IN6 : X_BUF
    port map (
      I => res_reg(3),
      O => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN6
    );
  NlwBufferBlock_res_reg_15_MC_D2_PT_1_IN7 : X_BUF
    port map (
      I => res_reg(4),
      O => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN7
    );
  NlwBufferBlock_res_reg_15_MC_D2_PT_1_IN8 : X_BUF
    port map (
      I => res_reg(5),
      O => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN8
    );
  NlwBufferBlock_res_reg_15_MC_D2_PT_1_IN9 : X_BUF
    port map (
      I => res_reg(6),
      O => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN9
    );
  NlwBufferBlock_res_reg_15_MC_D2_PT_1_IN10 : X_BUF
    port map (
      I => res_reg(7),
      O => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN10
    );
  NlwBufferBlock_res_reg_15_MC_D2_PT_1_IN11 : X_BUF
    port map (
      I => res_reg(8),
      O => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN11
    );
  NlwBufferBlock_res_reg_15_MC_D2_PT_1_IN12 : X_BUF
    port map (
      I => res_reg(9),
      O => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN12
    );
  NlwBufferBlock_res_reg_15_MC_D2_PT_1_IN13 : X_BUF
    port map (
      I => res_reg(11),
      O => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN13
    );
  NlwBufferBlock_res_reg_15_MC_D2_PT_1_IN14 : X_BUF
    port map (
      I => res_reg(12),
      O => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN14
    );
  NlwBufferBlock_res_reg_15_MC_D2_PT_1_IN15 : X_BUF
    port map (
      I => res_reg(13),
      O => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN15
    );
  NlwBufferBlock_res_reg_15_MC_D2_PT_1_IN16 : X_BUF
    port map (
      I => res_reg(14),
      O => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN16
    );
  NlwBufferBlock_res_reg_15_MC_D2_PT_1_IN17 : X_BUF
    port map (
      I => tick_233,
      O => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN17
    );
  NlwBufferBlock_res_reg_15_MC_D2_PT_1_IN18 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN18
    );
  NlwBufferBlock_res_reg_15_MC_D2_PT_1_IN19 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN19
    );
  NlwBufferBlock_res_reg_15_MC_D2_PT_1_IN20 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN20
    );
  NlwBufferBlock_res_reg_15_MC_D2_PT_1_IN21 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN21
    );
  NlwBufferBlock_res_reg_15_MC_D2_PT_1_IN22 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN22
    );
  NlwBufferBlock_res_reg_15_MC_D2_PT_1_IN23 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN23
    );
  NlwBufferBlock_res_reg_15_MC_D2_PT_1_IN24 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN24
    );
  NlwBufferBlock_res_reg_15_MC_D2_PT_1_IN25 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN25
    );
  NlwBufferBlock_res_reg_15_MC_D2_PT_1_IN26 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN26
    );
  NlwBufferBlock_res_reg_15_MC_D2_PT_1_IN27 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN27
    );
  NlwBufferBlock_res_reg_15_MC_D2_PT_1_IN28 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN28
    );
  NlwBufferBlock_res_reg_15_MC_D2_PT_1_IN29 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN29
    );
  NlwBufferBlock_res_reg_15_MC_D2_PT_1_IN30 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN30
    );
  NlwBufferBlock_res_reg_15_MC_D2_PT_1_IN31 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN31
    );
  NlwBufferBlock_res_reg_15_MC_D2_IN0 : X_BUF
    port map (
      I => res_reg_15_MC_D2_PT_0_359,
      O => NlwBufferSignal_res_reg_15_MC_D2_IN0
    );
  NlwBufferBlock_res_reg_15_MC_D2_IN1 : X_BUF
    port map (
      I => res_reg_15_MC_D2_PT_1_360,
      O => NlwBufferSignal_res_reg_15_MC_D2_IN1
    );
  NlwBufferBlock_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D_IN0 : X_BUF
    port map (
      I => ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D1_363,
      O => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D_IN0
    );
  NlwBufferBlock_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D_IN1 : X_BUF
    port map (
      I => ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_364,
      O => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D_IN1
    );
  NlwBufferBlock_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D1_IN0 : X_BUF
    port map (
      I => ser_in_serial_dout_0_Q,
      O => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D1_IN0
    );
  NlwBufferBlock_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D1_IN1 : X_BUF
    port map (
      I => ser_in_serial_dout_0_Q,
      O => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D1_IN1
    );
  NlwBufferBlock_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => ser_in_serial_dout_3_Q_144,
      O => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => ser_in_serial_dout_2_Q_152,
      O => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_0_IN2 : X_BUF
    port map (
      I => ser_in_serial_dout_1_Q_159,
      O => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_0_IN2
    );
  NlwBufferBlock_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => ser_in_serial_dout_3_Q_144,
      O => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => ser_in_serial_dout_2_Q_152,
      O => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => ser_in_serial_dout_1_Q_159,
      O => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_2_IN0 : X_BUF
    port map (
      I => ser_in_serial_dout_3_Q_144,
      O => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_2_IN0
    );
  NlwBufferBlock_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_2_IN1 : X_BUF
    port map (
      I => ser_in_serial_dout_2_Q_152,
      O => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_2_IN1
    );
  NlwBufferBlock_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_2_IN2 : X_BUF
    port map (
      I => ser_in_serial_dout_1_Q_159,
      O => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_2_IN2
    );
  NlwBufferBlock_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_3_IN0 : X_BUF
    port map (
      I => ser_in_serial_dout_3_Q_144,
      O => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_3_IN0
    );
  NlwBufferBlock_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_3_IN1 : X_BUF
    port map (
      I => ser_in_serial_dout_2_Q_152,
      O => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_3_IN1
    );
  NlwBufferBlock_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_3_IN2 : X_BUF
    port map (
      I => ser_in_serial_dout_1_Q_159,
      O => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_3_IN2
    );
  NlwBufferBlock_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_IN0 : X_BUF
    port map (
      I => ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_0_365,
      O => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_IN0
    );
  NlwBufferBlock_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_IN1 : X_BUF
    port map (
      I => ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_1_366,
      O => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_IN1
    );
  NlwBufferBlock_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_IN2 : X_BUF
    port map (
      I => ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_2_367,
      O => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_IN2
    );
  NlwBufferBlock_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_IN3 : X_BUF
    port map (
      I => ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_3_368,
      O => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_IN3
    );
  NlwBufferBlock_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D_IN0 : X_BUF
    port map (
      I => ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D1_371,
      O => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D_IN0
    );
  NlwBufferBlock_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D_IN1 : X_BUF
    port map (
      I => ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_372,
      O => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D_IN1
    );
  NlwBufferBlock_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D1_IN0 : X_BUF
    port map (
      I => mode_data_0_MC_UIM_136,
      O => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D1_IN0
    );
  NlwBufferBlock_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D1_IN1 : X_BUF
    port map (
      I => mode_data_0_MC_UIM_136,
      O => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D1_IN1
    );
  NlwBufferBlock_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => mode_data_2_MC_UIM_99,
      O => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => mode_data_1_MC_UIM_126,
      O => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_0_IN2 : X_BUF
    port map (
      I => ser_in_serial_dout_7_Q_373,
      O => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_0_IN2
    );
  NlwBufferBlock_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => mode_data_2_MC_UIM_99,
      O => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => mode_data_1_MC_UIM_126,
      O => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => ser_in_serial_dout_7_Q_373,
      O => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_2_IN0 : X_BUF
    port map (
      I => mode_data_2_MC_UIM_99,
      O => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_2_IN0
    );
  NlwBufferBlock_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_2_IN1 : X_BUF
    port map (
      I => mode_data_1_MC_UIM_126,
      O => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_2_IN1
    );
  NlwBufferBlock_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_2_IN2 : X_BUF
    port map (
      I => ser_in_serial_dout_7_Q_373,
      O => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_2_IN2
    );
  NlwBufferBlock_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_3_IN0 : X_BUF
    port map (
      I => mode_data_2_MC_UIM_99,
      O => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_3_IN0
    );
  NlwBufferBlock_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_3_IN1 : X_BUF
    port map (
      I => mode_data_1_MC_UIM_126,
      O => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_3_IN1
    );
  NlwBufferBlock_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_3_IN2 : X_BUF
    port map (
      I => ser_in_serial_dout_7_Q_373,
      O => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_3_IN2
    );
  NlwBufferBlock_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_IN0 : X_BUF
    port map (
      I => ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_0_374,
      O => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_IN0
    );
  NlwBufferBlock_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_IN1 : X_BUF
    port map (
      I => ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_1_375,
      O => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_IN1
    );
  NlwBufferBlock_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_IN2 : X_BUF
    port map (
      I => ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_2_376,
      O => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_IN2
    );
  NlwBufferBlock_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_IN3 : X_BUF
    port map (
      I => ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_3_377,
      O => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_IN3
    );
  NlwBufferBlock_ser_in_serial_dout_7_MC_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => FOOBAR2_ctinst_5_146,
      O => NlwBufferSignal_ser_in_serial_dout_7_MC_tsimcreated_prld_IN0
    );
  NlwBufferBlock_ser_in_serial_dout_7_MC_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_ser_in_serial_dout_7_MC_tsimcreated_prld_IN1
    );
  NlwBufferBlock_ser_in_serial_dout_7_MC_REG_IN : X_BUF
    port map (
      I => ser_in_serial_dout_7_MC_D_380,
      O => NlwBufferSignal_ser_in_serial_dout_7_MC_REG_IN
    );
  NlwBufferBlock_ser_in_serial_dout_7_MC_REG_CLK : X_BUF
    port map (
      I => sclk_II_FCLK_10,
      O => NlwBufferSignal_ser_in_serial_dout_7_MC_REG_CLK
    );
  NlwBufferBlock_ser_in_serial_dout_7_MC_D_IN0 : X_BUF
    port map (
      I => ser_in_serial_dout_7_MC_D1_382,
      O => NlwBufferSignal_ser_in_serial_dout_7_MC_D_IN0
    );
  NlwBufferBlock_ser_in_serial_dout_7_MC_D_IN1 : X_BUF
    port map (
      I => ser_in_serial_dout_7_MC_D2_383,
      O => NlwBufferSignal_ser_in_serial_dout_7_MC_D_IN1
    );
  NlwBufferBlock_ser_in_serial_dout_7_MC_D2_IN0 : X_BUF
    port map (
      I => mode_data_2_MC_UIM_99,
      O => NlwBufferSignal_ser_in_serial_dout_7_MC_D2_IN0
    );
  NlwBufferBlock_ser_in_serial_dout_7_MC_D2_IN1 : X_BUF
    port map (
      I => mode_data_2_MC_UIM_99,
      O => NlwBufferSignal_ser_in_serial_dout_7_MC_D2_IN1
    );
  NlwBufferBlock_ser_in_serial_dout_7_MC_CE_IN0 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd1_94,
      O => NlwBufferSignal_ser_in_serial_dout_7_MC_CE_IN0
    );
  NlwBufferBlock_ser_in_serial_dout_7_MC_CE_IN1 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd2_128,
      O => NlwBufferSignal_ser_in_serial_dout_7_MC_CE_IN1
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd2_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd2_MC_D_385,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd2_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd2_MC_Q,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd2_MC_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => FOOBAR1_ctinst_5_35,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_tsimcreated_prld_IN0
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd2_MC_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_tsimcreated_prld_IN1
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd2_MC_REG_IN : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd2_MC_tsimcreated_xor_Q_386,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_REG_IN
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd2_MC_REG_CLK : X_BUF
    port map (
      I => sclk_II_FCLK_10,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_REG_CLK
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd2_MC_D_IN0 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd2_MC_D1_388,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D_IN0
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd2_MC_D_IN1 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd2_MC_D2_389,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D_IN1
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => ser_in_counter_bitcount(1),
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount(0),
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN2 : X_BUF
    port map (
      I => ser_in_counter_bitcount(2),
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN2
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN3 : X_BUF
    port map (
      I => ser_in_counter_bitcount(3),
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN3
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN4 : X_BUF
    port map (
      I => ser_in_counter_bitcount(4),
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN4
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN5 : X_BUF
    port map (
      I => ser_in_counter_bitcount(6),
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN5
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN6 : X_BUF
    port map (
      I => ser_in_counter_bitcount(5),
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN6
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN7 : X_BUF
    port map (
      I => ser_in_counter_bitcount(8),
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN7
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN8 : X_BUF
    port map (
      I => ser_in_counter_bitcount(7),
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN8
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN9 : X_BUF
    port map (
      I => ser_in_counter_bitcount(9),
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN9
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN10 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd2_128,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN10
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN11 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN11
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN12 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN12
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN13 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN13
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN14 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN14
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN15 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN15
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd1_94,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount(1),
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => ser_in_counter_bitcount(0),
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => ser_in_counter_bitcount(2),
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN4 : X_BUF
    port map (
      I => ser_in_counter_bitcount(3),
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN4
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN5 : X_BUF
    port map (
      I => ser_in_counter_bitcount(4),
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN5
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN6 : X_BUF
    port map (
      I => ser_in_counter_bitcount(6),
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN6
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN7 : X_BUF
    port map (
      I => ser_in_counter_bitcount(5),
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN7
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN8 : X_BUF
    port map (
      I => ser_in_counter_bitcount(8),
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN8
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN9 : X_BUF
    port map (
      I => ser_in_counter_bitcount(7),
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN9
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN10 : X_BUF
    port map (
      I => ser_in_counter_bitcount(9),
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN10
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN11 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd2_128,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN11
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN12 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN12
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN13 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN13
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN14 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN14
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN15 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN15
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd2_MC_D2_IN0 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_390,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_IN0
    );
  NlwBufferBlock_ser_in_counter_STATE_FSM_FFd2_MC_D2_IN1 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_391,
      O => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_2_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => ser_in_counter_bitcount_2_MC_D_393,
      O => NlwBufferSignal_ser_in_counter_bitcount_2_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_2_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount_2_MC_Q,
      O => NlwBufferSignal_ser_in_counter_bitcount_2_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_2_MC_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => FOOBAR2_ctinst_5_146,
      O => NlwBufferSignal_ser_in_counter_bitcount_2_MC_tsimcreated_prld_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_2_MC_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_ser_in_counter_bitcount_2_MC_tsimcreated_prld_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_2_MC_REG_IN : X_BUF
    port map (
      I => ser_in_counter_bitcount_2_MC_tsimcreated_xor_Q_394,
      O => NlwBufferSignal_ser_in_counter_bitcount_2_MC_REG_IN
    );
  NlwBufferBlock_ser_in_counter_bitcount_2_MC_REG_CLK : X_BUF
    port map (
      I => sclk_II_FCLK_10,
      O => NlwBufferSignal_ser_in_counter_bitcount_2_MC_REG_CLK
    );
  NlwBufferBlock_ser_in_counter_bitcount_2_MC_D_IN0 : X_BUF
    port map (
      I => ser_in_counter_bitcount_2_MC_D1_396,
      O => NlwBufferSignal_ser_in_counter_bitcount_2_MC_D_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_2_MC_D_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount_2_MC_D2_397,
      O => NlwBufferSignal_ser_in_counter_bitcount_2_MC_D_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_2_MC_D1_IN0 : X_BUF
    port map (
      I => ser_in_counter_bitcount(1),
      O => NlwBufferSignal_ser_in_counter_bitcount_2_MC_D1_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_2_MC_D1_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount(0),
      O => NlwBufferSignal_ser_in_counter_bitcount_2_MC_D1_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_3_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => ser_in_counter_bitcount_3_MC_D_399,
      O => NlwBufferSignal_ser_in_counter_bitcount_3_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_3_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount_3_MC_Q,
      O => NlwBufferSignal_ser_in_counter_bitcount_3_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_3_MC_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => FOOBAR1_ctinst_5_35,
      O => NlwBufferSignal_ser_in_counter_bitcount_3_MC_tsimcreated_prld_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_3_MC_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_ser_in_counter_bitcount_3_MC_tsimcreated_prld_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_3_MC_REG_IN : X_BUF
    port map (
      I => ser_in_counter_bitcount_3_MC_tsimcreated_xor_Q_400,
      O => NlwBufferSignal_ser_in_counter_bitcount_3_MC_REG_IN
    );
  NlwBufferBlock_ser_in_counter_bitcount_3_MC_REG_CLK : X_BUF
    port map (
      I => sclk_II_FCLK_10,
      O => NlwBufferSignal_ser_in_counter_bitcount_3_MC_REG_CLK
    );
  NlwBufferBlock_ser_in_counter_bitcount_3_MC_D_IN0 : X_BUF
    port map (
      I => ser_in_counter_bitcount_3_MC_D1_402,
      O => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_3_MC_D_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount_3_MC_D2_403,
      O => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_3_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => ser_in_counter_bitcount(1),
      O => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_3_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount(1),
      O => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_3_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => ser_in_counter_bitcount(0),
      O => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_3_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount(0),
      O => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_3_MC_D2_PT_2_IN0 : X_BUF
    port map (
      I => ser_in_counter_bitcount(2),
      O => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_2_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_3_MC_D2_PT_2_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount(2),
      O => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_2_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_3_MC_D2_PT_3_IN0 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd1_94,
      O => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_3_MC_D2_PT_3_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount(3),
      O => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_3_MC_D2_PT_3_IN2 : X_BUF
    port map (
      I => ser_in_counter_bitcount(4),
      O => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN2
    );
  NlwBufferBlock_ser_in_counter_bitcount_3_MC_D2_PT_3_IN3 : X_BUF
    port map (
      I => ser_in_counter_bitcount(6),
      O => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN3
    );
  NlwBufferBlock_ser_in_counter_bitcount_3_MC_D2_PT_3_IN4 : X_BUF
    port map (
      I => ser_in_counter_bitcount(5),
      O => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN4
    );
  NlwBufferBlock_ser_in_counter_bitcount_3_MC_D2_PT_3_IN5 : X_BUF
    port map (
      I => ser_in_counter_bitcount(8),
      O => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN5
    );
  NlwBufferBlock_ser_in_counter_bitcount_3_MC_D2_PT_3_IN6 : X_BUF
    port map (
      I => ser_in_counter_bitcount(7),
      O => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN6
    );
  NlwBufferBlock_ser_in_counter_bitcount_3_MC_D2_PT_3_IN7 : X_BUF
    port map (
      I => ser_in_counter_bitcount(9),
      O => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN7
    );
  NlwBufferBlock_ser_in_counter_bitcount_3_MC_D2_PT_3_IN8 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd2_128,
      O => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN8
    );
  NlwBufferBlock_ser_in_counter_bitcount_3_MC_D2_PT_3_IN9 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN9
    );
  NlwBufferBlock_ser_in_counter_bitcount_3_MC_D2_PT_3_IN10 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN10
    );
  NlwBufferBlock_ser_in_counter_bitcount_3_MC_D2_PT_3_IN11 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN11
    );
  NlwBufferBlock_ser_in_counter_bitcount_3_MC_D2_PT_3_IN12 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN12
    );
  NlwBufferBlock_ser_in_counter_bitcount_3_MC_D2_PT_3_IN13 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN13
    );
  NlwBufferBlock_ser_in_counter_bitcount_3_MC_D2_PT_3_IN14 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN14
    );
  NlwBufferBlock_ser_in_counter_bitcount_3_MC_D2_PT_3_IN15 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN15
    );
  NlwBufferBlock_ser_in_counter_bitcount_3_MC_D2_IN0 : X_BUF
    port map (
      I => ser_in_counter_bitcount_3_MC_D2_PT_0_404,
      O => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_3_MC_D2_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount_3_MC_D2_PT_1_405,
      O => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_3_MC_D2_IN2 : X_BUF
    port map (
      I => ser_in_counter_bitcount_3_MC_D2_PT_2_406,
      O => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_IN2
    );
  NlwBufferBlock_ser_in_counter_bitcount_3_MC_D2_IN3 : X_BUF
    port map (
      I => ser_in_counter_bitcount_3_MC_D2_PT_3_407,
      O => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_IN3
    );
  NlwBufferBlock_ser_in_counter_bitcount_4_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => ser_in_counter_bitcount_4_MC_D_409,
      O => NlwBufferSignal_ser_in_counter_bitcount_4_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_4_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount_4_MC_Q,
      O => NlwBufferSignal_ser_in_counter_bitcount_4_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_4_MC_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => FOOBAR2_ctinst_5_146,
      O => NlwBufferSignal_ser_in_counter_bitcount_4_MC_tsimcreated_prld_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_4_MC_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_ser_in_counter_bitcount_4_MC_tsimcreated_prld_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_4_MC_REG_IN : X_BUF
    port map (
      I => ser_in_counter_bitcount_4_MC_tsimcreated_xor_Q_410,
      O => NlwBufferSignal_ser_in_counter_bitcount_4_MC_REG_IN
    );
  NlwBufferBlock_ser_in_counter_bitcount_4_MC_REG_CLK : X_BUF
    port map (
      I => sclk_II_FCLK_10,
      O => NlwBufferSignal_ser_in_counter_bitcount_4_MC_REG_CLK
    );
  NlwBufferBlock_ser_in_counter_bitcount_4_MC_D_IN0 : X_BUF
    port map (
      I => ser_in_counter_bitcount_4_MC_D1_412,
      O => NlwBufferSignal_ser_in_counter_bitcount_4_MC_D_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_4_MC_D_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount_4_MC_D2_413,
      O => NlwBufferSignal_ser_in_counter_bitcount_4_MC_D_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_4_MC_D1_IN0 : X_BUF
    port map (
      I => ser_in_counter_bitcount(1),
      O => NlwBufferSignal_ser_in_counter_bitcount_4_MC_D1_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_4_MC_D1_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount(0),
      O => NlwBufferSignal_ser_in_counter_bitcount_4_MC_D1_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_4_MC_D1_IN2 : X_BUF
    port map (
      I => ser_in_counter_bitcount(2),
      O => NlwBufferSignal_ser_in_counter_bitcount_4_MC_D1_IN2
    );
  NlwBufferBlock_ser_in_counter_bitcount_4_MC_D1_IN3 : X_BUF
    port map (
      I => ser_in_counter_bitcount(3),
      O => NlwBufferSignal_ser_in_counter_bitcount_4_MC_D1_IN3
    );
  NlwBufferBlock_ser_in_counter_bitcount_6_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => ser_in_counter_bitcount_6_MC_D_415,
      O => NlwBufferSignal_ser_in_counter_bitcount_6_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_6_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount_6_MC_Q,
      O => NlwBufferSignal_ser_in_counter_bitcount_6_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_6_MC_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => FOOBAR2_ctinst_5_146,
      O => NlwBufferSignal_ser_in_counter_bitcount_6_MC_tsimcreated_prld_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_6_MC_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_ser_in_counter_bitcount_6_MC_tsimcreated_prld_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_6_MC_REG_IN : X_BUF
    port map (
      I => ser_in_counter_bitcount_6_MC_tsimcreated_xor_Q_416,
      O => NlwBufferSignal_ser_in_counter_bitcount_6_MC_REG_IN
    );
  NlwBufferBlock_ser_in_counter_bitcount_6_MC_REG_CLK : X_BUF
    port map (
      I => sclk_II_FCLK_10,
      O => NlwBufferSignal_ser_in_counter_bitcount_6_MC_REG_CLK
    );
  NlwBufferBlock_ser_in_counter_bitcount_6_MC_D_IN0 : X_BUF
    port map (
      I => ser_in_counter_bitcount_6_MC_D1_418,
      O => NlwBufferSignal_ser_in_counter_bitcount_6_MC_D_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_6_MC_D_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount_6_MC_D2_419,
      O => NlwBufferSignal_ser_in_counter_bitcount_6_MC_D_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_6_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => ser_in_counter_bitcount(1),
      O => NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_6_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount(0),
      O => NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_6_MC_D2_PT_0_IN2 : X_BUF
    port map (
      I => ser_in_counter_bitcount(2),
      O => NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_0_IN2
    );
  NlwBufferBlock_ser_in_counter_bitcount_6_MC_D2_PT_0_IN3 : X_BUF
    port map (
      I => ser_in_counter_bitcount(3),
      O => NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_0_IN3
    );
  NlwBufferBlock_ser_in_counter_bitcount_6_MC_D2_PT_0_IN4 : X_BUF
    port map (
      I => ser_in_counter_bitcount(4),
      O => NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_0_IN4
    );
  NlwBufferBlock_ser_in_counter_bitcount_6_MC_D2_PT_0_IN5 : X_BUF
    port map (
      I => ser_in_counter_bitcount(5),
      O => NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_0_IN5
    );
  NlwBufferBlock_ser_in_counter_bitcount_6_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd1_94,
      O => NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_6_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount(1),
      O => NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_6_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => ser_in_counter_bitcount(0),
      O => NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_ser_in_counter_bitcount_6_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => ser_in_counter_bitcount(2),
      O => NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_ser_in_counter_bitcount_6_MC_D2_PT_1_IN4 : X_BUF
    port map (
      I => ser_in_counter_bitcount(3),
      O => NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_1_IN4
    );
  NlwBufferBlock_ser_in_counter_bitcount_6_MC_D2_PT_1_IN5 : X_BUF
    port map (
      I => ser_in_counter_bitcount(4),
      O => NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_1_IN5
    );
  NlwBufferBlock_ser_in_counter_bitcount_6_MC_D2_PT_1_IN6 : X_BUF
    port map (
      I => ser_in_counter_bitcount(6),
      O => NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_1_IN6
    );
  NlwBufferBlock_ser_in_counter_bitcount_6_MC_D2_PT_1_IN7 : X_BUF
    port map (
      I => ser_in_counter_bitcount(8),
      O => NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_1_IN7
    );
  NlwBufferBlock_ser_in_counter_bitcount_6_MC_D2_PT_1_IN8 : X_BUF
    port map (
      I => ser_in_counter_bitcount(7),
      O => NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_1_IN8
    );
  NlwBufferBlock_ser_in_counter_bitcount_6_MC_D2_PT_1_IN9 : X_BUF
    port map (
      I => ser_in_counter_bitcount(9),
      O => NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_1_IN9
    );
  NlwBufferBlock_ser_in_counter_bitcount_6_MC_D2_PT_1_IN10 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_1_IN10
    );
  NlwBufferBlock_ser_in_counter_bitcount_6_MC_D2_PT_1_IN11 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_1_IN11
    );
  NlwBufferBlock_ser_in_counter_bitcount_6_MC_D2_PT_1_IN12 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_1_IN12
    );
  NlwBufferBlock_ser_in_counter_bitcount_6_MC_D2_PT_1_IN13 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_1_IN13
    );
  NlwBufferBlock_ser_in_counter_bitcount_6_MC_D2_PT_1_IN14 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_1_IN14
    );
  NlwBufferBlock_ser_in_counter_bitcount_6_MC_D2_PT_1_IN15 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_1_IN15
    );
  NlwBufferBlock_ser_in_counter_bitcount_6_MC_D2_IN0 : X_BUF
    port map (
      I => ser_in_counter_bitcount_6_MC_D2_PT_0_420,
      O => NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_6_MC_D2_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount_6_MC_D2_PT_1_421,
      O => NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_5_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => ser_in_counter_bitcount_5_MC_D_423,
      O => NlwBufferSignal_ser_in_counter_bitcount_5_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_5_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount_5_MC_Q,
      O => NlwBufferSignal_ser_in_counter_bitcount_5_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_5_MC_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => FOOBAR1_ctinst_5_35,
      O => NlwBufferSignal_ser_in_counter_bitcount_5_MC_tsimcreated_prld_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_5_MC_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_ser_in_counter_bitcount_5_MC_tsimcreated_prld_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_5_MC_REG_IN : X_BUF
    port map (
      I => ser_in_counter_bitcount_5_MC_tsimcreated_xor_Q_424,
      O => NlwBufferSignal_ser_in_counter_bitcount_5_MC_REG_IN
    );
  NlwBufferBlock_ser_in_counter_bitcount_5_MC_REG_CLK : X_BUF
    port map (
      I => sclk_II_FCLK_10,
      O => NlwBufferSignal_ser_in_counter_bitcount_5_MC_REG_CLK
    );
  NlwBufferBlock_ser_in_counter_bitcount_5_MC_D_IN0 : X_BUF
    port map (
      I => ser_in_counter_bitcount_5_MC_D1_426,
      O => NlwBufferSignal_ser_in_counter_bitcount_5_MC_D_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_5_MC_D_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount_5_MC_D2_427,
      O => NlwBufferSignal_ser_in_counter_bitcount_5_MC_D_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_5_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => ser_in_counter_bitcount(1),
      O => NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_5_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount(1),
      O => NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_5_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => ser_in_counter_bitcount(0),
      O => NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_5_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount(0),
      O => NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_5_MC_D2_PT_2_IN0 : X_BUF
    port map (
      I => ser_in_counter_bitcount(2),
      O => NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_PT_2_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_5_MC_D2_PT_2_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount(2),
      O => NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_PT_2_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_5_MC_D2_PT_3_IN0 : X_BUF
    port map (
      I => ser_in_counter_bitcount(3),
      O => NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_PT_3_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_5_MC_D2_PT_3_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount(3),
      O => NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_PT_3_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_5_MC_D2_PT_4_IN0 : X_BUF
    port map (
      I => ser_in_counter_bitcount(4),
      O => NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_PT_4_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_5_MC_D2_PT_4_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount(4),
      O => NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_PT_4_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_5_MC_D2_PT_5_IN0 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd1_94,
      O => NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_PT_5_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_5_MC_D2_PT_5_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount(6),
      O => NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_PT_5_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_5_MC_D2_PT_5_IN2 : X_BUF
    port map (
      I => ser_in_counter_bitcount(5),
      O => NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_PT_5_IN2
    );
  NlwBufferBlock_ser_in_counter_bitcount_5_MC_D2_PT_5_IN3 : X_BUF
    port map (
      I => ser_in_counter_bitcount(8),
      O => NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_PT_5_IN3
    );
  NlwBufferBlock_ser_in_counter_bitcount_5_MC_D2_PT_5_IN4 : X_BUF
    port map (
      I => ser_in_counter_bitcount(7),
      O => NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_PT_5_IN4
    );
  NlwBufferBlock_ser_in_counter_bitcount_5_MC_D2_PT_5_IN5 : X_BUF
    port map (
      I => ser_in_counter_bitcount(9),
      O => NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_PT_5_IN5
    );
  NlwBufferBlock_ser_in_counter_bitcount_5_MC_D2_IN0 : X_BUF
    port map (
      I => ser_in_counter_bitcount_5_MC_D2_PT_0_428,
      O => NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_5_MC_D2_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount_5_MC_D2_PT_1_429,
      O => NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_5_MC_D2_IN2 : X_BUF
    port map (
      I => ser_in_counter_bitcount_5_MC_D2_PT_2_430,
      O => NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_IN2
    );
  NlwBufferBlock_ser_in_counter_bitcount_5_MC_D2_IN3 : X_BUF
    port map (
      I => ser_in_counter_bitcount_5_MC_D2_PT_3_431,
      O => NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_IN3
    );
  NlwBufferBlock_ser_in_counter_bitcount_5_MC_D2_IN4 : X_BUF
    port map (
      I => ser_in_counter_bitcount_5_MC_D2_PT_4_432,
      O => NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_IN4
    );
  NlwBufferBlock_ser_in_counter_bitcount_5_MC_D2_IN5 : X_BUF
    port map (
      I => ser_in_counter_bitcount_5_MC_D2_PT_5_433,
      O => NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_IN5
    );
  NlwBufferBlock_ser_in_counter_bitcount_8_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => ser_in_counter_bitcount_8_MC_D_435,
      O => NlwBufferSignal_ser_in_counter_bitcount_8_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_8_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount_8_MC_Q,
      O => NlwBufferSignal_ser_in_counter_bitcount_8_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_8_MC_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => FOOBAR2_ctinst_5_146,
      O => NlwBufferSignal_ser_in_counter_bitcount_8_MC_tsimcreated_prld_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_8_MC_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_ser_in_counter_bitcount_8_MC_tsimcreated_prld_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_8_MC_REG_IN : X_BUF
    port map (
      I => ser_in_counter_bitcount_8_MC_tsimcreated_xor_Q_436,
      O => NlwBufferSignal_ser_in_counter_bitcount_8_MC_REG_IN
    );
  NlwBufferBlock_ser_in_counter_bitcount_8_MC_REG_CLK : X_BUF
    port map (
      I => sclk_II_FCLK_10,
      O => NlwBufferSignal_ser_in_counter_bitcount_8_MC_REG_CLK
    );
  NlwBufferBlock_ser_in_counter_bitcount_8_MC_D_IN0 : X_BUF
    port map (
      I => ser_in_counter_bitcount_8_MC_D1_438,
      O => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_8_MC_D_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount_8_MC_D2_439,
      O => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_8_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => ser_in_counter_bitcount(1),
      O => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_8_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount(0),
      O => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_8_MC_D2_PT_0_IN2 : X_BUF
    port map (
      I => ser_in_counter_bitcount(2),
      O => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_0_IN2
    );
  NlwBufferBlock_ser_in_counter_bitcount_8_MC_D2_PT_0_IN3 : X_BUF
    port map (
      I => ser_in_counter_bitcount(3),
      O => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_0_IN3
    );
  NlwBufferBlock_ser_in_counter_bitcount_8_MC_D2_PT_0_IN4 : X_BUF
    port map (
      I => ser_in_counter_bitcount(4),
      O => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_0_IN4
    );
  NlwBufferBlock_ser_in_counter_bitcount_8_MC_D2_PT_0_IN5 : X_BUF
    port map (
      I => ser_in_counter_bitcount(6),
      O => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_0_IN5
    );
  NlwBufferBlock_ser_in_counter_bitcount_8_MC_D2_PT_0_IN6 : X_BUF
    port map (
      I => ser_in_counter_bitcount(5),
      O => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_0_IN6
    );
  NlwBufferBlock_ser_in_counter_bitcount_8_MC_D2_PT_0_IN7 : X_BUF
    port map (
      I => ser_in_counter_bitcount(7),
      O => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_0_IN7
    );
  NlwBufferBlock_ser_in_counter_bitcount_8_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd1_94,
      O => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_8_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount(1),
      O => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_8_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => ser_in_counter_bitcount(0),
      O => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_ser_in_counter_bitcount_8_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => ser_in_counter_bitcount(2),
      O => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_ser_in_counter_bitcount_8_MC_D2_PT_1_IN4 : X_BUF
    port map (
      I => ser_in_counter_bitcount(3),
      O => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN4
    );
  NlwBufferBlock_ser_in_counter_bitcount_8_MC_D2_PT_1_IN5 : X_BUF
    port map (
      I => ser_in_counter_bitcount(4),
      O => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN5
    );
  NlwBufferBlock_ser_in_counter_bitcount_8_MC_D2_PT_1_IN6 : X_BUF
    port map (
      I => ser_in_counter_bitcount(6),
      O => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN6
    );
  NlwBufferBlock_ser_in_counter_bitcount_8_MC_D2_PT_1_IN7 : X_BUF
    port map (
      I => ser_in_counter_bitcount(5),
      O => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN7
    );
  NlwBufferBlock_ser_in_counter_bitcount_8_MC_D2_PT_1_IN8 : X_BUF
    port map (
      I => ser_in_counter_bitcount(8),
      O => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN8
    );
  NlwBufferBlock_ser_in_counter_bitcount_8_MC_D2_PT_1_IN9 : X_BUF
    port map (
      I => ser_in_counter_bitcount(7),
      O => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN9
    );
  NlwBufferBlock_ser_in_counter_bitcount_8_MC_D2_PT_1_IN10 : X_BUF
    port map (
      I => ser_in_counter_bitcount(9),
      O => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN10
    );
  NlwBufferBlock_ser_in_counter_bitcount_8_MC_D2_PT_1_IN11 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN11
    );
  NlwBufferBlock_ser_in_counter_bitcount_8_MC_D2_PT_1_IN12 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN12
    );
  NlwBufferBlock_ser_in_counter_bitcount_8_MC_D2_PT_1_IN13 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN13
    );
  NlwBufferBlock_ser_in_counter_bitcount_8_MC_D2_PT_1_IN14 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN14
    );
  NlwBufferBlock_ser_in_counter_bitcount_8_MC_D2_PT_1_IN15 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN15
    );
  NlwBufferBlock_ser_in_counter_bitcount_8_MC_D2_IN0 : X_BUF
    port map (
      I => ser_in_counter_bitcount_8_MC_D2_PT_0_440,
      O => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_8_MC_D2_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount_8_MC_D2_PT_1_441,
      O => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_7_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => ser_in_counter_bitcount_7_MC_D_443,
      O => NlwBufferSignal_ser_in_counter_bitcount_7_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_7_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount_7_MC_Q,
      O => NlwBufferSignal_ser_in_counter_bitcount_7_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_7_MC_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => FOOBAR2_ctinst_5_146,
      O => NlwBufferSignal_ser_in_counter_bitcount_7_MC_tsimcreated_prld_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_7_MC_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_ser_in_counter_bitcount_7_MC_tsimcreated_prld_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_7_MC_REG_IN : X_BUF
    port map (
      I => ser_in_counter_bitcount_7_MC_tsimcreated_xor_Q_444,
      O => NlwBufferSignal_ser_in_counter_bitcount_7_MC_REG_IN
    );
  NlwBufferBlock_ser_in_counter_bitcount_7_MC_REG_CLK : X_BUF
    port map (
      I => sclk_II_FCLK_10,
      O => NlwBufferSignal_ser_in_counter_bitcount_7_MC_REG_CLK
    );
  NlwBufferBlock_ser_in_counter_bitcount_7_MC_D_IN0 : X_BUF
    port map (
      I => ser_in_counter_bitcount_7_MC_D1_446,
      O => NlwBufferSignal_ser_in_counter_bitcount_7_MC_D_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_7_MC_D_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount_7_MC_D2_447,
      O => NlwBufferSignal_ser_in_counter_bitcount_7_MC_D_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_7_MC_D1_IN0 : X_BUF
    port map (
      I => ser_in_counter_bitcount(1),
      O => NlwBufferSignal_ser_in_counter_bitcount_7_MC_D1_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_7_MC_D1_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount(0),
      O => NlwBufferSignal_ser_in_counter_bitcount_7_MC_D1_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_7_MC_D1_IN2 : X_BUF
    port map (
      I => ser_in_counter_bitcount(2),
      O => NlwBufferSignal_ser_in_counter_bitcount_7_MC_D1_IN2
    );
  NlwBufferBlock_ser_in_counter_bitcount_7_MC_D1_IN3 : X_BUF
    port map (
      I => ser_in_counter_bitcount(3),
      O => NlwBufferSignal_ser_in_counter_bitcount_7_MC_D1_IN3
    );
  NlwBufferBlock_ser_in_counter_bitcount_7_MC_D1_IN4 : X_BUF
    port map (
      I => ser_in_counter_bitcount(4),
      O => NlwBufferSignal_ser_in_counter_bitcount_7_MC_D1_IN4
    );
  NlwBufferBlock_ser_in_counter_bitcount_7_MC_D1_IN5 : X_BUF
    port map (
      I => ser_in_counter_bitcount(6),
      O => NlwBufferSignal_ser_in_counter_bitcount_7_MC_D1_IN5
    );
  NlwBufferBlock_ser_in_counter_bitcount_7_MC_D1_IN6 : X_BUF
    port map (
      I => ser_in_counter_bitcount(5),
      O => NlwBufferSignal_ser_in_counter_bitcount_7_MC_D1_IN6
    );
  NlwBufferBlock_ser_in_counter_bitcount_9_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => ser_in_counter_bitcount_9_MC_D_449,
      O => NlwBufferSignal_ser_in_counter_bitcount_9_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_9_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount_9_MC_Q,
      O => NlwBufferSignal_ser_in_counter_bitcount_9_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_9_MC_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => FOOBAR2_ctinst_5_146,
      O => NlwBufferSignal_ser_in_counter_bitcount_9_MC_tsimcreated_prld_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_9_MC_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_ser_in_counter_bitcount_9_MC_tsimcreated_prld_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_9_MC_REG_IN : X_BUF
    port map (
      I => ser_in_counter_bitcount_9_MC_tsimcreated_xor_Q_450,
      O => NlwBufferSignal_ser_in_counter_bitcount_9_MC_REG_IN
    );
  NlwBufferBlock_ser_in_counter_bitcount_9_MC_REG_CLK : X_BUF
    port map (
      I => sclk_II_FCLK_10,
      O => NlwBufferSignal_ser_in_counter_bitcount_9_MC_REG_CLK
    );
  NlwBufferBlock_ser_in_counter_bitcount_9_MC_D_IN0 : X_BUF
    port map (
      I => ser_in_counter_bitcount_9_MC_D1_452,
      O => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_9_MC_D_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount_9_MC_D2_453,
      O => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_9_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => ser_in_counter_bitcount(1),
      O => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_9_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount(0),
      O => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_9_MC_D2_PT_0_IN2 : X_BUF
    port map (
      I => ser_in_counter_bitcount(2),
      O => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_0_IN2
    );
  NlwBufferBlock_ser_in_counter_bitcount_9_MC_D2_PT_0_IN3 : X_BUF
    port map (
      I => ser_in_counter_bitcount(3),
      O => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_0_IN3
    );
  NlwBufferBlock_ser_in_counter_bitcount_9_MC_D2_PT_0_IN4 : X_BUF
    port map (
      I => ser_in_counter_bitcount(4),
      O => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_0_IN4
    );
  NlwBufferBlock_ser_in_counter_bitcount_9_MC_D2_PT_0_IN5 : X_BUF
    port map (
      I => ser_in_counter_bitcount(6),
      O => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_0_IN5
    );
  NlwBufferBlock_ser_in_counter_bitcount_9_MC_D2_PT_0_IN6 : X_BUF
    port map (
      I => ser_in_counter_bitcount(5),
      O => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_0_IN6
    );
  NlwBufferBlock_ser_in_counter_bitcount_9_MC_D2_PT_0_IN7 : X_BUF
    port map (
      I => ser_in_counter_bitcount(8),
      O => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_0_IN7
    );
  NlwBufferBlock_ser_in_counter_bitcount_9_MC_D2_PT_0_IN8 : X_BUF
    port map (
      I => ser_in_counter_bitcount(7),
      O => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_0_IN8
    );
  NlwBufferBlock_ser_in_counter_bitcount_9_MC_D2_PT_0_IN9 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_0_IN9
    );
  NlwBufferBlock_ser_in_counter_bitcount_9_MC_D2_PT_0_IN10 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_0_IN10
    );
  NlwBufferBlock_ser_in_counter_bitcount_9_MC_D2_PT_0_IN11 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_0_IN11
    );
  NlwBufferBlock_ser_in_counter_bitcount_9_MC_D2_PT_0_IN12 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_0_IN12
    );
  NlwBufferBlock_ser_in_counter_bitcount_9_MC_D2_PT_0_IN13 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_0_IN13
    );
  NlwBufferBlock_ser_in_counter_bitcount_9_MC_D2_PT_0_IN14 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_0_IN14
    );
  NlwBufferBlock_ser_in_counter_bitcount_9_MC_D2_PT_0_IN15 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_0_IN15
    );
  NlwBufferBlock_ser_in_counter_bitcount_9_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd1_94,
      O => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_9_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount(1),
      O => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_ser_in_counter_bitcount_9_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => ser_in_counter_bitcount(0),
      O => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_ser_in_counter_bitcount_9_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => ser_in_counter_bitcount(2),
      O => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_ser_in_counter_bitcount_9_MC_D2_PT_1_IN4 : X_BUF
    port map (
      I => ser_in_counter_bitcount(3),
      O => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN4
    );
  NlwBufferBlock_ser_in_counter_bitcount_9_MC_D2_PT_1_IN5 : X_BUF
    port map (
      I => ser_in_counter_bitcount(4),
      O => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN5
    );
  NlwBufferBlock_ser_in_counter_bitcount_9_MC_D2_PT_1_IN6 : X_BUF
    port map (
      I => ser_in_counter_bitcount(6),
      O => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN6
    );
  NlwBufferBlock_ser_in_counter_bitcount_9_MC_D2_PT_1_IN7 : X_BUF
    port map (
      I => ser_in_counter_bitcount(5),
      O => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN7
    );
  NlwBufferBlock_ser_in_counter_bitcount_9_MC_D2_PT_1_IN8 : X_BUF
    port map (
      I => ser_in_counter_bitcount(8),
      O => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN8
    );
  NlwBufferBlock_ser_in_counter_bitcount_9_MC_D2_PT_1_IN9 : X_BUF
    port map (
      I => ser_in_counter_bitcount(7),
      O => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN9
    );
  NlwBufferBlock_ser_in_counter_bitcount_9_MC_D2_PT_1_IN10 : X_BUF
    port map (
      I => ser_in_counter_bitcount(9),
      O => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN10
    );
  NlwBufferBlock_ser_in_counter_bitcount_9_MC_D2_PT_1_IN11 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN11
    );
  NlwBufferBlock_ser_in_counter_bitcount_9_MC_D2_PT_1_IN12 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN12
    );
  NlwBufferBlock_ser_in_counter_bitcount_9_MC_D2_PT_1_IN13 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN13
    );
  NlwBufferBlock_ser_in_counter_bitcount_9_MC_D2_PT_1_IN14 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN14
    );
  NlwBufferBlock_ser_in_counter_bitcount_9_MC_D2_PT_1_IN15 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN15
    );
  NlwBufferBlock_ser_in_counter_bitcount_9_MC_D2_IN0 : X_BUF
    port map (
      I => ser_in_counter_bitcount_9_MC_D2_PT_0_454,
      O => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_IN0
    );
  NlwBufferBlock_ser_in_counter_bitcount_9_MC_D2_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount_9_MC_D2_PT_1_455,
      O => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_IN1
    );
  NlwBufferBlock_N_PZ_448_MC_D_IN0 : X_BUF
    port map (
      I => N_PZ_448_MC_D1_458,
      O => NlwBufferSignal_N_PZ_448_MC_D_IN0
    );
  NlwBufferBlock_N_PZ_448_MC_D_IN1 : X_BUF
    port map (
      I => N_PZ_448_MC_D2_459,
      O => NlwBufferSignal_N_PZ_448_MC_D_IN1
    );
  NlwBufferBlock_N_PZ_448_MC_D1_IN0 : X_BUF
    port map (
      I => mode_data_1_MC_UIM_126,
      O => NlwBufferSignal_N_PZ_448_MC_D1_IN0
    );
  NlwBufferBlock_N_PZ_448_MC_D1_IN1 : X_BUF
    port map (
      I => mode_data_0_MC_UIM_136,
      O => NlwBufferSignal_N_PZ_448_MC_D1_IN1
    );
  NlwBufferBlock_ser_in_counter_latchcount_1_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => ser_in_counter_latchcount_1_MC_D_461,
      O => NlwBufferSignal_ser_in_counter_latchcount_1_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_ser_in_counter_latchcount_1_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => ser_in_counter_latchcount_1_MC_Q,
      O => NlwBufferSignal_ser_in_counter_latchcount_1_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_ser_in_counter_latchcount_1_MC_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => FOOBAR1_ctinst_5_35,
      O => NlwBufferSignal_ser_in_counter_latchcount_1_MC_tsimcreated_prld_IN0
    );
  NlwBufferBlock_ser_in_counter_latchcount_1_MC_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_ser_in_counter_latchcount_1_MC_tsimcreated_prld_IN1
    );
  NlwBufferBlock_ser_in_counter_latchcount_1_MC_REG_IN : X_BUF
    port map (
      I => ser_in_counter_latchcount_1_MC_tsimcreated_xor_Q_462,
      O => NlwBufferSignal_ser_in_counter_latchcount_1_MC_REG_IN
    );
  NlwBufferBlock_ser_in_counter_latchcount_1_MC_REG_CLK : X_BUF
    port map (
      I => sclk_II_FCLK_10,
      O => NlwBufferSignal_ser_in_counter_latchcount_1_MC_REG_CLK
    );
  NlwBufferBlock_ser_in_counter_latchcount_1_MC_D_IN0 : X_BUF
    port map (
      I => ser_in_counter_latchcount_1_MC_D1_464,
      O => NlwBufferSignal_ser_in_counter_latchcount_1_MC_D_IN0
    );
  NlwBufferBlock_ser_in_counter_latchcount_1_MC_D_IN1 : X_BUF
    port map (
      I => ser_in_counter_latchcount_1_MC_D2_465,
      O => NlwBufferSignal_ser_in_counter_latchcount_1_MC_D_IN1
    );
  NlwBufferBlock_ser_in_counter_latchcount_1_MC_D1_IN0 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd1_94,
      O => NlwBufferSignal_ser_in_counter_latchcount_1_MC_D1_IN0
    );
  NlwBufferBlock_ser_in_counter_latchcount_1_MC_D1_IN1 : X_BUF
    port map (
      I => ser_in_counter_latchcount(0),
      O => NlwBufferSignal_ser_in_counter_latchcount_1_MC_D1_IN1
    );
  NlwBufferBlock_ser_in_counter_latchcount_1_MC_D1_IN2 : X_BUF
    port map (
      I => ser_in_counter_bitcount(1),
      O => NlwBufferSignal_ser_in_counter_latchcount_1_MC_D1_IN2
    );
  NlwBufferBlock_ser_in_counter_latchcount_1_MC_D1_IN3 : X_BUF
    port map (
      I => ser_in_counter_bitcount(0),
      O => NlwBufferSignal_ser_in_counter_latchcount_1_MC_D1_IN3
    );
  NlwBufferBlock_ser_in_counter_latchcount_1_MC_D1_IN4 : X_BUF
    port map (
      I => ser_in_counter_bitcount(2),
      O => NlwBufferSignal_ser_in_counter_latchcount_1_MC_D1_IN4
    );
  NlwBufferBlock_ser_in_counter_latchcount_1_MC_D1_IN5 : X_BUF
    port map (
      I => ser_in_counter_bitcount(3),
      O => NlwBufferSignal_ser_in_counter_latchcount_1_MC_D1_IN5
    );
  NlwBufferBlock_ser_in_counter_latchcount_1_MC_D1_IN6 : X_BUF
    port map (
      I => ser_in_counter_bitcount(4),
      O => NlwBufferSignal_ser_in_counter_latchcount_1_MC_D1_IN6
    );
  NlwBufferBlock_ser_in_counter_latchcount_1_MC_D1_IN7 : X_BUF
    port map (
      I => ser_in_counter_bitcount(6),
      O => NlwBufferSignal_ser_in_counter_latchcount_1_MC_D1_IN7
    );
  NlwBufferBlock_ser_in_counter_latchcount_1_MC_D1_IN8 : X_BUF
    port map (
      I => ser_in_counter_bitcount(5),
      O => NlwBufferSignal_ser_in_counter_latchcount_1_MC_D1_IN8
    );
  NlwBufferBlock_ser_in_counter_latchcount_1_MC_D1_IN9 : X_BUF
    port map (
      I => ser_in_counter_bitcount(8),
      O => NlwBufferSignal_ser_in_counter_latchcount_1_MC_D1_IN9
    );
  NlwBufferBlock_ser_in_counter_latchcount_1_MC_D1_IN10 : X_BUF
    port map (
      I => ser_in_counter_bitcount(7),
      O => NlwBufferSignal_ser_in_counter_latchcount_1_MC_D1_IN10
    );
  NlwBufferBlock_ser_in_counter_latchcount_1_MC_D1_IN11 : X_BUF
    port map (
      I => ser_in_counter_bitcount(9),
      O => NlwBufferSignal_ser_in_counter_latchcount_1_MC_D1_IN11
    );
  NlwBufferBlock_ser_in_counter_latchcount_1_MC_D1_IN12 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_latchcount_1_MC_D1_IN12
    );
  NlwBufferBlock_ser_in_counter_latchcount_1_MC_D1_IN13 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_latchcount_1_MC_D1_IN13
    );
  NlwBufferBlock_ser_in_counter_latchcount_1_MC_D1_IN14 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_latchcount_1_MC_D1_IN14
    );
  NlwBufferBlock_ser_in_counter_latchcount_1_MC_D1_IN15 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_latchcount_1_MC_D1_IN15
    );
  NlwBufferBlock_ser_in_counter_latchcount_2_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => ser_in_counter_latchcount_2_MC_D_467,
      O => NlwBufferSignal_ser_in_counter_latchcount_2_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_ser_in_counter_latchcount_2_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => ser_in_counter_latchcount_2_MC_Q,
      O => NlwBufferSignal_ser_in_counter_latchcount_2_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_ser_in_counter_latchcount_2_MC_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => FOOBAR1_ctinst_5_35,
      O => NlwBufferSignal_ser_in_counter_latchcount_2_MC_tsimcreated_prld_IN0
    );
  NlwBufferBlock_ser_in_counter_latchcount_2_MC_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_ser_in_counter_latchcount_2_MC_tsimcreated_prld_IN1
    );
  NlwBufferBlock_ser_in_counter_latchcount_2_MC_REG_IN : X_BUF
    port map (
      I => ser_in_counter_latchcount_2_MC_tsimcreated_xor_Q_468,
      O => NlwBufferSignal_ser_in_counter_latchcount_2_MC_REG_IN
    );
  NlwBufferBlock_ser_in_counter_latchcount_2_MC_REG_CLK : X_BUF
    port map (
      I => sclk_II_FCLK_10,
      O => NlwBufferSignal_ser_in_counter_latchcount_2_MC_REG_CLK
    );
  NlwBufferBlock_ser_in_counter_latchcount_2_MC_D_IN0 : X_BUF
    port map (
      I => ser_in_counter_latchcount_2_MC_D1_470,
      O => NlwBufferSignal_ser_in_counter_latchcount_2_MC_D_IN0
    );
  NlwBufferBlock_ser_in_counter_latchcount_2_MC_D_IN1 : X_BUF
    port map (
      I => ser_in_counter_latchcount_2_MC_D2_471,
      O => NlwBufferSignal_ser_in_counter_latchcount_2_MC_D_IN1
    );
  NlwBufferBlock_ser_in_counter_latchcount_2_MC_D1_IN0 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd1_94,
      O => NlwBufferSignal_ser_in_counter_latchcount_2_MC_D1_IN0
    );
  NlwBufferBlock_ser_in_counter_latchcount_2_MC_D1_IN1 : X_BUF
    port map (
      I => ser_in_counter_latchcount(0),
      O => NlwBufferSignal_ser_in_counter_latchcount_2_MC_D1_IN1
    );
  NlwBufferBlock_ser_in_counter_latchcount_2_MC_D1_IN2 : X_BUF
    port map (
      I => ser_in_counter_bitcount(1),
      O => NlwBufferSignal_ser_in_counter_latchcount_2_MC_D1_IN2
    );
  NlwBufferBlock_ser_in_counter_latchcount_2_MC_D1_IN3 : X_BUF
    port map (
      I => ser_in_counter_bitcount(0),
      O => NlwBufferSignal_ser_in_counter_latchcount_2_MC_D1_IN3
    );
  NlwBufferBlock_ser_in_counter_latchcount_2_MC_D1_IN4 : X_BUF
    port map (
      I => ser_in_counter_bitcount(2),
      O => NlwBufferSignal_ser_in_counter_latchcount_2_MC_D1_IN4
    );
  NlwBufferBlock_ser_in_counter_latchcount_2_MC_D1_IN5 : X_BUF
    port map (
      I => ser_in_counter_bitcount(3),
      O => NlwBufferSignal_ser_in_counter_latchcount_2_MC_D1_IN5
    );
  NlwBufferBlock_ser_in_counter_latchcount_2_MC_D1_IN6 : X_BUF
    port map (
      I => ser_in_counter_bitcount(4),
      O => NlwBufferSignal_ser_in_counter_latchcount_2_MC_D1_IN6
    );
  NlwBufferBlock_ser_in_counter_latchcount_2_MC_D1_IN7 : X_BUF
    port map (
      I => ser_in_counter_bitcount(6),
      O => NlwBufferSignal_ser_in_counter_latchcount_2_MC_D1_IN7
    );
  NlwBufferBlock_ser_in_counter_latchcount_2_MC_D1_IN8 : X_BUF
    port map (
      I => ser_in_counter_bitcount(5),
      O => NlwBufferSignal_ser_in_counter_latchcount_2_MC_D1_IN8
    );
  NlwBufferBlock_ser_in_counter_latchcount_2_MC_D1_IN9 : X_BUF
    port map (
      I => ser_in_counter_bitcount(8),
      O => NlwBufferSignal_ser_in_counter_latchcount_2_MC_D1_IN9
    );
  NlwBufferBlock_ser_in_counter_latchcount_2_MC_D1_IN10 : X_BUF
    port map (
      I => ser_in_counter_bitcount(7),
      O => NlwBufferSignal_ser_in_counter_latchcount_2_MC_D1_IN10
    );
  NlwBufferBlock_ser_in_counter_latchcount_2_MC_D1_IN11 : X_BUF
    port map (
      I => ser_in_counter_bitcount(9),
      O => NlwBufferSignal_ser_in_counter_latchcount_2_MC_D1_IN11
    );
  NlwBufferBlock_ser_in_counter_latchcount_2_MC_D1_IN12 : X_BUF
    port map (
      I => ser_in_counter_latchcount(1),
      O => NlwBufferSignal_ser_in_counter_latchcount_2_MC_D1_IN12
    );
  NlwBufferBlock_ser_in_counter_latchcount_2_MC_D1_IN13 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_latchcount_2_MC_D1_IN13
    );
  NlwBufferBlock_ser_in_counter_latchcount_2_MC_D1_IN14 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_latchcount_2_MC_D1_IN14
    );
  NlwBufferBlock_ser_in_counter_latchcount_2_MC_D1_IN15 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_latchcount_2_MC_D1_IN15
    );
  NlwBufferBlock_ser_in_counter_latchcount_3_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => ser_in_counter_latchcount_3_MC_D_473,
      O => NlwBufferSignal_ser_in_counter_latchcount_3_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_ser_in_counter_latchcount_3_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => ser_in_counter_latchcount_3_MC_Q,
      O => NlwBufferSignal_ser_in_counter_latchcount_3_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_ser_in_counter_latchcount_3_MC_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => FOOBAR1_ctinst_5_35,
      O => NlwBufferSignal_ser_in_counter_latchcount_3_MC_tsimcreated_prld_IN0
    );
  NlwBufferBlock_ser_in_counter_latchcount_3_MC_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_ser_in_counter_latchcount_3_MC_tsimcreated_prld_IN1
    );
  NlwBufferBlock_ser_in_counter_latchcount_3_MC_REG_IN : X_BUF
    port map (
      I => ser_in_counter_latchcount_3_MC_tsimcreated_xor_Q_474,
      O => NlwBufferSignal_ser_in_counter_latchcount_3_MC_REG_IN
    );
  NlwBufferBlock_ser_in_counter_latchcount_3_MC_REG_CLK : X_BUF
    port map (
      I => sclk_II_FCLK_10,
      O => NlwBufferSignal_ser_in_counter_latchcount_3_MC_REG_CLK
    );
  NlwBufferBlock_ser_in_counter_latchcount_3_MC_D_IN0 : X_BUF
    port map (
      I => ser_in_counter_latchcount_3_MC_D1_476,
      O => NlwBufferSignal_ser_in_counter_latchcount_3_MC_D_IN0
    );
  NlwBufferBlock_ser_in_counter_latchcount_3_MC_D_IN1 : X_BUF
    port map (
      I => ser_in_counter_latchcount_3_MC_D2_477,
      O => NlwBufferSignal_ser_in_counter_latchcount_3_MC_D_IN1
    );
  NlwBufferBlock_ser_in_counter_latchcount_3_MC_D1_IN0 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd1_94,
      O => NlwBufferSignal_ser_in_counter_latchcount_3_MC_D1_IN0
    );
  NlwBufferBlock_ser_in_counter_latchcount_3_MC_D1_IN1 : X_BUF
    port map (
      I => ser_in_counter_latchcount(0),
      O => NlwBufferSignal_ser_in_counter_latchcount_3_MC_D1_IN1
    );
  NlwBufferBlock_ser_in_counter_latchcount_3_MC_D1_IN2 : X_BUF
    port map (
      I => ser_in_counter_bitcount(1),
      O => NlwBufferSignal_ser_in_counter_latchcount_3_MC_D1_IN2
    );
  NlwBufferBlock_ser_in_counter_latchcount_3_MC_D1_IN3 : X_BUF
    port map (
      I => ser_in_counter_bitcount(0),
      O => NlwBufferSignal_ser_in_counter_latchcount_3_MC_D1_IN3
    );
  NlwBufferBlock_ser_in_counter_latchcount_3_MC_D1_IN4 : X_BUF
    port map (
      I => ser_in_counter_bitcount(2),
      O => NlwBufferSignal_ser_in_counter_latchcount_3_MC_D1_IN4
    );
  NlwBufferBlock_ser_in_counter_latchcount_3_MC_D1_IN5 : X_BUF
    port map (
      I => ser_in_counter_bitcount(3),
      O => NlwBufferSignal_ser_in_counter_latchcount_3_MC_D1_IN5
    );
  NlwBufferBlock_ser_in_counter_latchcount_3_MC_D1_IN6 : X_BUF
    port map (
      I => ser_in_counter_bitcount(4),
      O => NlwBufferSignal_ser_in_counter_latchcount_3_MC_D1_IN6
    );
  NlwBufferBlock_ser_in_counter_latchcount_3_MC_D1_IN7 : X_BUF
    port map (
      I => ser_in_counter_bitcount(6),
      O => NlwBufferSignal_ser_in_counter_latchcount_3_MC_D1_IN7
    );
  NlwBufferBlock_ser_in_counter_latchcount_3_MC_D1_IN8 : X_BUF
    port map (
      I => ser_in_counter_bitcount(5),
      O => NlwBufferSignal_ser_in_counter_latchcount_3_MC_D1_IN8
    );
  NlwBufferBlock_ser_in_counter_latchcount_3_MC_D1_IN9 : X_BUF
    port map (
      I => ser_in_counter_bitcount(8),
      O => NlwBufferSignal_ser_in_counter_latchcount_3_MC_D1_IN9
    );
  NlwBufferBlock_ser_in_counter_latchcount_3_MC_D1_IN10 : X_BUF
    port map (
      I => ser_in_counter_bitcount(7),
      O => NlwBufferSignal_ser_in_counter_latchcount_3_MC_D1_IN10
    );
  NlwBufferBlock_ser_in_counter_latchcount_3_MC_D1_IN11 : X_BUF
    port map (
      I => ser_in_counter_bitcount(9),
      O => NlwBufferSignal_ser_in_counter_latchcount_3_MC_D1_IN11
    );
  NlwBufferBlock_ser_in_counter_latchcount_3_MC_D1_IN12 : X_BUF
    port map (
      I => ser_in_counter_latchcount(1),
      O => NlwBufferSignal_ser_in_counter_latchcount_3_MC_D1_IN12
    );
  NlwBufferBlock_ser_in_counter_latchcount_3_MC_D1_IN13 : X_BUF
    port map (
      I => ser_in_counter_latchcount(2),
      O => NlwBufferSignal_ser_in_counter_latchcount_3_MC_D1_IN13
    );
  NlwBufferBlock_ser_in_counter_latchcount_3_MC_D1_IN14 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_latchcount_3_MC_D1_IN14
    );
  NlwBufferBlock_ser_in_counter_latchcount_3_MC_D1_IN15 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_latchcount_3_MC_D1_IN15
    );
  NlwBufferBlock_ser_in_counter_latchcount_4_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => ser_in_counter_latchcount_4_MC_D_479,
      O => NlwBufferSignal_ser_in_counter_latchcount_4_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_ser_in_counter_latchcount_4_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => ser_in_counter_latchcount_4_MC_Q,
      O => NlwBufferSignal_ser_in_counter_latchcount_4_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_ser_in_counter_latchcount_4_MC_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => FOOBAR1_ctinst_5_35,
      O => NlwBufferSignal_ser_in_counter_latchcount_4_MC_tsimcreated_prld_IN0
    );
  NlwBufferBlock_ser_in_counter_latchcount_4_MC_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_ser_in_counter_latchcount_4_MC_tsimcreated_prld_IN1
    );
  NlwBufferBlock_ser_in_counter_latchcount_4_MC_REG_IN : X_BUF
    port map (
      I => ser_in_counter_latchcount_4_MC_tsimcreated_xor_Q_480,
      O => NlwBufferSignal_ser_in_counter_latchcount_4_MC_REG_IN
    );
  NlwBufferBlock_ser_in_counter_latchcount_4_MC_REG_CLK : X_BUF
    port map (
      I => sclk_II_FCLK_10,
      O => NlwBufferSignal_ser_in_counter_latchcount_4_MC_REG_CLK
    );
  NlwBufferBlock_ser_in_counter_latchcount_4_MC_D_IN0 : X_BUF
    port map (
      I => ser_in_counter_latchcount_4_MC_D1_482,
      O => NlwBufferSignal_ser_in_counter_latchcount_4_MC_D_IN0
    );
  NlwBufferBlock_ser_in_counter_latchcount_4_MC_D_IN1 : X_BUF
    port map (
      I => ser_in_counter_latchcount_4_MC_D2_483,
      O => NlwBufferSignal_ser_in_counter_latchcount_4_MC_D_IN1
    );
  NlwBufferBlock_ser_in_counter_latchcount_4_MC_D1_IN0 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd1_94,
      O => NlwBufferSignal_ser_in_counter_latchcount_4_MC_D1_IN0
    );
  NlwBufferBlock_ser_in_counter_latchcount_4_MC_D1_IN1 : X_BUF
    port map (
      I => ser_in_counter_latchcount(0),
      O => NlwBufferSignal_ser_in_counter_latchcount_4_MC_D1_IN1
    );
  NlwBufferBlock_ser_in_counter_latchcount_4_MC_D1_IN2 : X_BUF
    port map (
      I => ser_in_counter_bitcount(1),
      O => NlwBufferSignal_ser_in_counter_latchcount_4_MC_D1_IN2
    );
  NlwBufferBlock_ser_in_counter_latchcount_4_MC_D1_IN3 : X_BUF
    port map (
      I => ser_in_counter_bitcount(0),
      O => NlwBufferSignal_ser_in_counter_latchcount_4_MC_D1_IN3
    );
  NlwBufferBlock_ser_in_counter_latchcount_4_MC_D1_IN4 : X_BUF
    port map (
      I => ser_in_counter_bitcount(2),
      O => NlwBufferSignal_ser_in_counter_latchcount_4_MC_D1_IN4
    );
  NlwBufferBlock_ser_in_counter_latchcount_4_MC_D1_IN5 : X_BUF
    port map (
      I => ser_in_counter_bitcount(3),
      O => NlwBufferSignal_ser_in_counter_latchcount_4_MC_D1_IN5
    );
  NlwBufferBlock_ser_in_counter_latchcount_4_MC_D1_IN6 : X_BUF
    port map (
      I => ser_in_counter_bitcount(4),
      O => NlwBufferSignal_ser_in_counter_latchcount_4_MC_D1_IN6
    );
  NlwBufferBlock_ser_in_counter_latchcount_4_MC_D1_IN7 : X_BUF
    port map (
      I => ser_in_counter_bitcount(6),
      O => NlwBufferSignal_ser_in_counter_latchcount_4_MC_D1_IN7
    );
  NlwBufferBlock_ser_in_counter_latchcount_4_MC_D1_IN8 : X_BUF
    port map (
      I => ser_in_counter_bitcount(5),
      O => NlwBufferSignal_ser_in_counter_latchcount_4_MC_D1_IN8
    );
  NlwBufferBlock_ser_in_counter_latchcount_4_MC_D1_IN9 : X_BUF
    port map (
      I => ser_in_counter_bitcount(8),
      O => NlwBufferSignal_ser_in_counter_latchcount_4_MC_D1_IN9
    );
  NlwBufferBlock_ser_in_counter_latchcount_4_MC_D1_IN10 : X_BUF
    port map (
      I => ser_in_counter_bitcount(7),
      O => NlwBufferSignal_ser_in_counter_latchcount_4_MC_D1_IN10
    );
  NlwBufferBlock_ser_in_counter_latchcount_4_MC_D1_IN11 : X_BUF
    port map (
      I => ser_in_counter_bitcount(9),
      O => NlwBufferSignal_ser_in_counter_latchcount_4_MC_D1_IN11
    );
  NlwBufferBlock_ser_in_counter_latchcount_4_MC_D1_IN12 : X_BUF
    port map (
      I => ser_in_counter_latchcount(1),
      O => NlwBufferSignal_ser_in_counter_latchcount_4_MC_D1_IN12
    );
  NlwBufferBlock_ser_in_counter_latchcount_4_MC_D1_IN13 : X_BUF
    port map (
      I => ser_in_counter_latchcount(2),
      O => NlwBufferSignal_ser_in_counter_latchcount_4_MC_D1_IN13
    );
  NlwBufferBlock_ser_in_counter_latchcount_4_MC_D1_IN14 : X_BUF
    port map (
      I => ser_in_counter_latchcount(3),
      O => NlwBufferSignal_ser_in_counter_latchcount_4_MC_D1_IN14
    );
  NlwBufferBlock_ser_in_counter_latchcount_4_MC_D1_IN15 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_latchcount_4_MC_D1_IN15
    );
  NlwBufferBlock_ser_in_counter_latchcount_5_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => ser_in_counter_latchcount_5_MC_D_485,
      O => NlwBufferSignal_ser_in_counter_latchcount_5_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_ser_in_counter_latchcount_5_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => ser_in_counter_latchcount_5_MC_Q,
      O => NlwBufferSignal_ser_in_counter_latchcount_5_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_ser_in_counter_latchcount_5_MC_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => FOOBAR1_ctinst_5_35,
      O => NlwBufferSignal_ser_in_counter_latchcount_5_MC_tsimcreated_prld_IN0
    );
  NlwBufferBlock_ser_in_counter_latchcount_5_MC_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_ser_in_counter_latchcount_5_MC_tsimcreated_prld_IN1
    );
  NlwBufferBlock_ser_in_counter_latchcount_5_MC_REG_IN : X_BUF
    port map (
      I => ser_in_counter_latchcount_5_MC_tsimcreated_xor_Q_486,
      O => NlwBufferSignal_ser_in_counter_latchcount_5_MC_REG_IN
    );
  NlwBufferBlock_ser_in_counter_latchcount_5_MC_REG_CLK : X_BUF
    port map (
      I => sclk_II_FCLK_10,
      O => NlwBufferSignal_ser_in_counter_latchcount_5_MC_REG_CLK
    );
  NlwBufferBlock_ser_in_counter_latchcount_5_MC_D_IN0 : X_BUF
    port map (
      I => ser_in_counter_latchcount_5_MC_D1_488,
      O => NlwBufferSignal_ser_in_counter_latchcount_5_MC_D_IN0
    );
  NlwBufferBlock_ser_in_counter_latchcount_5_MC_D_IN1 : X_BUF
    port map (
      I => ser_in_counter_latchcount_5_MC_D2_489,
      O => NlwBufferSignal_ser_in_counter_latchcount_5_MC_D_IN1
    );
  NlwBufferBlock_ser_in_counter_latchcount_5_MC_D1_IN0 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd1_94,
      O => NlwBufferSignal_ser_in_counter_latchcount_5_MC_D1_IN0
    );
  NlwBufferBlock_ser_in_counter_latchcount_5_MC_D1_IN1 : X_BUF
    port map (
      I => ser_in_counter_latchcount(0),
      O => NlwBufferSignal_ser_in_counter_latchcount_5_MC_D1_IN1
    );
  NlwBufferBlock_ser_in_counter_latchcount_5_MC_D1_IN2 : X_BUF
    port map (
      I => ser_in_counter_bitcount(1),
      O => NlwBufferSignal_ser_in_counter_latchcount_5_MC_D1_IN2
    );
  NlwBufferBlock_ser_in_counter_latchcount_5_MC_D1_IN3 : X_BUF
    port map (
      I => ser_in_counter_bitcount(0),
      O => NlwBufferSignal_ser_in_counter_latchcount_5_MC_D1_IN3
    );
  NlwBufferBlock_ser_in_counter_latchcount_5_MC_D1_IN4 : X_BUF
    port map (
      I => ser_in_counter_bitcount(2),
      O => NlwBufferSignal_ser_in_counter_latchcount_5_MC_D1_IN4
    );
  NlwBufferBlock_ser_in_counter_latchcount_5_MC_D1_IN5 : X_BUF
    port map (
      I => ser_in_counter_bitcount(3),
      O => NlwBufferSignal_ser_in_counter_latchcount_5_MC_D1_IN5
    );
  NlwBufferBlock_ser_in_counter_latchcount_5_MC_D1_IN6 : X_BUF
    port map (
      I => ser_in_counter_bitcount(4),
      O => NlwBufferSignal_ser_in_counter_latchcount_5_MC_D1_IN6
    );
  NlwBufferBlock_ser_in_counter_latchcount_5_MC_D1_IN7 : X_BUF
    port map (
      I => ser_in_counter_bitcount(6),
      O => NlwBufferSignal_ser_in_counter_latchcount_5_MC_D1_IN7
    );
  NlwBufferBlock_ser_in_counter_latchcount_5_MC_D1_IN8 : X_BUF
    port map (
      I => ser_in_counter_bitcount(5),
      O => NlwBufferSignal_ser_in_counter_latchcount_5_MC_D1_IN8
    );
  NlwBufferBlock_ser_in_counter_latchcount_5_MC_D1_IN9 : X_BUF
    port map (
      I => ser_in_counter_bitcount(8),
      O => NlwBufferSignal_ser_in_counter_latchcount_5_MC_D1_IN9
    );
  NlwBufferBlock_ser_in_counter_latchcount_5_MC_D1_IN10 : X_BUF
    port map (
      I => ser_in_counter_bitcount(7),
      O => NlwBufferSignal_ser_in_counter_latchcount_5_MC_D1_IN10
    );
  NlwBufferBlock_ser_in_counter_latchcount_5_MC_D1_IN11 : X_BUF
    port map (
      I => ser_in_counter_bitcount(9),
      O => NlwBufferSignal_ser_in_counter_latchcount_5_MC_D1_IN11
    );
  NlwBufferBlock_ser_in_counter_latchcount_5_MC_D1_IN12 : X_BUF
    port map (
      I => ser_in_counter_latchcount(1),
      O => NlwBufferSignal_ser_in_counter_latchcount_5_MC_D1_IN12
    );
  NlwBufferBlock_ser_in_counter_latchcount_5_MC_D1_IN13 : X_BUF
    port map (
      I => ser_in_counter_latchcount(2),
      O => NlwBufferSignal_ser_in_counter_latchcount_5_MC_D1_IN13
    );
  NlwBufferBlock_ser_in_counter_latchcount_5_MC_D1_IN14 : X_BUF
    port map (
      I => ser_in_counter_latchcount(3),
      O => NlwBufferSignal_ser_in_counter_latchcount_5_MC_D1_IN14
    );
  NlwBufferBlock_ser_in_counter_latchcount_5_MC_D1_IN15 : X_BUF
    port map (
      I => ser_in_counter_latchcount(4),
      O => NlwBufferSignal_ser_in_counter_latchcount_5_MC_D1_IN15
    );
  NlwBufferBlock_ser_in_counter_latchcount_6_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => ser_in_counter_latchcount_6_MC_D_491,
      O => NlwBufferSignal_ser_in_counter_latchcount_6_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_ser_in_counter_latchcount_6_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => ser_in_counter_latchcount_6_MC_Q,
      O => NlwBufferSignal_ser_in_counter_latchcount_6_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_ser_in_counter_latchcount_6_MC_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => FOOBAR1_ctinst_5_35,
      O => NlwBufferSignal_ser_in_counter_latchcount_6_MC_tsimcreated_prld_IN0
    );
  NlwBufferBlock_ser_in_counter_latchcount_6_MC_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_ser_in_counter_latchcount_6_MC_tsimcreated_prld_IN1
    );
  NlwBufferBlock_ser_in_counter_latchcount_6_MC_REG_IN : X_BUF
    port map (
      I => ser_in_counter_latchcount_6_MC_tsimcreated_xor_Q_492,
      O => NlwBufferSignal_ser_in_counter_latchcount_6_MC_REG_IN
    );
  NlwBufferBlock_ser_in_counter_latchcount_6_MC_REG_CLK : X_BUF
    port map (
      I => sclk_II_FCLK_10,
      O => NlwBufferSignal_ser_in_counter_latchcount_6_MC_REG_CLK
    );
  NlwBufferBlock_ser_in_counter_latchcount_6_MC_D_IN0 : X_BUF
    port map (
      I => ser_in_counter_latchcount_6_MC_D1_494,
      O => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D_IN0
    );
  NlwBufferBlock_ser_in_counter_latchcount_6_MC_D_IN1 : X_BUF
    port map (
      I => ser_in_counter_latchcount_6_MC_D2_495,
      O => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D_IN1
    );
  NlwBufferBlock_ser_in_counter_latchcount_6_MC_D1_IN0 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd1_94,
      O => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN0
    );
  NlwBufferBlock_ser_in_counter_latchcount_6_MC_D1_IN1 : X_BUF
    port map (
      I => ser_in_counter_latchcount(0),
      O => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN1
    );
  NlwBufferBlock_ser_in_counter_latchcount_6_MC_D1_IN2 : X_BUF
    port map (
      I => ser_in_counter_bitcount(1),
      O => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN2
    );
  NlwBufferBlock_ser_in_counter_latchcount_6_MC_D1_IN3 : X_BUF
    port map (
      I => ser_in_counter_bitcount(0),
      O => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN3
    );
  NlwBufferBlock_ser_in_counter_latchcount_6_MC_D1_IN4 : X_BUF
    port map (
      I => ser_in_counter_bitcount(2),
      O => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN4
    );
  NlwBufferBlock_ser_in_counter_latchcount_6_MC_D1_IN5 : X_BUF
    port map (
      I => ser_in_counter_bitcount(3),
      O => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN5
    );
  NlwBufferBlock_ser_in_counter_latchcount_6_MC_D1_IN6 : X_BUF
    port map (
      I => ser_in_counter_bitcount(4),
      O => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN6
    );
  NlwBufferBlock_ser_in_counter_latchcount_6_MC_D1_IN7 : X_BUF
    port map (
      I => ser_in_counter_bitcount(6),
      O => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN7
    );
  NlwBufferBlock_ser_in_counter_latchcount_6_MC_D1_IN8 : X_BUF
    port map (
      I => ser_in_counter_bitcount(5),
      O => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN8
    );
  NlwBufferBlock_ser_in_counter_latchcount_6_MC_D1_IN9 : X_BUF
    port map (
      I => ser_in_counter_bitcount(8),
      O => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN9
    );
  NlwBufferBlock_ser_in_counter_latchcount_6_MC_D1_IN10 : X_BUF
    port map (
      I => ser_in_counter_bitcount(7),
      O => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN10
    );
  NlwBufferBlock_ser_in_counter_latchcount_6_MC_D1_IN11 : X_BUF
    port map (
      I => ser_in_counter_bitcount(9),
      O => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN11
    );
  NlwBufferBlock_ser_in_counter_latchcount_6_MC_D1_IN12 : X_BUF
    port map (
      I => ser_in_counter_latchcount(1),
      O => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN12
    );
  NlwBufferBlock_ser_in_counter_latchcount_6_MC_D1_IN13 : X_BUF
    port map (
      I => ser_in_counter_latchcount(2),
      O => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN13
    );
  NlwBufferBlock_ser_in_counter_latchcount_6_MC_D1_IN14 : X_BUF
    port map (
      I => ser_in_counter_latchcount(3),
      O => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN14
    );
  NlwBufferBlock_ser_in_counter_latchcount_6_MC_D1_IN15 : X_BUF
    port map (
      I => ser_in_counter_latchcount(4),
      O => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN15
    );
  NlwBufferBlock_ser_in_counter_latchcount_6_MC_D1_IN16 : X_BUF
    port map (
      I => ser_in_counter_latchcount(5),
      O => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN16
    );
  NlwBufferBlock_ser_in_counter_latchcount_6_MC_D1_IN17 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN17
    );
  NlwBufferBlock_ser_in_counter_latchcount_6_MC_D1_IN18 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN18
    );
  NlwBufferBlock_ser_in_counter_latchcount_6_MC_D1_IN19 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN19
    );
  NlwBufferBlock_ser_in_counter_latchcount_6_MC_D1_IN20 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN20
    );
  NlwBufferBlock_ser_in_counter_latchcount_6_MC_D1_IN21 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN21
    );
  NlwBufferBlock_ser_in_counter_latchcount_6_MC_D1_IN22 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN22
    );
  NlwBufferBlock_ser_in_counter_latchcount_6_MC_D1_IN23 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN23
    );
  NlwBufferBlock_ser_in_counter_latchcount_6_MC_D1_IN24 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN24
    );
  NlwBufferBlock_ser_in_counter_latchcount_6_MC_D1_IN25 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN25
    );
  NlwBufferBlock_ser_in_counter_latchcount_6_MC_D1_IN26 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN26
    );
  NlwBufferBlock_ser_in_counter_latchcount_6_MC_D1_IN27 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN27
    );
  NlwBufferBlock_ser_in_counter_latchcount_6_MC_D1_IN28 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN28
    );
  NlwBufferBlock_ser_in_counter_latchcount_6_MC_D1_IN29 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN29
    );
  NlwBufferBlock_ser_in_counter_latchcount_6_MC_D1_IN30 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN30
    );
  NlwBufferBlock_ser_in_counter_latchcount_6_MC_D1_IN31 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN31
    );
  NlwBufferBlock_N_PZ_383_MC_D_IN0 : X_BUF
    port map (
      I => N_PZ_383_MC_D1_498,
      O => NlwBufferSignal_N_PZ_383_MC_D_IN0
    );
  NlwBufferBlock_N_PZ_383_MC_D_IN1 : X_BUF
    port map (
      I => N_PZ_383_MC_D2_499,
      O => NlwBufferSignal_N_PZ_383_MC_D_IN1
    );
  NlwBufferBlock_N_PZ_383_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => ser_in_counter_bitcount(0),
      O => NlwBufferSignal_N_PZ_383_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_N_PZ_383_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount(0),
      O => NlwBufferSignal_N_PZ_383_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_N_PZ_383_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd1_94,
      O => NlwBufferSignal_N_PZ_383_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_N_PZ_383_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd2_128,
      O => NlwBufferSignal_N_PZ_383_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_N_PZ_383_MC_D2_IN0 : X_BUF
    port map (
      I => N_PZ_383_MC_D2_PT_0_500,
      O => NlwBufferSignal_N_PZ_383_MC_D2_IN0
    );
  NlwBufferBlock_N_PZ_383_MC_D2_IN1 : X_BUF
    port map (
      I => N_PZ_383_MC_D2_PT_1_501,
      O => NlwBufferSignal_N_PZ_383_MC_D2_IN1
    );
  NlwBufferBlock_panel_select_MC_D_IN0 : X_BUF
    port map (
      I => panel_select_MC_D1_504,
      O => NlwBufferSignal_panel_select_MC_D_IN0
    );
  NlwBufferBlock_panel_select_MC_D_IN1 : X_BUF
    port map (
      I => panel_select_MC_D2_505,
      O => NlwBufferSignal_panel_select_MC_D_IN1
    );
  NlwBufferBlock_panel_select_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd1_94,
      O => NlwBufferSignal_panel_select_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_panel_select_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd2_128,
      O => NlwBufferSignal_panel_select_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_panel_select_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_201,
      O => NlwBufferSignal_panel_select_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_panel_select_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_202,
      O => NlwBufferSignal_panel_select_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_panel_select_MC_D2_PT_2_IN0 : X_BUF
    port map (
      I => ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_201,
      O => NlwBufferSignal_panel_select_MC_D2_PT_2_IN0
    );
  NlwBufferBlock_panel_select_MC_D2_PT_2_IN1 : X_BUF
    port map (
      I => ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_202,
      O => NlwBufferSignal_panel_select_MC_D2_PT_2_IN1
    );
  NlwBufferBlock_panel_select_MC_D2_PT_3_IN0 : X_BUF
    port map (
      I => addr_sel_0_II_UIM_1,
      O => NlwBufferSignal_panel_select_MC_D2_PT_3_IN0
    );
  NlwBufferBlock_panel_select_MC_D2_PT_3_IN1 : X_BUF
    port map (
      I => mode_data_2_MC_UIM_99,
      O => NlwBufferSignal_panel_select_MC_D2_PT_3_IN1
    );
  NlwBufferBlock_panel_select_MC_D2_PT_3_IN2 : X_BUF
    port map (
      I => ser_in_serial_dout_0_Q,
      O => NlwBufferSignal_panel_select_MC_D2_PT_3_IN2
    );
  NlwBufferBlock_panel_select_MC_D2_PT_4_IN0 : X_BUF
    port map (
      I => addr_sel_0_II_UIM_1,
      O => NlwBufferSignal_panel_select_MC_D2_PT_4_IN0
    );
  NlwBufferBlock_panel_select_MC_D2_PT_4_IN1 : X_BUF
    port map (
      I => N_PZ_448_117,
      O => NlwBufferSignal_panel_select_MC_D2_PT_4_IN1
    );
  NlwBufferBlock_panel_select_MC_D2_PT_4_IN2 : X_BUF
    port map (
      I => ser_in_serial_dout_0_Q,
      O => NlwBufferSignal_panel_select_MC_D2_PT_4_IN2
    );
  NlwBufferBlock_panel_select_MC_D2_PT_5_IN0 : X_BUF
    port map (
      I => addr_sel_0_II_UIM_1,
      O => NlwBufferSignal_panel_select_MC_D2_PT_5_IN0
    );
  NlwBufferBlock_panel_select_MC_D2_PT_5_IN1 : X_BUF
    port map (
      I => mode_data_2_MC_UIM_99,
      O => NlwBufferSignal_panel_select_MC_D2_PT_5_IN1
    );
  NlwBufferBlock_panel_select_MC_D2_PT_5_IN2 : X_BUF
    port map (
      I => ser_in_serial_dout_0_Q,
      O => NlwBufferSignal_panel_select_MC_D2_PT_5_IN2
    );
  NlwBufferBlock_panel_select_MC_D2_PT_6_IN0 : X_BUF
    port map (
      I => addr_sel_0_II_UIM_1,
      O => NlwBufferSignal_panel_select_MC_D2_PT_6_IN0
    );
  NlwBufferBlock_panel_select_MC_D2_PT_6_IN1 : X_BUF
    port map (
      I => N_PZ_448_117,
      O => NlwBufferSignal_panel_select_MC_D2_PT_6_IN1
    );
  NlwBufferBlock_panel_select_MC_D2_PT_6_IN2 : X_BUF
    port map (
      I => ser_in_serial_dout_0_Q,
      O => NlwBufferSignal_panel_select_MC_D2_PT_6_IN2
    );
  NlwBufferBlock_panel_select_MC_D2_PT_7_IN0 : X_BUF
    port map (
      I => addr_sel_1_II_UIM_3,
      O => NlwBufferSignal_panel_select_MC_D2_PT_7_IN0
    );
  NlwBufferBlock_panel_select_MC_D2_PT_7_IN1 : X_BUF
    port map (
      I => mode_data_2_MC_UIM_99,
      O => NlwBufferSignal_panel_select_MC_D2_PT_7_IN1
    );
  NlwBufferBlock_panel_select_MC_D2_PT_7_IN2 : X_BUF
    port map (
      I => ser_in_serial_dout_1_Q_159,
      O => NlwBufferSignal_panel_select_MC_D2_PT_7_IN2
    );
  NlwBufferBlock_panel_select_MC_D2_PT_8_IN0 : X_BUF
    port map (
      I => addr_sel_1_II_UIM_3,
      O => NlwBufferSignal_panel_select_MC_D2_PT_8_IN0
    );
  NlwBufferBlock_panel_select_MC_D2_PT_8_IN1 : X_BUF
    port map (
      I => N_PZ_448_117,
      O => NlwBufferSignal_panel_select_MC_D2_PT_8_IN1
    );
  NlwBufferBlock_panel_select_MC_D2_PT_8_IN2 : X_BUF
    port map (
      I => ser_in_serial_dout_1_Q_159,
      O => NlwBufferSignal_panel_select_MC_D2_PT_8_IN2
    );
  NlwBufferBlock_panel_select_MC_D2_PT_9_IN0 : X_BUF
    port map (
      I => addr_sel_1_II_UIM_3,
      O => NlwBufferSignal_panel_select_MC_D2_PT_9_IN0
    );
  NlwBufferBlock_panel_select_MC_D2_PT_9_IN1 : X_BUF
    port map (
      I => mode_data_2_MC_UIM_99,
      O => NlwBufferSignal_panel_select_MC_D2_PT_9_IN1
    );
  NlwBufferBlock_panel_select_MC_D2_PT_9_IN2 : X_BUF
    port map (
      I => ser_in_serial_dout_1_Q_159,
      O => NlwBufferSignal_panel_select_MC_D2_PT_9_IN2
    );
  NlwBufferBlock_panel_select_MC_D2_PT_10_IN0 : X_BUF
    port map (
      I => addr_sel_1_II_UIM_3,
      O => NlwBufferSignal_panel_select_MC_D2_PT_10_IN0
    );
  NlwBufferBlock_panel_select_MC_D2_PT_10_IN1 : X_BUF
    port map (
      I => N_PZ_448_117,
      O => NlwBufferSignal_panel_select_MC_D2_PT_10_IN1
    );
  NlwBufferBlock_panel_select_MC_D2_PT_10_IN2 : X_BUF
    port map (
      I => ser_in_serial_dout_1_Q_159,
      O => NlwBufferSignal_panel_select_MC_D2_PT_10_IN2
    );
  NlwBufferBlock_panel_select_MC_D2_PT_11_IN0 : X_BUF
    port map (
      I => addr_sel_2_II_UIM_5,
      O => NlwBufferSignal_panel_select_MC_D2_PT_11_IN0
    );
  NlwBufferBlock_panel_select_MC_D2_PT_11_IN1 : X_BUF
    port map (
      I => mode_data_2_MC_UIM_99,
      O => NlwBufferSignal_panel_select_MC_D2_PT_11_IN1
    );
  NlwBufferBlock_panel_select_MC_D2_PT_11_IN2 : X_BUF
    port map (
      I => ser_in_serial_dout_2_Q_152,
      O => NlwBufferSignal_panel_select_MC_D2_PT_11_IN2
    );
  NlwBufferBlock_panel_select_MC_D2_PT_12_IN0 : X_BUF
    port map (
      I => addr_sel_2_II_UIM_5,
      O => NlwBufferSignal_panel_select_MC_D2_PT_12_IN0
    );
  NlwBufferBlock_panel_select_MC_D2_PT_12_IN1 : X_BUF
    port map (
      I => N_PZ_448_117,
      O => NlwBufferSignal_panel_select_MC_D2_PT_12_IN1
    );
  NlwBufferBlock_panel_select_MC_D2_PT_12_IN2 : X_BUF
    port map (
      I => ser_in_serial_dout_2_Q_152,
      O => NlwBufferSignal_panel_select_MC_D2_PT_12_IN2
    );
  NlwBufferBlock_panel_select_MC_D2_PT_13_IN0 : X_BUF
    port map (
      I => addr_sel_2_II_UIM_5,
      O => NlwBufferSignal_panel_select_MC_D2_PT_13_IN0
    );
  NlwBufferBlock_panel_select_MC_D2_PT_13_IN1 : X_BUF
    port map (
      I => mode_data_2_MC_UIM_99,
      O => NlwBufferSignal_panel_select_MC_D2_PT_13_IN1
    );
  NlwBufferBlock_panel_select_MC_D2_PT_13_IN2 : X_BUF
    port map (
      I => ser_in_serial_dout_2_Q_152,
      O => NlwBufferSignal_panel_select_MC_D2_PT_13_IN2
    );
  NlwBufferBlock_panel_select_MC_D2_PT_14_IN0 : X_BUF
    port map (
      I => addr_sel_2_II_UIM_5,
      O => NlwBufferSignal_panel_select_MC_D2_PT_14_IN0
    );
  NlwBufferBlock_panel_select_MC_D2_PT_14_IN1 : X_BUF
    port map (
      I => N_PZ_448_117,
      O => NlwBufferSignal_panel_select_MC_D2_PT_14_IN1
    );
  NlwBufferBlock_panel_select_MC_D2_PT_14_IN2 : X_BUF
    port map (
      I => ser_in_serial_dout_2_Q_152,
      O => NlwBufferSignal_panel_select_MC_D2_PT_14_IN2
    );
  NlwBufferBlock_panel_select_MC_D2_PT_15_IN0 : X_BUF
    port map (
      I => addr_sel_3_II_UIM_7,
      O => NlwBufferSignal_panel_select_MC_D2_PT_15_IN0
    );
  NlwBufferBlock_panel_select_MC_D2_PT_15_IN1 : X_BUF
    port map (
      I => mode_data_2_MC_UIM_99,
      O => NlwBufferSignal_panel_select_MC_D2_PT_15_IN1
    );
  NlwBufferBlock_panel_select_MC_D2_PT_15_IN2 : X_BUF
    port map (
      I => ser_in_serial_dout_3_Q_144,
      O => NlwBufferSignal_panel_select_MC_D2_PT_15_IN2
    );
  NlwBufferBlock_panel_select_MC_D2_PT_16_IN0 : X_BUF
    port map (
      I => addr_sel_3_II_UIM_7,
      O => NlwBufferSignal_panel_select_MC_D2_PT_16_IN0
    );
  NlwBufferBlock_panel_select_MC_D2_PT_16_IN1 : X_BUF
    port map (
      I => N_PZ_448_117,
      O => NlwBufferSignal_panel_select_MC_D2_PT_16_IN1
    );
  NlwBufferBlock_panel_select_MC_D2_PT_16_IN2 : X_BUF
    port map (
      I => ser_in_serial_dout_3_Q_144,
      O => NlwBufferSignal_panel_select_MC_D2_PT_16_IN2
    );
  NlwBufferBlock_panel_select_MC_D2_PT_17_IN0 : X_BUF
    port map (
      I => addr_sel_3_II_UIM_7,
      O => NlwBufferSignal_panel_select_MC_D2_PT_17_IN0
    );
  NlwBufferBlock_panel_select_MC_D2_PT_17_IN1 : X_BUF
    port map (
      I => mode_data_2_MC_UIM_99,
      O => NlwBufferSignal_panel_select_MC_D2_PT_17_IN1
    );
  NlwBufferBlock_panel_select_MC_D2_PT_17_IN2 : X_BUF
    port map (
      I => ser_in_serial_dout_3_Q_144,
      O => NlwBufferSignal_panel_select_MC_D2_PT_17_IN2
    );
  NlwBufferBlock_panel_select_MC_D2_PT_18_IN0 : X_BUF
    port map (
      I => addr_sel_3_II_UIM_7,
      O => NlwBufferSignal_panel_select_MC_D2_PT_18_IN0
    );
  NlwBufferBlock_panel_select_MC_D2_PT_18_IN1 : X_BUF
    port map (
      I => N_PZ_448_117,
      O => NlwBufferSignal_panel_select_MC_D2_PT_18_IN1
    );
  NlwBufferBlock_panel_select_MC_D2_PT_18_IN2 : X_BUF
    port map (
      I => ser_in_serial_dout_3_Q_144,
      O => NlwBufferSignal_panel_select_MC_D2_PT_18_IN2
    );
  NlwBufferBlock_panel_select_MC_D2_IN0 : X_BUF
    port map (
      I => panel_select_MC_D2_PT_0_506,
      O => NlwBufferSignal_panel_select_MC_D2_IN0
    );
  NlwBufferBlock_panel_select_MC_D2_IN1 : X_BUF
    port map (
      I => panel_select_MC_D2_PT_1_507,
      O => NlwBufferSignal_panel_select_MC_D2_IN1
    );
  NlwBufferBlock_panel_select_MC_D2_IN2 : X_BUF
    port map (
      I => panel_select_MC_D2_PT_2_508,
      O => NlwBufferSignal_panel_select_MC_D2_IN2
    );
  NlwBufferBlock_panel_select_MC_D2_IN3 : X_BUF
    port map (
      I => panel_select_MC_D2_PT_3_509,
      O => NlwBufferSignal_panel_select_MC_D2_IN3
    );
  NlwBufferBlock_panel_select_MC_D2_IN4 : X_BUF
    port map (
      I => panel_select_MC_D2_PT_4_510,
      O => NlwBufferSignal_panel_select_MC_D2_IN4
    );
  NlwBufferBlock_panel_select_MC_D2_IN5 : X_BUF
    port map (
      I => panel_select_MC_D2_PT_5_511,
      O => NlwBufferSignal_panel_select_MC_D2_IN5
    );
  NlwBufferBlock_panel_select_MC_D2_IN6 : X_BUF
    port map (
      I => panel_select_MC_D2_PT_6_512,
      O => NlwBufferSignal_panel_select_MC_D2_IN6
    );
  NlwBufferBlock_panel_select_MC_D2_IN7 : X_BUF
    port map (
      I => panel_select_MC_D2_PT_7_513,
      O => NlwBufferSignal_panel_select_MC_D2_IN7
    );
  NlwBufferBlock_panel_select_MC_D2_IN8 : X_BUF
    port map (
      I => panel_select_MC_D2_PT_8_514,
      O => NlwBufferSignal_panel_select_MC_D2_IN8
    );
  NlwBufferBlock_panel_select_MC_D2_IN9 : X_BUF
    port map (
      I => panel_select_MC_D2_PT_9_515,
      O => NlwBufferSignal_panel_select_MC_D2_IN9
    );
  NlwBufferBlock_panel_select_MC_D2_IN10 : X_BUF
    port map (
      I => panel_select_MC_D2_PT_10_516,
      O => NlwBufferSignal_panel_select_MC_D2_IN10
    );
  NlwBufferBlock_panel_select_MC_D2_IN11 : X_BUF
    port map (
      I => panel_select_MC_D2_PT_11_517,
      O => NlwBufferSignal_panel_select_MC_D2_IN11
    );
  NlwBufferBlock_panel_select_MC_D2_IN12 : X_BUF
    port map (
      I => panel_select_MC_D2_PT_12_518,
      O => NlwBufferSignal_panel_select_MC_D2_IN12
    );
  NlwBufferBlock_panel_select_MC_D2_IN13 : X_BUF
    port map (
      I => panel_select_MC_D2_PT_13_519,
      O => NlwBufferSignal_panel_select_MC_D2_IN13
    );
  NlwBufferBlock_panel_select_MC_D2_IN14 : X_BUF
    port map (
      I => panel_select_MC_D2_PT_14_520,
      O => NlwBufferSignal_panel_select_MC_D2_IN14
    );
  NlwBufferBlock_panel_select_MC_D2_IN15 : X_BUF
    port map (
      I => panel_select_MC_D2_PT_15_521,
      O => NlwBufferSignal_panel_select_MC_D2_IN15
    );
  NlwBufferBlock_panel_select_MC_D2_IN16 : X_BUF
    port map (
      I => panel_select_MC_D2_PT_16_522,
      O => NlwBufferSignal_panel_select_MC_D2_IN16
    );
  NlwBufferBlock_panel_select_MC_D2_IN17 : X_BUF
    port map (
      I => panel_select_MC_D2_PT_17_523,
      O => NlwBufferSignal_panel_select_MC_D2_IN17
    );
  NlwBufferBlock_panel_select_MC_D2_IN18 : X_BUF
    port map (
      I => panel_select_MC_D2_PT_18_524,
      O => NlwBufferSignal_panel_select_MC_D2_IN18
    );
  NlwBufferBlock_panel_select_MC_D2_IN19 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_panel_select_MC_D2_IN19
    );
  NlwBufferBlock_panel_select_MC_D2_IN20 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_panel_select_MC_D2_IN20
    );
  NlwBufferBlock_panel_select_MC_D2_IN21 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_panel_select_MC_D2_IN21
    );
  NlwBufferBlock_panel_select_MC_D2_IN22 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_panel_select_MC_D2_IN22
    );
  NlwBufferBlock_panel_select_MC_D2_IN23 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_panel_select_MC_D2_IN23
    );
  NlwBufferBlock_panel_select_MC_D2_IN24 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_panel_select_MC_D2_IN24
    );
  NlwBufferBlock_panel_select_MC_D2_IN25 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_panel_select_MC_D2_IN25
    );
  NlwBufferBlock_panel_select_MC_D2_IN26 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_panel_select_MC_D2_IN26
    );
  NlwBufferBlock_panel_select_MC_D2_IN27 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_panel_select_MC_D2_IN27
    );
  NlwBufferBlock_panel_select_MC_D2_IN28 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_panel_select_MC_D2_IN28
    );
  NlwBufferBlock_panel_select_MC_D2_IN29 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_panel_select_MC_D2_IN29
    );
  NlwBufferBlock_panel_select_MC_D2_IN30 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_panel_select_MC_D2_IN30
    );
  NlwBufferBlock_panel_select_MC_D2_IN31 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_panel_select_MC_D2_IN31
    );
  NlwBufferBlock_grayscale_clk_MC_D_IN0 : X_BUF
    port map (
      I => grayscale_clk_MC_D1_527,
      O => NlwBufferSignal_grayscale_clk_MC_D_IN0
    );
  NlwBufferBlock_grayscale_clk_MC_D_IN1 : X_BUF
    port map (
      I => grayscale_clk_MC_D2_528,
      O => NlwBufferSignal_grayscale_clk_MC_D_IN1
    );
  NlwBufferBlock_grayscale_clk_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => proc_rcv_en_II_UIM_15,
      O => NlwBufferSignal_grayscale_clk_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_grayscale_clk_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => grclkgen_grclk_ctr_sig_529,
      O => NlwBufferSignal_grayscale_clk_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_grayscale_clk_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => grclkgen_grclk_ctr_sig_529,
      O => NlwBufferSignal_grayscale_clk_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_grayscale_clk_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => N_PZ_372_531,
      O => NlwBufferSignal_grayscale_clk_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_grayscale_clk_MC_D2_PT_2_IN0 : X_BUF
    port map (
      I => proc_rcv_en_II_UIM_15,
      O => NlwBufferSignal_grayscale_clk_MC_D2_PT_2_IN0
    );
  NlwBufferBlock_grayscale_clk_MC_D2_PT_2_IN1 : X_BUF
    port map (
      I => N_PZ_372_531,
      O => NlwBufferSignal_grayscale_clk_MC_D2_PT_2_IN1
    );
  NlwBufferBlock_grayscale_clk_MC_D2_PT_2_IN2 : X_BUF
    port map (
      I => grclkgen_proc_sclk_hlf_533,
      O => NlwBufferSignal_grayscale_clk_MC_D2_PT_2_IN2
    );
  NlwBufferBlock_grayscale_clk_MC_D2_IN0 : X_BUF
    port map (
      I => grayscale_clk_MC_D2_PT_0_530,
      O => NlwBufferSignal_grayscale_clk_MC_D2_IN0
    );
  NlwBufferBlock_grayscale_clk_MC_D2_IN1 : X_BUF
    port map (
      I => grayscale_clk_MC_D2_PT_1_532,
      O => NlwBufferSignal_grayscale_clk_MC_D2_IN1
    );
  NlwBufferBlock_grayscale_clk_MC_D2_IN2 : X_BUF
    port map (
      I => grayscale_clk_MC_D2_PT_2_534,
      O => NlwBufferSignal_grayscale_clk_MC_D2_IN2
    );
  NlwBufferBlock_grclkgen_grclk_ctr_sig_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => grclkgen_grclk_ctr_sig_MC_D_536,
      O => NlwBufferSignal_grclkgen_grclk_ctr_sig_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_grclkgen_grclk_ctr_sig_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => grclkgen_grclk_ctr_sig_MC_Q,
      O => NlwBufferSignal_grclkgen_grclk_ctr_sig_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_grclkgen_grclk_ctr_sig_MC_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => FOOBAR6_ctinst_5_538,
      O => NlwBufferSignal_grclkgen_grclk_ctr_sig_MC_tsimcreated_prld_IN0
    );
  NlwBufferBlock_grclkgen_grclk_ctr_sig_MC_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_grclkgen_grclk_ctr_sig_MC_tsimcreated_prld_IN1
    );
  NlwBufferBlock_grclkgen_grclk_ctr_sig_MC_REG_IN : X_BUF
    port map (
      I => grclkgen_grclk_ctr_sig_MC_tsimcreated_xor_Q_537,
      O => NlwBufferSignal_grclkgen_grclk_ctr_sig_MC_REG_IN
    );
  NlwBufferBlock_grclkgen_grclk_ctr_sig_MC_REG_CLK : X_BUF
    port map (
      I => gclk_II_FCLK_13,
      O => NlwBufferSignal_grclkgen_grclk_ctr_sig_MC_REG_CLK
    );
  NlwBufferBlock_grclkgen_grclk_ctr_sig_MC_D_IN0 : X_BUF
    port map (
      I => grclkgen_grclk_ctr_sig_MC_D1_540,
      O => NlwBufferSignal_grclkgen_grclk_ctr_sig_MC_D_IN0
    );
  NlwBufferBlock_grclkgen_grclk_ctr_sig_MC_D_IN1 : X_BUF
    port map (
      I => grclkgen_grclk_ctr_sig_MC_D2_541,
      O => NlwBufferSignal_grclkgen_grclk_ctr_sig_MC_D_IN1
    );
  NlwBufferBlock_grclkgen_grclk_ctr_sig_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => proc_grclk_en_II_UIM_17,
      O => NlwBufferSignal_grclkgen_grclk_ctr_sig_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_grclkgen_grclk_ctr_sig_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => N_PZ_371_542,
      O => NlwBufferSignal_grclkgen_grclk_ctr_sig_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_grclkgen_grclk_ctr_sig_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => tick_233,
      O => NlwBufferSignal_grclkgen_grclk_ctr_sig_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_grclkgen_grclk_ctr_sig_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => N_PZ_372_531,
      O => NlwBufferSignal_grclkgen_grclk_ctr_sig_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_grclkgen_grclk_ctr_sig_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => proc_grclk_en_II_UIM_17,
      O => NlwBufferSignal_grclkgen_grclk_ctr_sig_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_grclkgen_grclk_ctr_sig_MC_D2_IN0 : X_BUF
    port map (
      I => grclkgen_grclk_ctr_sig_MC_D2_PT_0_543,
      O => NlwBufferSignal_grclkgen_grclk_ctr_sig_MC_D2_IN0
    );
  NlwBufferBlock_grclkgen_grclk_ctr_sig_MC_D2_IN1 : X_BUF
    port map (
      I => grclkgen_grclk_ctr_sig_MC_D2_PT_1_544,
      O => NlwBufferSignal_grclkgen_grclk_ctr_sig_MC_D2_IN1
    );
  NlwBufferBlock_N_PZ_372_MC_D_IN0 : X_BUF
    port map (
      I => N_PZ_372_MC_D1_547,
      O => NlwBufferSignal_N_PZ_372_MC_D_IN0
    );
  NlwBufferBlock_N_PZ_372_MC_D_IN1 : X_BUF
    port map (
      I => N_PZ_372_MC_D2_548,
      O => NlwBufferSignal_N_PZ_372_MC_D_IN1
    );
  NlwBufferBlock_N_PZ_372_MC_D1_IN0 : X_BUF
    port map (
      I => proc_wr_b_II_UIM_19,
      O => NlwBufferSignal_N_PZ_372_MC_D1_IN0
    );
  NlwBufferBlock_N_PZ_372_MC_D1_IN1 : X_BUF
    port map (
      I => proc_wr_a_II_UIM_21,
      O => NlwBufferSignal_N_PZ_372_MC_D1_IN1
    );
  NlwBufferBlock_N_PZ_371_MC_D_IN0 : X_BUF
    port map (
      I => N_PZ_371_MC_D1_551,
      O => NlwBufferSignal_N_PZ_371_MC_D_IN0
    );
  NlwBufferBlock_N_PZ_371_MC_D_IN1 : X_BUF
    port map (
      I => N_PZ_371_MC_D2_552,
      O => NlwBufferSignal_N_PZ_371_MC_D_IN1
    );
  NlwBufferBlock_N_PZ_371_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => proc_rcv_en_II_UIM_15,
      O => NlwBufferSignal_N_PZ_371_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_N_PZ_371_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => tick_233,
      O => NlwBufferSignal_N_PZ_371_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_N_PZ_371_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => proc_rcv_en_II_UIM_15,
      O => NlwBufferSignal_N_PZ_371_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_N_PZ_371_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => N_PZ_372_531,
      O => NlwBufferSignal_N_PZ_371_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_N_PZ_371_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => grclkgen_sync_proc_sclk_554,
      O => NlwBufferSignal_N_PZ_371_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_N_PZ_371_MC_D2_IN0 : X_BUF
    port map (
      I => N_PZ_371_MC_D2_PT_0_553,
      O => NlwBufferSignal_N_PZ_371_MC_D2_IN0
    );
  NlwBufferBlock_N_PZ_371_MC_D2_IN1 : X_BUF
    port map (
      I => N_PZ_371_MC_D2_PT_1_555,
      O => NlwBufferSignal_N_PZ_371_MC_D2_IN1
    );
  NlwBufferBlock_grclkgen_sync_proc_sclk_MC_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => FOOBAR7_ctinst_5_236,
      O => NlwBufferSignal_grclkgen_sync_proc_sclk_MC_tsimcreated_prld_IN0
    );
  NlwBufferBlock_grclkgen_sync_proc_sclk_MC_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_grclkgen_sync_proc_sclk_MC_tsimcreated_prld_IN1
    );
  NlwBufferBlock_grclkgen_sync_proc_sclk_MC_REG_IN : X_BUF
    port map (
      I => grclkgen_sync_proc_sclk_MC_D_558,
      O => NlwBufferSignal_grclkgen_sync_proc_sclk_MC_REG_IN
    );
  NlwBufferBlock_grclkgen_sync_proc_sclk_MC_REG_CLK : X_BUF
    port map (
      I => gclk_II_FCLK_13,
      O => NlwBufferSignal_grclkgen_sync_proc_sclk_MC_REG_CLK
    );
  NlwBufferBlock_grclkgen_sync_proc_sclk_MC_D_IN0 : X_BUF
    port map (
      I => grclkgen_sync_proc_sclk_MC_D1_559,
      O => NlwBufferSignal_grclkgen_sync_proc_sclk_MC_D_IN0
    );
  NlwBufferBlock_grclkgen_sync_proc_sclk_MC_D_IN1 : X_BUF
    port map (
      I => grclkgen_sync_proc_sclk_MC_D2_560,
      O => NlwBufferSignal_grclkgen_sync_proc_sclk_MC_D_IN1
    );
  NlwBufferBlock_grclkgen_sync_proc_sclk_MC_D1_IN0 : X_BUF
    port map (
      I => grclkgen_sync_proc_sclk_554,
      O => NlwBufferSignal_grclkgen_sync_proc_sclk_MC_D1_IN0
    );
  NlwBufferBlock_grclkgen_sync_proc_sclk_MC_D1_IN1 : X_BUF
    port map (
      I => proc_sclk_II_UIM_23,
      O => NlwBufferSignal_grclkgen_sync_proc_sclk_MC_D1_IN1
    );
  NlwBufferBlock_grclkgen_sync_proc_sclk_MC_D1_IN2 : X_BUF
    port map (
      I => grclkgen_pulser_curState_FSM_FFd1_561,
      O => NlwBufferSignal_grclkgen_sync_proc_sclk_MC_D1_IN2
    );
  NlwBufferBlock_grclkgen_pulser_curState_FSM_FFd1_MC_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => FOOBAR7_ctinst_5_236,
      O => NlwBufferSignal_grclkgen_pulser_curState_FSM_FFd1_MC_tsimcreated_prld_IN0
    );
  NlwBufferBlock_grclkgen_pulser_curState_FSM_FFd1_MC_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_grclkgen_pulser_curState_FSM_FFd1_MC_tsimcreated_prld_IN1
    );
  NlwBufferBlock_grclkgen_pulser_curState_FSM_FFd1_MC_REG_IN : X_BUF
    port map (
      I => grclkgen_pulser_curState_FSM_FFd1_MC_D_564,
      O => NlwBufferSignal_grclkgen_pulser_curState_FSM_FFd1_MC_REG_IN
    );
  NlwBufferBlock_grclkgen_pulser_curState_FSM_FFd1_MC_REG_CLK : X_BUF
    port map (
      I => gclk_II_FCLK_13,
      O => NlwBufferSignal_grclkgen_pulser_curState_FSM_FFd1_MC_REG_CLK
    );
  NlwBufferBlock_grclkgen_pulser_curState_FSM_FFd1_MC_D_IN0 : X_BUF
    port map (
      I => grclkgen_pulser_curState_FSM_FFd1_MC_D1_565,
      O => NlwBufferSignal_grclkgen_pulser_curState_FSM_FFd1_MC_D_IN0
    );
  NlwBufferBlock_grclkgen_pulser_curState_FSM_FFd1_MC_D_IN1 : X_BUF
    port map (
      I => grclkgen_pulser_curState_FSM_FFd1_MC_D2_566,
      O => NlwBufferSignal_grclkgen_pulser_curState_FSM_FFd1_MC_D_IN1
    );
  NlwBufferBlock_grclkgen_pulser_curState_FSM_FFd1_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => grclkgen_sync_proc_sclk_554,
      O => NlwBufferSignal_grclkgen_pulser_curState_FSM_FFd1_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_grclkgen_pulser_curState_FSM_FFd1_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => proc_sclk_II_UIM_23,
      O => NlwBufferSignal_grclkgen_pulser_curState_FSM_FFd1_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_grclkgen_pulser_curState_FSM_FFd1_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => grclkgen_sync_proc_sclk_554,
      O => NlwBufferSignal_grclkgen_pulser_curState_FSM_FFd1_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_grclkgen_pulser_curState_FSM_FFd1_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => grclkgen_pulser_curState_FSM_FFd1_561,
      O => NlwBufferSignal_grclkgen_pulser_curState_FSM_FFd1_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_grclkgen_pulser_curState_FSM_FFd1_MC_D2_IN0 : X_BUF
    port map (
      I => grclkgen_pulser_curState_FSM_FFd1_MC_D2_PT_0_567,
      O => NlwBufferSignal_grclkgen_pulser_curState_FSM_FFd1_MC_D2_IN0
    );
  NlwBufferBlock_grclkgen_pulser_curState_FSM_FFd1_MC_D2_IN1 : X_BUF
    port map (
      I => grclkgen_pulser_curState_FSM_FFd1_MC_D2_PT_1_568,
      O => NlwBufferSignal_grclkgen_pulser_curState_FSM_FFd1_MC_D2_IN1
    );
  NlwBufferBlock_N_PZ_794_MC_D_IN0 : X_BUF
    port map (
      I => N_PZ_794_MC_D1_572,
      O => NlwBufferSignal_N_PZ_794_MC_D_IN0
    );
  NlwBufferBlock_N_PZ_794_MC_D_IN1 : X_BUF
    port map (
      I => N_PZ_794_MC_D2_573,
      O => NlwBufferSignal_N_PZ_794_MC_D_IN1
    );
  NlwBufferBlock_N_PZ_794_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => reset_BUFR_98,
      O => NlwBufferSignal_N_PZ_794_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_N_PZ_794_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => reset_BUFR_98,
      O => NlwBufferSignal_N_PZ_794_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_N_PZ_794_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => gclk_II_UIM_12,
      O => NlwBufferSignal_N_PZ_794_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_N_PZ_794_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => proc_grclk_en_II_UIM_17,
      O => NlwBufferSignal_N_PZ_794_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_N_PZ_794_MC_D2_IN0 : X_BUF
    port map (
      I => N_PZ_794_MC_D2_PT_0_574,
      O => NlwBufferSignal_N_PZ_794_MC_D2_IN0
    );
  NlwBufferBlock_N_PZ_794_MC_D2_IN1 : X_BUF
    port map (
      I => N_PZ_794_MC_D2_PT_1_575,
      O => NlwBufferSignal_N_PZ_794_MC_D2_IN1
    );
  NlwBufferBlock_grclkgen_proc_sclk_hlf_MC_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => FOOBAR3_ctinst_5_246,
      O => NlwBufferSignal_grclkgen_proc_sclk_hlf_MC_tsimcreated_prld_IN0
    );
  NlwBufferBlock_grclkgen_proc_sclk_hlf_MC_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_grclkgen_proc_sclk_hlf_MC_tsimcreated_prld_IN1
    );
  NlwBufferBlock_grclkgen_proc_sclk_hlf_MC_REG_IN : X_BUF
    port map (
      I => grclkgen_proc_sclk_hlf_MC_D_578,
      O => NlwBufferSignal_grclkgen_proc_sclk_hlf_MC_REG_IN
    );
  NlwBufferBlock_grclkgen_proc_sclk_hlf_MC_REG_CLK : X_BUF
    port map (
      I => gclk_II_FCLK_13,
      O => NlwBufferSignal_grclkgen_proc_sclk_hlf_MC_REG_CLK
    );
  NlwBufferBlock_grclkgen_proc_sclk_hlf_MC_D_IN0 : X_BUF
    port map (
      I => grclkgen_proc_sclk_hlf_MC_D1_579,
      O => NlwBufferSignal_grclkgen_proc_sclk_hlf_MC_D_IN0
    );
  NlwBufferBlock_grclkgen_proc_sclk_hlf_MC_D_IN1 : X_BUF
    port map (
      I => grclkgen_proc_sclk_hlf_MC_D2_580,
      O => NlwBufferSignal_grclkgen_proc_sclk_hlf_MC_D_IN1
    );
  NlwBufferBlock_grclkgen_proc_sclk_hlf_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => proc_rcv_en_II_UIM_15,
      O => NlwBufferSignal_grclkgen_proc_sclk_hlf_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_grclkgen_proc_sclk_hlf_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => N_PZ_372_531,
      O => NlwBufferSignal_grclkgen_proc_sclk_hlf_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_grclkgen_proc_sclk_hlf_MC_D2_PT_0_IN2 : X_BUF
    port map (
      I => grclkgen_proc_sclk_hlf_533,
      O => NlwBufferSignal_grclkgen_proc_sclk_hlf_MC_D2_PT_0_IN2
    );
  NlwBufferBlock_grclkgen_proc_sclk_hlf_MC_D2_PT_0_IN3 : X_BUF
    port map (
      I => grclkgen_sync_proc_sclk_554,
      O => NlwBufferSignal_grclkgen_proc_sclk_hlf_MC_D2_PT_0_IN3
    );
  NlwBufferBlock_grclkgen_proc_sclk_hlf_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => proc_rcv_en_II_UIM_15,
      O => NlwBufferSignal_grclkgen_proc_sclk_hlf_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_grclkgen_proc_sclk_hlf_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => N_PZ_372_531,
      O => NlwBufferSignal_grclkgen_proc_sclk_hlf_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_grclkgen_proc_sclk_hlf_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => grclkgen_proc_sclk_hlf_533,
      O => NlwBufferSignal_grclkgen_proc_sclk_hlf_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_grclkgen_proc_sclk_hlf_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => grclkgen_sync_proc_sclk_554,
      O => NlwBufferSignal_grclkgen_proc_sclk_hlf_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_grclkgen_proc_sclk_hlf_MC_D2_IN0 : X_BUF
    port map (
      I => grclkgen_proc_sclk_hlf_MC_D2_PT_0_581,
      O => NlwBufferSignal_grclkgen_proc_sclk_hlf_MC_D2_IN0
    );
  NlwBufferBlock_grclkgen_proc_sclk_hlf_MC_D2_IN1 : X_BUF
    port map (
      I => grclkgen_proc_sclk_hlf_MC_D2_PT_1_582,
      O => NlwBufferSignal_grclkgen_proc_sclk_hlf_MC_D2_IN1
    );
  NlwBufferBlock_latch_out1_MC_D_IN0 : X_BUF
    port map (
      I => latch_out1_MC_D1_585,
      O => NlwBufferSignal_latch_out1_MC_D_IN0
    );
  NlwBufferBlock_latch_out1_MC_D_IN1 : X_BUF
    port map (
      I => latch_out1_MC_D2_586,
      O => NlwBufferSignal_latch_out1_MC_D_IN1
    );
  NlwBufferBlock_latch_out1_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => proc_rcv_en_II_UIM_15,
      O => NlwBufferSignal_latch_out1_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_latch_out1_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => proc_latch_II_UIM_25,
      O => NlwBufferSignal_latch_out1_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_latch_out1_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd1_94,
      O => NlwBufferSignal_latch_out1_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_latch_out1_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount(1),
      O => NlwBufferSignal_latch_out1_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_latch_out1_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => ser_in_counter_bitcount(0),
      O => NlwBufferSignal_latch_out1_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_latch_out1_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => ser_in_counter_bitcount(2),
      O => NlwBufferSignal_latch_out1_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_latch_out1_MC_D2_PT_1_IN4 : X_BUF
    port map (
      I => ser_in_counter_bitcount(3),
      O => NlwBufferSignal_latch_out1_MC_D2_PT_1_IN4
    );
  NlwBufferBlock_latch_out1_MC_D2_PT_1_IN5 : X_BUF
    port map (
      I => ser_in_counter_bitcount(4),
      O => NlwBufferSignal_latch_out1_MC_D2_PT_1_IN5
    );
  NlwBufferBlock_latch_out1_MC_D2_PT_1_IN6 : X_BUF
    port map (
      I => ser_in_counter_bitcount(6),
      O => NlwBufferSignal_latch_out1_MC_D2_PT_1_IN6
    );
  NlwBufferBlock_latch_out1_MC_D2_PT_1_IN7 : X_BUF
    port map (
      I => ser_in_counter_bitcount(5),
      O => NlwBufferSignal_latch_out1_MC_D2_PT_1_IN7
    );
  NlwBufferBlock_latch_out1_MC_D2_PT_1_IN8 : X_BUF
    port map (
      I => ser_in_counter_bitcount(8),
      O => NlwBufferSignal_latch_out1_MC_D2_PT_1_IN8
    );
  NlwBufferBlock_latch_out1_MC_D2_PT_1_IN9 : X_BUF
    port map (
      I => ser_in_counter_bitcount(7),
      O => NlwBufferSignal_latch_out1_MC_D2_PT_1_IN9
    );
  NlwBufferBlock_latch_out1_MC_D2_PT_1_IN10 : X_BUF
    port map (
      I => ser_in_counter_bitcount(9),
      O => NlwBufferSignal_latch_out1_MC_D2_PT_1_IN10
    );
  NlwBufferBlock_latch_out1_MC_D2_PT_1_IN11 : X_BUF
    port map (
      I => panel_select_MC_UIM_114,
      O => NlwBufferSignal_latch_out1_MC_D2_PT_1_IN11
    );
  NlwBufferBlock_latch_out1_MC_D2_PT_1_IN12 : X_BUF
    port map (
      I => proc_rcv_en_II_UIM_15,
      O => NlwBufferSignal_latch_out1_MC_D2_PT_1_IN12
    );
  NlwBufferBlock_latch_out1_MC_D2_PT_1_IN13 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_latch_out1_MC_D2_PT_1_IN13
    );
  NlwBufferBlock_latch_out1_MC_D2_PT_1_IN14 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_latch_out1_MC_D2_PT_1_IN14
    );
  NlwBufferBlock_latch_out1_MC_D2_PT_1_IN15 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_latch_out1_MC_D2_PT_1_IN15
    );
  NlwBufferBlock_latch_out1_MC_D2_PT_2_IN0 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd1_94,
      O => NlwBufferSignal_latch_out1_MC_D2_PT_2_IN0
    );
  NlwBufferBlock_latch_out1_MC_D2_PT_2_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount(1),
      O => NlwBufferSignal_latch_out1_MC_D2_PT_2_IN1
    );
  NlwBufferBlock_latch_out1_MC_D2_PT_2_IN2 : X_BUF
    port map (
      I => ser_in_counter_bitcount(0),
      O => NlwBufferSignal_latch_out1_MC_D2_PT_2_IN2
    );
  NlwBufferBlock_latch_out1_MC_D2_PT_2_IN3 : X_BUF
    port map (
      I => ser_in_counter_bitcount(2),
      O => NlwBufferSignal_latch_out1_MC_D2_PT_2_IN3
    );
  NlwBufferBlock_latch_out1_MC_D2_PT_2_IN4 : X_BUF
    port map (
      I => ser_in_counter_bitcount(3),
      O => NlwBufferSignal_latch_out1_MC_D2_PT_2_IN4
    );
  NlwBufferBlock_latch_out1_MC_D2_PT_2_IN5 : X_BUF
    port map (
      I => ser_in_counter_bitcount(4),
      O => NlwBufferSignal_latch_out1_MC_D2_PT_2_IN5
    );
  NlwBufferBlock_latch_out1_MC_D2_PT_2_IN6 : X_BUF
    port map (
      I => ser_in_counter_bitcount(6),
      O => NlwBufferSignal_latch_out1_MC_D2_PT_2_IN6
    );
  NlwBufferBlock_latch_out1_MC_D2_PT_2_IN7 : X_BUF
    port map (
      I => ser_in_counter_bitcount(5),
      O => NlwBufferSignal_latch_out1_MC_D2_PT_2_IN7
    );
  NlwBufferBlock_latch_out1_MC_D2_PT_2_IN8 : X_BUF
    port map (
      I => ser_in_counter_bitcount(8),
      O => NlwBufferSignal_latch_out1_MC_D2_PT_2_IN8
    );
  NlwBufferBlock_latch_out1_MC_D2_PT_2_IN9 : X_BUF
    port map (
      I => ser_in_counter_bitcount(7),
      O => NlwBufferSignal_latch_out1_MC_D2_PT_2_IN9
    );
  NlwBufferBlock_latch_out1_MC_D2_PT_2_IN10 : X_BUF
    port map (
      I => ser_in_counter_bitcount(9),
      O => NlwBufferSignal_latch_out1_MC_D2_PT_2_IN10
    );
  NlwBufferBlock_latch_out1_MC_D2_PT_2_IN11 : X_BUF
    port map (
      I => panel_select_MC_UIM_114,
      O => NlwBufferSignal_latch_out1_MC_D2_PT_2_IN11
    );
  NlwBufferBlock_latch_out1_MC_D2_PT_2_IN12 : X_BUF
    port map (
      I => proc_rcv_en_II_UIM_15,
      O => NlwBufferSignal_latch_out1_MC_D2_PT_2_IN12
    );
  NlwBufferBlock_latch_out1_MC_D2_PT_2_IN13 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_latch_out1_MC_D2_PT_2_IN13
    );
  NlwBufferBlock_latch_out1_MC_D2_PT_2_IN14 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_latch_out1_MC_D2_PT_2_IN14
    );
  NlwBufferBlock_latch_out1_MC_D2_PT_2_IN15 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_latch_out1_MC_D2_PT_2_IN15
    );
  NlwBufferBlock_latch_out1_MC_D2_IN0 : X_BUF
    port map (
      I => latch_out1_MC_D2_PT_0_587,
      O => NlwBufferSignal_latch_out1_MC_D2_IN0
    );
  NlwBufferBlock_latch_out1_MC_D2_IN1 : X_BUF
    port map (
      I => latch_out1_MC_D2_PT_1_588,
      O => NlwBufferSignal_latch_out1_MC_D2_IN1
    );
  NlwBufferBlock_latch_out1_MC_D2_IN2 : X_BUF
    port map (
      I => latch_out1_MC_D2_PT_2_589,
      O => NlwBufferSignal_latch_out1_MC_D2_IN2
    );
  NlwBufferBlock_latch_out2_MC_D_IN0 : X_BUF
    port map (
      I => latch_out2_MC_D1_592,
      O => NlwBufferSignal_latch_out2_MC_D_IN0
    );
  NlwBufferBlock_latch_out2_MC_D_IN1 : X_BUF
    port map (
      I => latch_out2_MC_D2_593,
      O => NlwBufferSignal_latch_out2_MC_D_IN1
    );
  NlwBufferBlock_latch_out2_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => proc_rcv_en_II_UIM_15,
      O => NlwBufferSignal_latch_out2_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_latch_out2_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => proc_latch_II_UIM_25,
      O => NlwBufferSignal_latch_out2_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_latch_out2_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd1_94,
      O => NlwBufferSignal_latch_out2_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_latch_out2_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount(1),
      O => NlwBufferSignal_latch_out2_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_latch_out2_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => ser_in_counter_bitcount(2),
      O => NlwBufferSignal_latch_out2_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_latch_out2_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => ser_in_counter_bitcount(3),
      O => NlwBufferSignal_latch_out2_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_latch_out2_MC_D2_PT_1_IN4 : X_BUF
    port map (
      I => ser_in_counter_bitcount(4),
      O => NlwBufferSignal_latch_out2_MC_D2_PT_1_IN4
    );
  NlwBufferBlock_latch_out2_MC_D2_PT_1_IN5 : X_BUF
    port map (
      I => ser_in_counter_bitcount(6),
      O => NlwBufferSignal_latch_out2_MC_D2_PT_1_IN5
    );
  NlwBufferBlock_latch_out2_MC_D2_PT_1_IN6 : X_BUF
    port map (
      I => ser_in_counter_bitcount(5),
      O => NlwBufferSignal_latch_out2_MC_D2_PT_1_IN6
    );
  NlwBufferBlock_latch_out2_MC_D2_PT_1_IN7 : X_BUF
    port map (
      I => ser_in_counter_bitcount(8),
      O => NlwBufferSignal_latch_out2_MC_D2_PT_1_IN7
    );
  NlwBufferBlock_latch_out2_MC_D2_PT_1_IN8 : X_BUF
    port map (
      I => ser_in_counter_bitcount(7),
      O => NlwBufferSignal_latch_out2_MC_D2_PT_1_IN8
    );
  NlwBufferBlock_latch_out2_MC_D2_PT_1_IN9 : X_BUF
    port map (
      I => ser_in_counter_bitcount(9),
      O => NlwBufferSignal_latch_out2_MC_D2_PT_1_IN9
    );
  NlwBufferBlock_latch_out2_MC_D2_PT_1_IN10 : X_BUF
    port map (
      I => panel_select_MC_UIM_114,
      O => NlwBufferSignal_latch_out2_MC_D2_PT_1_IN10
    );
  NlwBufferBlock_latch_out2_MC_D2_PT_1_IN11 : X_BUF
    port map (
      I => proc_rcv_en_II_UIM_15,
      O => NlwBufferSignal_latch_out2_MC_D2_PT_1_IN11
    );
  NlwBufferBlock_latch_out2_MC_D2_PT_1_IN12 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_latch_out2_MC_D2_PT_1_IN12
    );
  NlwBufferBlock_latch_out2_MC_D2_PT_1_IN13 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_latch_out2_MC_D2_PT_1_IN13
    );
  NlwBufferBlock_latch_out2_MC_D2_PT_1_IN14 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_latch_out2_MC_D2_PT_1_IN14
    );
  NlwBufferBlock_latch_out2_MC_D2_PT_1_IN15 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_latch_out2_MC_D2_PT_1_IN15
    );
  NlwBufferBlock_latch_out2_MC_D2_IN0 : X_BUF
    port map (
      I => latch_out2_MC_D2_PT_0_594,
      O => NlwBufferSignal_latch_out2_MC_D2_IN0
    );
  NlwBufferBlock_latch_out2_MC_D2_IN1 : X_BUF
    port map (
      I => latch_out2_MC_D2_PT_1_595,
      O => NlwBufferSignal_latch_out2_MC_D2_IN1
    );
  NlwBufferBlock_line_select_0_MC_D_IN0 : X_BUF
    port map (
      I => line_select_0_MC_D1_598,
      O => NlwBufferSignal_line_select_0_MC_D_IN0
    );
  NlwBufferBlock_line_select_0_MC_D_IN1 : X_BUF
    port map (
      I => line_select_0_MC_D2_599,
      O => NlwBufferSignal_line_select_0_MC_D_IN1
    );
  NlwBufferBlock_line_select_0_MC_D1_IN0 : X_BUF
    port map (
      I => N_PZ_794_570,
      O => NlwBufferSignal_line_select_0_MC_D1_IN0
    );
  NlwBufferBlock_line_select_0_MC_D1_IN1 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines(0),
      O => NlwBufferSignal_line_select_0_MC_D1_IN1
    );
  NlwBufferBlock_line_select_0_MC_D1_IN2 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines(1),
      O => NlwBufferSignal_line_select_0_MC_D1_IN2
    );
  NlwBufferBlock_line_select_0_MC_D1_IN3 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines(2),
      O => NlwBufferSignal_line_select_0_MC_D1_IN3
    );
  NlwBufferBlock_line_select_0_MC_D1_IN4 : X_BUF
    port map (
      I => grclkgen_ctr_line_en_603,
      O => NlwBufferSignal_line_select_0_MC_D1_IN4
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_0_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines_0_MC_D_605,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_0_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines_0_MC_Q,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_0_MC_REG_IN : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines_0_MC_tsimcreated_xor_Q_606,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_REG_IN
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_0_MC_REG_CLK : X_BUF
    port map (
      I => gclk_II_FCLK_13,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_REG_CLK
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_0_MC_D_IN0 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines_0_MC_D1_608,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_0_MC_D_IN1 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines_0_MC_D2_609,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => grclkgen_grclk_ctr_sig_529,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => proc_grclk_en_II_UIM_17,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN2 : X_BUF
    port map (
      I => N_PZ_371_542,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN2
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN3 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(0),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN3
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN4 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(1),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN4
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN5 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(2),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN5
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN6 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(3),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN6
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN7 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(4),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN7
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN8 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(5),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN8
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN9 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(6),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN9
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN10 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(7),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN10
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN11 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN11
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN12 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN12
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN13 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN13
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN14 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN14
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN15 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN15
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => tick_233,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => grclkgen_grclk_ctr_sig_529,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => N_PZ_372_531,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => proc_grclk_en_II_UIM_17,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN4 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(0),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN4
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN5 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(1),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN5
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN6 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(2),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN6
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN7 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(3),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN7
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN8 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(4),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN8
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN9 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(5),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN9
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN10 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(6),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN10
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN11 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(7),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN11
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN12 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN12
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN13 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN13
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN14 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN14
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN15 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN15
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_0_MC_D2_IN0 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_618,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_0_MC_D2_IN1 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_619,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_0_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_0_MC_D_621,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_0_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_0_MC_Q,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_0_MC_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => FOOBAR5_ctinst_5_623,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_tsimcreated_prld_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_0_MC_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_tsimcreated_prld_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_0_MC_REG_IN : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_0_MC_tsimcreated_xor_Q_622,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_REG_IN
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_0_MC_REG_CLK : X_BUF
    port map (
      I => gclk_II_FCLK_13,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_REG_CLK
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_0_MC_D_IN0 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_0_MC_D1_625,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_0_MC_D_IN1 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_0_MC_D2_626,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => grclkgen_grclk_ctr_sig_529,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => grclkgen_grclk_ctr_sig_529,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => proc_grclk_en_II_UIM_17,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => proc_grclk_en_II_UIM_17,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_2_IN0 : X_BUF
    port map (
      I => proc_rcv_en_II_UIM_15,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_2_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_2_IN1 : X_BUF
    port map (
      I => tick_233,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_2_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_3_IN0 : X_BUF
    port map (
      I => tick_233,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_3_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_3_IN1 : X_BUF
    port map (
      I => N_PZ_372_531,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_3_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_4_IN0 : X_BUF
    port map (
      I => proc_rcv_en_II_UIM_15,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_4_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_4_IN1 : X_BUF
    port map (
      I => N_PZ_372_531,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_4_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_4_IN2 : X_BUF
    port map (
      I => grclkgen_sync_proc_sclk_554,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_4_IN2
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN0 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(0),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN1 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(1),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN2 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(2),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN2
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN3 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(3),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN3
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN4 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(4),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN4
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN5 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(5),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN5
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN6 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(6),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN6
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN7 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(7),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN7
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_0_MC_D2_IN0 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_0_MC_D2_PT_0_627,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_0_MC_D2_IN1 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_0_MC_D2_PT_1_628,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_0_MC_D2_IN2 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_0_MC_D2_PT_2_629,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_IN2
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_0_MC_D2_IN3 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_0_MC_D2_PT_3_630,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_IN3
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_0_MC_D2_IN4 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_0_MC_D2_PT_4_631,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_IN4
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_0_MC_D2_IN5 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_632,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_IN5
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_1_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_1_MC_D_634,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_1_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_1_MC_Q,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_1_MC_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => FOOBAR6_ctinst_5_538,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_tsimcreated_prld_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_1_MC_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_tsimcreated_prld_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_1_MC_REG_IN : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_1_MC_tsimcreated_xor_Q_635,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_REG_IN
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_1_MC_REG_CLK : X_BUF
    port map (
      I => gclk_II_FCLK_13,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_REG_CLK
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_1_MC_D_IN0 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_1_MC_D1_637,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_D_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_1_MC_D_IN1 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_1_MC_D2_638,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_D_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_1_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => grclkgen_grclk_ctr_sig_529,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_1_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => proc_grclk_en_II_UIM_17,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_1_MC_D2_PT_0_IN2 : X_BUF
    port map (
      I => N_PZ_371_542,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_D2_PT_0_IN2
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_1_MC_D2_PT_0_IN3 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(0),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_D2_PT_0_IN3
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_1_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => tick_233,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_1_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => grclkgen_grclk_ctr_sig_529,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_1_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => N_PZ_372_531,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_1_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => proc_grclk_en_II_UIM_17,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_1_MC_D2_PT_1_IN4 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(0),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_D2_PT_1_IN4
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_1_MC_D2_IN0 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_1_MC_D2_PT_0_639,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_D2_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_1_MC_D2_IN1 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_1_MC_D2_PT_1_640,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_D2_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_2_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_2_MC_D_642,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_2_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_2_MC_Q,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_2_MC_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => FOOBAR6_ctinst_5_538,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_tsimcreated_prld_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_2_MC_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_tsimcreated_prld_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_2_MC_REG_IN : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_2_MC_tsimcreated_xor_Q_643,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_REG_IN
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_2_MC_REG_CLK : X_BUF
    port map (
      I => gclk_II_FCLK_13,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_REG_CLK
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_2_MC_D_IN0 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_2_MC_D1_645,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_D_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_2_MC_D_IN1 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_2_MC_D2_646,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_D_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => grclkgen_grclk_ctr_sig_529,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => proc_grclk_en_II_UIM_17,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_0_IN2 : X_BUF
    port map (
      I => N_PZ_371_542,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_0_IN2
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_0_IN3 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(0),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_0_IN3
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_0_IN4 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(1),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_0_IN4
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => tick_233,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => grclkgen_grclk_ctr_sig_529,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => N_PZ_372_531,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => proc_grclk_en_II_UIM_17,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_1_IN4 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(0),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_1_IN4
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_1_IN5 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(1),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_1_IN5
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_2_MC_D2_IN0 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_2_MC_D2_PT_0_647,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_D2_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_2_MC_D2_IN1 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_2_MC_D2_PT_1_648,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_D2_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_3_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_3_MC_D_650,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_3_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_3_MC_Q,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_3_MC_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => FOOBAR6_ctinst_5_538,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_tsimcreated_prld_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_3_MC_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_tsimcreated_prld_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_3_MC_REG_IN : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_3_MC_tsimcreated_xor_Q_651,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_REG_IN
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_3_MC_REG_CLK : X_BUF
    port map (
      I => gclk_II_FCLK_13,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_REG_CLK
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_3_MC_D_IN0 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_3_MC_D1_653,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_D_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_3_MC_D_IN1 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_3_MC_D2_654,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_D_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => grclkgen_grclk_ctr_sig_529,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => proc_grclk_en_II_UIM_17,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_0_IN2 : X_BUF
    port map (
      I => N_PZ_371_542,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_0_IN2
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_0_IN3 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(0),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_0_IN3
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_0_IN4 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(1),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_0_IN4
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_0_IN5 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(2),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_0_IN5
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => tick_233,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => grclkgen_grclk_ctr_sig_529,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => N_PZ_372_531,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => proc_grclk_en_II_UIM_17,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_1_IN4 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(0),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_1_IN4
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_1_IN5 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(1),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_1_IN5
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_1_IN6 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(2),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_1_IN6
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_3_MC_D2_IN0 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_3_MC_D2_PT_0_655,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_3_MC_D2_IN1 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_3_MC_D2_PT_1_656,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_4_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_4_MC_D_658,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_4_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_4_MC_Q,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_4_MC_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => FOOBAR6_ctinst_5_538,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_tsimcreated_prld_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_4_MC_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_tsimcreated_prld_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_4_MC_REG_IN : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_4_MC_tsimcreated_xor_Q_659,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_REG_IN
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_4_MC_REG_CLK : X_BUF
    port map (
      I => gclk_II_FCLK_13,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_REG_CLK
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_4_MC_D_IN0 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_4_MC_D1_661,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_4_MC_D_IN1 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_4_MC_D2_662,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => grclkgen_grclk_ctr_sig_529,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => proc_grclk_en_II_UIM_17,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_0_IN2 : X_BUF
    port map (
      I => N_PZ_371_542,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_0_IN2
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_0_IN3 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(0),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_0_IN3
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_0_IN4 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(1),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_0_IN4
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_0_IN5 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(2),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_0_IN5
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_0_IN6 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(3),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_0_IN6
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => tick_233,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => grclkgen_grclk_ctr_sig_529,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => N_PZ_372_531,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => proc_grclk_en_II_UIM_17,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_1_IN4 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(0),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_1_IN4
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_1_IN5 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(1),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_1_IN5
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_1_IN6 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(2),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_1_IN6
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_1_IN7 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(3),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_1_IN7
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_4_MC_D2_IN0 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_4_MC_D2_PT_0_663,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_4_MC_D2_IN1 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_4_MC_D2_PT_1_664,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_5_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_5_MC_D_666,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_5_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_5_MC_Q,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_5_MC_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => FOOBAR5_ctinst_5_623,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_tsimcreated_prld_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_5_MC_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_tsimcreated_prld_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_5_MC_REG_IN : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_5_MC_tsimcreated_xor_Q_667,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_REG_IN
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_5_MC_REG_CLK : X_BUF
    port map (
      I => gclk_II_FCLK_13,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_REG_CLK
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_5_MC_D_IN0 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_5_MC_D1_669,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_5_MC_D_IN1 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_5_MC_D2_670,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => grclkgen_grclk_ctr_sig_529,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => proc_grclk_en_II_UIM_17,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_0_IN2 : X_BUF
    port map (
      I => N_PZ_371_542,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_0_IN2
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_0_IN3 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(0),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_0_IN3
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_0_IN4 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(1),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_0_IN4
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_0_IN5 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(2),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_0_IN5
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_0_IN6 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(3),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_0_IN6
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_0_IN7 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(4),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_0_IN7
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => tick_233,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => grclkgen_grclk_ctr_sig_529,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => N_PZ_372_531,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => proc_grclk_en_II_UIM_17,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN4 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(0),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN4
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN5 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(1),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN5
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN6 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(2),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN6
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN7 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(3),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN7
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN8 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(4),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN8
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN9 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN9
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN10 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN10
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN11 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN11
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN12 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN12
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN13 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN13
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN14 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN14
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN15 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN15
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_5_MC_D2_IN0 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_5_MC_D2_PT_0_671,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_5_MC_D2_IN1 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_672,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_6_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_6_MC_D_674,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_6_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_6_MC_Q,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_6_MC_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => FOOBAR5_ctinst_5_623,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_tsimcreated_prld_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_6_MC_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_tsimcreated_prld_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_6_MC_REG_IN : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_6_MC_tsimcreated_xor_Q_675,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_REG_IN
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_6_MC_REG_CLK : X_BUF
    port map (
      I => gclk_II_FCLK_13,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_REG_CLK
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_6_MC_D_IN0 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_6_MC_D1_677,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_6_MC_D_IN1 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_6_MC_D2_678,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => grclkgen_grclk_ctr_sig_529,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => proc_grclk_en_II_UIM_17,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN2 : X_BUF
    port map (
      I => N_PZ_371_542,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN2
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN3 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(0),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN3
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN4 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(1),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN4
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN5 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(2),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN5
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN6 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(3),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN6
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN7 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(4),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN7
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN8 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(5),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN8
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN9 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN9
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN10 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN10
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN11 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN11
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN12 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN12
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN13 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN13
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN14 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN14
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN15 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN15
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => tick_233,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => grclkgen_grclk_ctr_sig_529,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => N_PZ_372_531,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => proc_grclk_en_II_UIM_17,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN4 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(0),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN4
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN5 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(1),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN5
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN6 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(2),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN6
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN7 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(3),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN7
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN8 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(4),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN8
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN9 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(5),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN9
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN10 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN10
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN11 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN11
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN12 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN12
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN13 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN13
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN14 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN14
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN15 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN15
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_6_MC_D2_IN0 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_679,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_6_MC_D2_IN1 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_680,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_7_MC_D_682,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_7_MC_Q,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_REG_IN : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_7_MC_tsimcreated_xor_Q_683,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_REG_IN
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_REG_CLK : X_BUF
    port map (
      I => gclk_II_FCLK_13,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_REG_CLK
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D_IN0 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_7_MC_D1_684,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D_IN1 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_7_MC_D2_685,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => grclkgen_grclk_ctr_sig_529,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => proc_grclk_en_II_UIM_17,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN2 : X_BUF
    port map (
      I => N_PZ_371_542,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN2
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN3 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(0),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN3
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN4 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(1),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN4
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN5 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(2),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN5
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN6 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(3),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN6
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN7 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(4),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN7
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN8 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(5),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN8
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN9 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(6),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN9
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN10 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN10
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN11 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN11
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN12 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN12
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN13 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN13
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN14 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN14
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN15 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN15
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => tick_233,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => grclkgen_grclk_ctr_sig_529,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => N_PZ_372_531,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => proc_grclk_en_II_UIM_17,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN4 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(0),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN4
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN5 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(1),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN5
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN6 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(2),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN6
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN7 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(3),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN7
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN8 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(4),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN8
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN9 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(5),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN9
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN10 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(6),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN10
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN11 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN11
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN12 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN12
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN13 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN13
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN14 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN14
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN15 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN15
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN0 : X_BUF
    port map (
      I => grclkgen_grclk_ctr_sig_529,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN1 : X_BUF
    port map (
      I => proc_grclk_en_II_UIM_17,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN2 : X_BUF
    port map (
      I => N_PZ_371_542,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN2
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN3 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(0),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN3
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN4 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(1),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN4
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN5 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(2),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN5
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN6 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(3),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN6
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN7 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(4),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN7
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN8 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(5),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN8
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN9 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(6),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN9
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN10 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(7),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN10
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN11 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN11
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN12 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN12
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN13 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN13
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN14 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN14
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN15 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN15
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN0 : X_BUF
    port map (
      I => tick_233,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN1 : X_BUF
    port map (
      I => grclkgen_grclk_ctr_sig_529,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN2 : X_BUF
    port map (
      I => N_PZ_372_531,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN2
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN3 : X_BUF
    port map (
      I => proc_grclk_en_II_UIM_17,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN3
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN4 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(0),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN4
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN5 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(1),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN5
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN6 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(2),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN6
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN7 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(3),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN7
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN8 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(4),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN8
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN9 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(5),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN9
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN10 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(6),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN10
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN11 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(7),
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN11
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN12 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN12
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN13 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN13
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN14 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN14
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN15 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN15
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_IN0 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_686,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_IN1 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_687,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_IN2 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_688,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_IN2
    );
  NlwBufferBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_IN3 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_689,
      O => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_IN3
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_1_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines_1_MC_D_691,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_1_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines_1_MC_Q,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_1_MC_REG_IN : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines_1_MC_tsimcreated_xor_Q_692,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_REG_IN
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_1_MC_REG_CLK : X_BUF
    port map (
      I => gclk_II_FCLK_13,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_REG_CLK
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_1_MC_D_IN0 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines_1_MC_D1_693,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_1_MC_D_IN1 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines_1_MC_D2_694,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => grclkgen_grclk_ctr_sig_529,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => proc_grclk_en_II_UIM_17,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN2 : X_BUF
    port map (
      I => N_PZ_371_542,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN2
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN3 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines(0),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN3
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN4 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(0),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN4
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN5 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(1),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN5
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN6 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(2),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN6
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN7 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(3),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN7
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN8 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(4),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN8
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN9 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(5),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN9
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN10 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(6),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN10
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN11 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(7),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN11
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN12 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN12
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN13 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN13
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN14 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN14
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN15 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN15
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => tick_233,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => grclkgen_grclk_ctr_sig_529,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => N_PZ_372_531,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => proc_grclk_en_II_UIM_17,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN4 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines(0),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN4
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN5 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(0),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN5
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN6 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(1),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN6
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN7 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(2),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN7
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN8 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(3),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN8
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN9 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(4),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN9
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN10 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(5),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN10
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN11 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(6),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN11
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN12 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(7),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN12
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN13 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN13
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN14 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN14
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN15 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN15
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_1_MC_D2_IN0 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_695,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_1_MC_D2_IN1 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_696,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_2_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines_2_MC_D_698,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_2_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines_2_MC_Q,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_2_MC_REG_IN : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines_2_MC_tsimcreated_xor_Q_699,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_REG_IN
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_2_MC_REG_CLK : X_BUF
    port map (
      I => gclk_II_FCLK_13,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_REG_CLK
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_2_MC_D_IN0 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines_2_MC_D1_700,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_2_MC_D_IN1 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines_2_MC_D2_701,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => grclkgen_grclk_ctr_sig_529,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => proc_grclk_en_II_UIM_17,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN2 : X_BUF
    port map (
      I => N_PZ_371_542,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN2
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN3 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines(0),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN3
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN4 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines(1),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN4
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN5 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(0),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN5
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN6 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(1),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN6
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN7 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(2),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN7
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN8 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(3),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN8
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN9 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(4),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN9
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN10 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(5),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN10
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN11 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(6),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN11
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN12 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(7),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN12
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN13 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN13
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN14 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN14
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN15 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN15
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => tick_233,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => grclkgen_grclk_ctr_sig_529,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => N_PZ_372_531,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => proc_grclk_en_II_UIM_17,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN4 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines(0),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN4
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN5 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines(1),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN5
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN6 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(0),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN6
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN7 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(1),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN7
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN8 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(2),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN8
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN9 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(3),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN9
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN10 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(4),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN10
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN11 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(5),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN11
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN12 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(6),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN12
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN13 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_gclk(7),
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN13
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN14 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN14
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN15 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN15
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_2_MC_D2_IN0 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_702,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_IN0
    );
  NlwBufferBlock_grclkgen_ctr_cnt_lines_2_MC_D2_IN1 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_703,
      O => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_IN1
    );
  NlwBufferBlock_grclkgen_ctr_line_en_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => grclkgen_ctr_line_en_MC_D_705,
      O => NlwBufferSignal_grclkgen_ctr_line_en_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_grclkgen_ctr_line_en_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => grclkgen_ctr_line_en_MC_Q,
      O => NlwBufferSignal_grclkgen_ctr_line_en_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_grclkgen_ctr_line_en_MC_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => FOOBAR6_ctinst_5_538,
      O => NlwBufferSignal_grclkgen_ctr_line_en_MC_tsimcreated_prld_IN0
    );
  NlwBufferBlock_grclkgen_ctr_line_en_MC_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_grclkgen_ctr_line_en_MC_tsimcreated_prld_IN1
    );
  NlwBufferBlock_grclkgen_ctr_line_en_MC_REG_IN : X_BUF
    port map (
      I => grclkgen_ctr_line_en_MC_tsimcreated_xor_Q_706,
      O => NlwBufferSignal_grclkgen_ctr_line_en_MC_REG_IN
    );
  NlwBufferBlock_grclkgen_ctr_line_en_MC_REG_CLK : X_BUF
    port map (
      I => gclk_II_FCLK_13,
      O => NlwBufferSignal_grclkgen_ctr_line_en_MC_REG_CLK
    );
  NlwBufferBlock_grclkgen_ctr_line_en_MC_D_IN0 : X_BUF
    port map (
      I => grclkgen_ctr_line_en_MC_D1_708,
      O => NlwBufferSignal_grclkgen_ctr_line_en_MC_D_IN0
    );
  NlwBufferBlock_grclkgen_ctr_line_en_MC_D_IN1 : X_BUF
    port map (
      I => grclkgen_ctr_line_en_MC_D2_709,
      O => NlwBufferSignal_grclkgen_ctr_line_en_MC_D_IN1
    );
  NlwBufferBlock_grclkgen_ctr_line_en_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => proc_grclk_en_II_UIM_17,
      O => NlwBufferSignal_grclkgen_ctr_line_en_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_grclkgen_ctr_line_en_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => N_PZ_371_542,
      O => NlwBufferSignal_grclkgen_ctr_line_en_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_grclkgen_ctr_line_en_MC_D2_PT_0_IN2 : X_BUF
    port map (
      I => grclkgen_ctr_line_en_603,
      O => NlwBufferSignal_grclkgen_ctr_line_en_MC_D2_PT_0_IN2
    );
  NlwBufferBlock_grclkgen_ctr_line_en_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => tick_233,
      O => NlwBufferSignal_grclkgen_ctr_line_en_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_grclkgen_ctr_line_en_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => N_PZ_372_531,
      O => NlwBufferSignal_grclkgen_ctr_line_en_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_grclkgen_ctr_line_en_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => proc_grclk_en_II_UIM_17,
      O => NlwBufferSignal_grclkgen_ctr_line_en_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_grclkgen_ctr_line_en_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => grclkgen_ctr_line_en_603,
      O => NlwBufferSignal_grclkgen_ctr_line_en_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_grclkgen_ctr_line_en_MC_D2_IN0 : X_BUF
    port map (
      I => grclkgen_ctr_line_en_MC_D2_PT_0_710,
      O => NlwBufferSignal_grclkgen_ctr_line_en_MC_D2_IN0
    );
  NlwBufferBlock_grclkgen_ctr_line_en_MC_D2_IN1 : X_BUF
    port map (
      I => grclkgen_ctr_line_en_MC_D2_PT_1_711,
      O => NlwBufferSignal_grclkgen_ctr_line_en_MC_D2_IN1
    );
  NlwBufferBlock_line_select_1_MC_D_IN0 : X_BUF
    port map (
      I => line_select_1_MC_D1_714,
      O => NlwBufferSignal_line_select_1_MC_D_IN0
    );
  NlwBufferBlock_line_select_1_MC_D_IN1 : X_BUF
    port map (
      I => line_select_1_MC_D2_715,
      O => NlwBufferSignal_line_select_1_MC_D_IN1
    );
  NlwBufferBlock_line_select_1_MC_D1_IN0 : X_BUF
    port map (
      I => N_PZ_794_570,
      O => NlwBufferSignal_line_select_1_MC_D1_IN0
    );
  NlwBufferBlock_line_select_1_MC_D1_IN1 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines(0),
      O => NlwBufferSignal_line_select_1_MC_D1_IN1
    );
  NlwBufferBlock_line_select_1_MC_D1_IN2 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines(1),
      O => NlwBufferSignal_line_select_1_MC_D1_IN2
    );
  NlwBufferBlock_line_select_1_MC_D1_IN3 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines(2),
      O => NlwBufferSignal_line_select_1_MC_D1_IN3
    );
  NlwBufferBlock_line_select_1_MC_D1_IN4 : X_BUF
    port map (
      I => grclkgen_ctr_line_en_603,
      O => NlwBufferSignal_line_select_1_MC_D1_IN4
    );
  NlwBufferBlock_line_select_2_MC_D_IN0 : X_BUF
    port map (
      I => line_select_2_MC_D1_718,
      O => NlwBufferSignal_line_select_2_MC_D_IN0
    );
  NlwBufferBlock_line_select_2_MC_D_IN1 : X_BUF
    port map (
      I => line_select_2_MC_D2_719,
      O => NlwBufferSignal_line_select_2_MC_D_IN1
    );
  NlwBufferBlock_line_select_2_MC_D1_IN0 : X_BUF
    port map (
      I => N_PZ_794_570,
      O => NlwBufferSignal_line_select_2_MC_D1_IN0
    );
  NlwBufferBlock_line_select_2_MC_D1_IN1 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines(0),
      O => NlwBufferSignal_line_select_2_MC_D1_IN1
    );
  NlwBufferBlock_line_select_2_MC_D1_IN2 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines(1),
      O => NlwBufferSignal_line_select_2_MC_D1_IN2
    );
  NlwBufferBlock_line_select_2_MC_D1_IN3 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines(2),
      O => NlwBufferSignal_line_select_2_MC_D1_IN3
    );
  NlwBufferBlock_line_select_2_MC_D1_IN4 : X_BUF
    port map (
      I => grclkgen_ctr_line_en_603,
      O => NlwBufferSignal_line_select_2_MC_D1_IN4
    );
  NlwBufferBlock_line_select_3_MC_D_IN0 : X_BUF
    port map (
      I => line_select_3_MC_D1_722,
      O => NlwBufferSignal_line_select_3_MC_D_IN0
    );
  NlwBufferBlock_line_select_3_MC_D_IN1 : X_BUF
    port map (
      I => line_select_3_MC_D2_723,
      O => NlwBufferSignal_line_select_3_MC_D_IN1
    );
  NlwBufferBlock_line_select_3_MC_D1_IN0 : X_BUF
    port map (
      I => N_PZ_794_570,
      O => NlwBufferSignal_line_select_3_MC_D1_IN0
    );
  NlwBufferBlock_line_select_3_MC_D1_IN1 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines(0),
      O => NlwBufferSignal_line_select_3_MC_D1_IN1
    );
  NlwBufferBlock_line_select_3_MC_D1_IN2 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines(1),
      O => NlwBufferSignal_line_select_3_MC_D1_IN2
    );
  NlwBufferBlock_line_select_3_MC_D1_IN3 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines(2),
      O => NlwBufferSignal_line_select_3_MC_D1_IN3
    );
  NlwBufferBlock_line_select_3_MC_D1_IN4 : X_BUF
    port map (
      I => grclkgen_ctr_line_en_603,
      O => NlwBufferSignal_line_select_3_MC_D1_IN4
    );
  NlwBufferBlock_line_select_4_MC_D_IN0 : X_BUF
    port map (
      I => line_select_4_MC_D1_726,
      O => NlwBufferSignal_line_select_4_MC_D_IN0
    );
  NlwBufferBlock_line_select_4_MC_D_IN1 : X_BUF
    port map (
      I => line_select_4_MC_D2_727,
      O => NlwBufferSignal_line_select_4_MC_D_IN1
    );
  NlwBufferBlock_line_select_4_MC_D1_IN0 : X_BUF
    port map (
      I => N_PZ_794_570,
      O => NlwBufferSignal_line_select_4_MC_D1_IN0
    );
  NlwBufferBlock_line_select_4_MC_D1_IN1 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines(0),
      O => NlwBufferSignal_line_select_4_MC_D1_IN1
    );
  NlwBufferBlock_line_select_4_MC_D1_IN2 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines(1),
      O => NlwBufferSignal_line_select_4_MC_D1_IN2
    );
  NlwBufferBlock_line_select_4_MC_D1_IN3 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines(2),
      O => NlwBufferSignal_line_select_4_MC_D1_IN3
    );
  NlwBufferBlock_line_select_4_MC_D1_IN4 : X_BUF
    port map (
      I => grclkgen_ctr_line_en_603,
      O => NlwBufferSignal_line_select_4_MC_D1_IN4
    );
  NlwBufferBlock_line_select_5_MC_D_IN0 : X_BUF
    port map (
      I => line_select_5_MC_D1_730,
      O => NlwBufferSignal_line_select_5_MC_D_IN0
    );
  NlwBufferBlock_line_select_5_MC_D_IN1 : X_BUF
    port map (
      I => line_select_5_MC_D2_731,
      O => NlwBufferSignal_line_select_5_MC_D_IN1
    );
  NlwBufferBlock_line_select_5_MC_D1_IN0 : X_BUF
    port map (
      I => N_PZ_794_570,
      O => NlwBufferSignal_line_select_5_MC_D1_IN0
    );
  NlwBufferBlock_line_select_5_MC_D1_IN1 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines(0),
      O => NlwBufferSignal_line_select_5_MC_D1_IN1
    );
  NlwBufferBlock_line_select_5_MC_D1_IN2 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines(1),
      O => NlwBufferSignal_line_select_5_MC_D1_IN2
    );
  NlwBufferBlock_line_select_5_MC_D1_IN3 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines(2),
      O => NlwBufferSignal_line_select_5_MC_D1_IN3
    );
  NlwBufferBlock_line_select_5_MC_D1_IN4 : X_BUF
    port map (
      I => grclkgen_ctr_line_en_603,
      O => NlwBufferSignal_line_select_5_MC_D1_IN4
    );
  NlwBufferBlock_line_select_6_MC_D_IN0 : X_BUF
    port map (
      I => line_select_6_MC_D1_734,
      O => NlwBufferSignal_line_select_6_MC_D_IN0
    );
  NlwBufferBlock_line_select_6_MC_D_IN1 : X_BUF
    port map (
      I => line_select_6_MC_D2_735,
      O => NlwBufferSignal_line_select_6_MC_D_IN1
    );
  NlwBufferBlock_line_select_6_MC_D1_IN0 : X_BUF
    port map (
      I => N_PZ_794_570,
      O => NlwBufferSignal_line_select_6_MC_D1_IN0
    );
  NlwBufferBlock_line_select_6_MC_D1_IN1 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines(0),
      O => NlwBufferSignal_line_select_6_MC_D1_IN1
    );
  NlwBufferBlock_line_select_6_MC_D1_IN2 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines(1),
      O => NlwBufferSignal_line_select_6_MC_D1_IN2
    );
  NlwBufferBlock_line_select_6_MC_D1_IN3 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines(2),
      O => NlwBufferSignal_line_select_6_MC_D1_IN3
    );
  NlwBufferBlock_line_select_6_MC_D1_IN4 : X_BUF
    port map (
      I => grclkgen_ctr_line_en_603,
      O => NlwBufferSignal_line_select_6_MC_D1_IN4
    );
  NlwBufferBlock_line_select_7_MC_D_IN0 : X_BUF
    port map (
      I => line_select_7_MC_D1_738,
      O => NlwBufferSignal_line_select_7_MC_D_IN0
    );
  NlwBufferBlock_line_select_7_MC_D_IN1 : X_BUF
    port map (
      I => line_select_7_MC_D2_739,
      O => NlwBufferSignal_line_select_7_MC_D_IN1
    );
  NlwBufferBlock_line_select_7_MC_D1_IN0 : X_BUF
    port map (
      I => N_PZ_794_570,
      O => NlwBufferSignal_line_select_7_MC_D1_IN0
    );
  NlwBufferBlock_line_select_7_MC_D1_IN1 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines(0),
      O => NlwBufferSignal_line_select_7_MC_D1_IN1
    );
  NlwBufferBlock_line_select_7_MC_D1_IN2 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines(1),
      O => NlwBufferSignal_line_select_7_MC_D1_IN2
    );
  NlwBufferBlock_line_select_7_MC_D1_IN3 : X_BUF
    port map (
      I => grclkgen_ctr_cnt_lines(2),
      O => NlwBufferSignal_line_select_7_MC_D1_IN3
    );
  NlwBufferBlock_line_select_7_MC_D1_IN4 : X_BUF
    port map (
      I => grclkgen_ctr_line_en_603,
      O => NlwBufferSignal_line_select_7_MC_D1_IN4
    );
  NlwBufferBlock_mosi_a_MC_D_IN0 : X_BUF
    port map (
      I => mosi_a_MC_D1_742,
      O => NlwBufferSignal_mosi_a_MC_D_IN0
    );
  NlwBufferBlock_mosi_a_MC_D_IN1 : X_BUF
    port map (
      I => mosi_a_MC_D2_743,
      O => NlwBufferSignal_mosi_a_MC_D_IN1
    );
  NlwBufferBlock_mosi_a_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => panel_select_MC_UIM_114,
      O => NlwBufferSignal_mosi_a_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_mosi_a_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => proc_rcv_en_II_UIM_15,
      O => NlwBufferSignal_mosi_a_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_mosi_a_MC_D2_PT_0_IN2 : X_BUF
    port map (
      I => serinf_flipflop_a_744,
      O => NlwBufferSignal_mosi_a_MC_D2_PT_0_IN2
    );
  NlwBufferBlock_mosi_a_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => proc_rcv_en_II_UIM_15,
      O => NlwBufferSignal_mosi_a_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_mosi_a_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => proc_wr_a_II_UIM_21,
      O => NlwBufferSignal_mosi_a_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_mosi_a_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => proc_mosi_II_UIM_31,
      O => NlwBufferSignal_mosi_a_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_mosi_a_MC_D2_IN0 : X_BUF
    port map (
      I => mosi_a_MC_D2_PT_0_745,
      O => NlwBufferSignal_mosi_a_MC_D2_IN0
    );
  NlwBufferBlock_mosi_a_MC_D2_IN1 : X_BUF
    port map (
      I => mosi_a_MC_D2_PT_1_746,
      O => NlwBufferSignal_mosi_a_MC_D2_IN1
    );
  NlwBufferBlock_serinf_flipflop_a_MC_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => serinf_flipflop_a_MC_RSTF_748,
      O => NlwBufferSignal_serinf_flipflop_a_MC_tsimcreated_prld_IN0
    );
  NlwBufferBlock_serinf_flipflop_a_MC_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_serinf_flipflop_a_MC_tsimcreated_prld_IN1
    );
  NlwBufferBlock_serinf_flipflop_a_MC_REG_IN : X_BUF
    port map (
      I => serinf_flipflop_a_MC_D_750,
      O => NlwBufferSignal_serinf_flipflop_a_MC_REG_IN
    );
  NlwBufferBlock_serinf_flipflop_a_MC_REG_CLK : X_BUF
    port map (
      I => sclk_II_FCLK_10,
      O => NlwBufferSignal_serinf_flipflop_a_MC_REG_CLK
    );
  NlwBufferBlock_serinf_flipflop_a_MC_D_IN0 : X_BUF
    port map (
      I => serinf_flipflop_a_MC_D1_751,
      O => NlwBufferSignal_serinf_flipflop_a_MC_D_IN0
    );
  NlwBufferBlock_serinf_flipflop_a_MC_D_IN1 : X_BUF
    port map (
      I => serinf_flipflop_a_MC_D2_752,
      O => NlwBufferSignal_serinf_flipflop_a_MC_D_IN1
    );
  NlwBufferBlock_serinf_flipflop_a_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => N_PZ_383_172,
      O => NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_serinf_flipflop_a_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => sdin_II_UIM_33,
      O => NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_serinf_flipflop_a_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => N_PZ_383_172,
      O => NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_serinf_flipflop_a_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => serinf_flipflop_a_744,
      O => NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_serinf_flipflop_a_MC_D2_PT_2_IN0 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd1_94,
      O => NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_2_IN0
    );
  NlwBufferBlock_serinf_flipflop_a_MC_D2_PT_2_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount(1),
      O => NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_2_IN1
    );
  NlwBufferBlock_serinf_flipflop_a_MC_D2_PT_2_IN2 : X_BUF
    port map (
      I => ser_in_counter_bitcount(0),
      O => NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_2_IN2
    );
  NlwBufferBlock_serinf_flipflop_a_MC_D2_PT_2_IN3 : X_BUF
    port map (
      I => ser_in_counter_bitcount(2),
      O => NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_2_IN3
    );
  NlwBufferBlock_serinf_flipflop_a_MC_D2_PT_2_IN4 : X_BUF
    port map (
      I => ser_in_counter_bitcount(3),
      O => NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_2_IN4
    );
  NlwBufferBlock_serinf_flipflop_a_MC_D2_PT_2_IN5 : X_BUF
    port map (
      I => ser_in_counter_bitcount(4),
      O => NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_2_IN5
    );
  NlwBufferBlock_serinf_flipflop_a_MC_D2_PT_2_IN6 : X_BUF
    port map (
      I => ser_in_counter_bitcount(6),
      O => NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_2_IN6
    );
  NlwBufferBlock_serinf_flipflop_a_MC_D2_PT_2_IN7 : X_BUF
    port map (
      I => ser_in_counter_bitcount(5),
      O => NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_2_IN7
    );
  NlwBufferBlock_serinf_flipflop_a_MC_D2_PT_2_IN8 : X_BUF
    port map (
      I => ser_in_counter_bitcount(8),
      O => NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_2_IN8
    );
  NlwBufferBlock_serinf_flipflop_a_MC_D2_PT_2_IN9 : X_BUF
    port map (
      I => ser_in_counter_bitcount(7),
      O => NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_2_IN9
    );
  NlwBufferBlock_serinf_flipflop_a_MC_D2_PT_2_IN10 : X_BUF
    port map (
      I => ser_in_counter_bitcount(9),
      O => NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_2_IN10
    );
  NlwBufferBlock_serinf_flipflop_a_MC_D2_PT_2_IN11 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd2_128,
      O => NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_2_IN11
    );
  NlwBufferBlock_serinf_flipflop_a_MC_D2_PT_2_IN12 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_2_IN12
    );
  NlwBufferBlock_serinf_flipflop_a_MC_D2_PT_2_IN13 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_2_IN13
    );
  NlwBufferBlock_serinf_flipflop_a_MC_D2_PT_2_IN14 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_2_IN14
    );
  NlwBufferBlock_serinf_flipflop_a_MC_D2_PT_2_IN15 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_2_IN15
    );
  NlwBufferBlock_serinf_flipflop_a_MC_D2_IN0 : X_BUF
    port map (
      I => serinf_flipflop_a_MC_D2_PT_0_753,
      O => NlwBufferSignal_serinf_flipflop_a_MC_D2_IN0
    );
  NlwBufferBlock_serinf_flipflop_a_MC_D2_IN1 : X_BUF
    port map (
      I => serinf_flipflop_a_MC_D2_PT_1_754,
      O => NlwBufferSignal_serinf_flipflop_a_MC_D2_IN1
    );
  NlwBufferBlock_serinf_flipflop_a_MC_D2_IN2 : X_BUF
    port map (
      I => serinf_flipflop_a_MC_D2_PT_2_755,
      O => NlwBufferSignal_serinf_flipflop_a_MC_D2_IN2
    );
  NlwBufferBlock_serinf_flipflop_a_MC_RSTF_IN0 : X_BUF
    port map (
      I => reset_BUFR_98,
      O => NlwBufferSignal_serinf_flipflop_a_MC_RSTF_IN0
    );
  NlwBufferBlock_serinf_flipflop_a_MC_RSTF_IN1 : X_BUF
    port map (
      I => reset_BUFR_98,
      O => NlwBufferSignal_serinf_flipflop_a_MC_RSTF_IN1
    );
  NlwBufferBlock_mosi_b_MC_D_IN0 : X_BUF
    port map (
      I => mosi_b_MC_D1_758,
      O => NlwBufferSignal_mosi_b_MC_D_IN0
    );
  NlwBufferBlock_mosi_b_MC_D_IN1 : X_BUF
    port map (
      I => mosi_b_MC_D2_759,
      O => NlwBufferSignal_mosi_b_MC_D_IN1
    );
  NlwBufferBlock_mosi_b_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => panel_select_MC_UIM_114,
      O => NlwBufferSignal_mosi_b_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_mosi_b_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => proc_rcv_en_II_UIM_15,
      O => NlwBufferSignal_mosi_b_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_mosi_b_MC_D2_PT_0_IN2 : X_BUF
    port map (
      I => serinf_flipflop_b_760,
      O => NlwBufferSignal_mosi_b_MC_D2_PT_0_IN2
    );
  NlwBufferBlock_mosi_b_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => proc_rcv_en_II_UIM_15,
      O => NlwBufferSignal_mosi_b_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_mosi_b_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => proc_wr_b_II_UIM_19,
      O => NlwBufferSignal_mosi_b_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_mosi_b_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => proc_mosi_II_UIM_31,
      O => NlwBufferSignal_mosi_b_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_mosi_b_MC_D2_IN0 : X_BUF
    port map (
      I => mosi_b_MC_D2_PT_0_761,
      O => NlwBufferSignal_mosi_b_MC_D2_IN0
    );
  NlwBufferBlock_mosi_b_MC_D2_IN1 : X_BUF
    port map (
      I => mosi_b_MC_D2_PT_1_762,
      O => NlwBufferSignal_mosi_b_MC_D2_IN1
    );
  NlwBufferBlock_serinf_flipflop_b_MC_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => serinf_flipflop_b_MC_RSTF_764,
      O => NlwBufferSignal_serinf_flipflop_b_MC_tsimcreated_prld_IN0
    );
  NlwBufferBlock_serinf_flipflop_b_MC_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_serinf_flipflop_b_MC_tsimcreated_prld_IN1
    );
  NlwBufferBlock_serinf_flipflop_b_MC_REG_IN : X_BUF
    port map (
      I => serinf_flipflop_b_MC_D_766,
      O => NlwBufferSignal_serinf_flipflop_b_MC_REG_IN
    );
  NlwBufferBlock_serinf_flipflop_b_MC_REG_CLK : X_BUF
    port map (
      I => sclk_II_FCLK_10,
      O => NlwBufferSignal_serinf_flipflop_b_MC_REG_CLK
    );
  NlwBufferBlock_serinf_flipflop_b_MC_D_IN0 : X_BUF
    port map (
      I => serinf_flipflop_b_MC_D1_767,
      O => NlwBufferSignal_serinf_flipflop_b_MC_D_IN0
    );
  NlwBufferBlock_serinf_flipflop_b_MC_D_IN1 : X_BUF
    port map (
      I => serinf_flipflop_b_MC_D2_768,
      O => NlwBufferSignal_serinf_flipflop_b_MC_D_IN1
    );
  NlwBufferBlock_serinf_flipflop_b_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => N_PZ_383_172,
      O => NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_serinf_flipflop_b_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => serinf_flipflop_b_760,
      O => NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_serinf_flipflop_b_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => N_PZ_383_172,
      O => NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_serinf_flipflop_b_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => sdin_II_UIM_33,
      O => NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_serinf_flipflop_b_MC_D2_PT_2_IN0 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd1_94,
      O => NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_2_IN0
    );
  NlwBufferBlock_serinf_flipflop_b_MC_D2_PT_2_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount(1),
      O => NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_2_IN1
    );
  NlwBufferBlock_serinf_flipflop_b_MC_D2_PT_2_IN2 : X_BUF
    port map (
      I => ser_in_counter_bitcount(0),
      O => NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_2_IN2
    );
  NlwBufferBlock_serinf_flipflop_b_MC_D2_PT_2_IN3 : X_BUF
    port map (
      I => ser_in_counter_bitcount(2),
      O => NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_2_IN3
    );
  NlwBufferBlock_serinf_flipflop_b_MC_D2_PT_2_IN4 : X_BUF
    port map (
      I => ser_in_counter_bitcount(3),
      O => NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_2_IN4
    );
  NlwBufferBlock_serinf_flipflop_b_MC_D2_PT_2_IN5 : X_BUF
    port map (
      I => ser_in_counter_bitcount(4),
      O => NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_2_IN5
    );
  NlwBufferBlock_serinf_flipflop_b_MC_D2_PT_2_IN6 : X_BUF
    port map (
      I => ser_in_counter_bitcount(6),
      O => NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_2_IN6
    );
  NlwBufferBlock_serinf_flipflop_b_MC_D2_PT_2_IN7 : X_BUF
    port map (
      I => ser_in_counter_bitcount(5),
      O => NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_2_IN7
    );
  NlwBufferBlock_serinf_flipflop_b_MC_D2_PT_2_IN8 : X_BUF
    port map (
      I => ser_in_counter_bitcount(8),
      O => NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_2_IN8
    );
  NlwBufferBlock_serinf_flipflop_b_MC_D2_PT_2_IN9 : X_BUF
    port map (
      I => ser_in_counter_bitcount(7),
      O => NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_2_IN9
    );
  NlwBufferBlock_serinf_flipflop_b_MC_D2_PT_2_IN10 : X_BUF
    port map (
      I => ser_in_counter_bitcount(9),
      O => NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_2_IN10
    );
  NlwBufferBlock_serinf_flipflop_b_MC_D2_PT_2_IN11 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd2_128,
      O => NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_2_IN11
    );
  NlwBufferBlock_serinf_flipflop_b_MC_D2_PT_2_IN12 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_2_IN12
    );
  NlwBufferBlock_serinf_flipflop_b_MC_D2_PT_2_IN13 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_2_IN13
    );
  NlwBufferBlock_serinf_flipflop_b_MC_D2_PT_2_IN14 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_2_IN14
    );
  NlwBufferBlock_serinf_flipflop_b_MC_D2_PT_2_IN15 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_2_IN15
    );
  NlwBufferBlock_serinf_flipflop_b_MC_D2_IN0 : X_BUF
    port map (
      I => serinf_flipflop_b_MC_D2_PT_0_769,
      O => NlwBufferSignal_serinf_flipflop_b_MC_D2_IN0
    );
  NlwBufferBlock_serinf_flipflop_b_MC_D2_IN1 : X_BUF
    port map (
      I => serinf_flipflop_b_MC_D2_PT_1_770,
      O => NlwBufferSignal_serinf_flipflop_b_MC_D2_IN1
    );
  NlwBufferBlock_serinf_flipflop_b_MC_D2_IN2 : X_BUF
    port map (
      I => serinf_flipflop_b_MC_D2_PT_2_771,
      O => NlwBufferSignal_serinf_flipflop_b_MC_D2_IN2
    );
  NlwBufferBlock_serinf_flipflop_b_MC_RSTF_IN0 : X_BUF
    port map (
      I => reset_BUFR_98,
      O => NlwBufferSignal_serinf_flipflop_b_MC_RSTF_IN0
    );
  NlwBufferBlock_serinf_flipflop_b_MC_RSTF_IN1 : X_BUF
    port map (
      I => reset_BUFR_98,
      O => NlwBufferSignal_serinf_flipflop_b_MC_RSTF_IN1
    );
  NlwBufferBlock_reset_MC_D_IN0 : X_BUF
    port map (
      I => reset_MC_D1_774,
      O => NlwBufferSignal_reset_MC_D_IN0
    );
  NlwBufferBlock_reset_MC_D_IN1 : X_BUF
    port map (
      I => reset_MC_D2_775,
      O => NlwBufferSignal_reset_MC_D_IN1
    );
  NlwBufferBlock_reset_MC_D1_IN0 : X_BUF
    port map (
      I => reset_BUFR_98,
      O => NlwBufferSignal_reset_MC_D1_IN0
    );
  NlwBufferBlock_reset_MC_D1_IN1 : X_BUF
    port map (
      I => reset_BUFR_98,
      O => NlwBufferSignal_reset_MC_D1_IN1
    );
  NlwBufferBlock_sdout_MC_D_IN0 : X_BUF
    port map (
      I => sdout_MC_D1_778,
      O => NlwBufferSignal_sdout_MC_D_IN0
    );
  NlwBufferBlock_sdout_MC_D_IN1 : X_BUF
    port map (
      I => sdout_MC_D2_779,
      O => NlwBufferSignal_sdout_MC_D_IN1
    );
  NlwBufferBlock_sdout_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => panel_select_MC_UIM_114,
      O => NlwBufferSignal_sdout_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_sdout_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => N_PZ_383_172,
      O => NlwBufferSignal_sdout_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_sdout_MC_D2_PT_0_IN2 : X_BUF
    port map (
      I => miso_b_II_UIM_29,
      O => NlwBufferSignal_sdout_MC_D2_PT_0_IN2
    );
  NlwBufferBlock_sdout_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => panel_select_MC_UIM_114,
      O => NlwBufferSignal_sdout_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_sdout_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => N_PZ_383_172,
      O => NlwBufferSignal_sdout_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_sdout_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => miso_a_II_UIM_27,
      O => NlwBufferSignal_sdout_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_sdout_MC_D2_PT_2_IN0 : X_BUF
    port map (
      I => panel_select_MC_UIM_114,
      O => NlwBufferSignal_sdout_MC_D2_PT_2_IN0
    );
  NlwBufferBlock_sdout_MC_D2_PT_2_IN1 : X_BUF
    port map (
      I => sdprev_II_UIM_41,
      O => NlwBufferSignal_sdout_MC_D2_PT_2_IN1
    );
  NlwBufferBlock_sdout_MC_D2_PT_2_IN2 : X_BUF
    port map (
      I => sdprev_en_MC_UIM_782,
      O => NlwBufferSignal_sdout_MC_D2_PT_2_IN2
    );
  NlwBufferBlock_sdout_MC_D2_IN0 : X_BUF
    port map (
      I => sdout_MC_D2_PT_0_780,
      O => NlwBufferSignal_sdout_MC_D2_IN0
    );
  NlwBufferBlock_sdout_MC_D2_IN1 : X_BUF
    port map (
      I => sdout_MC_D2_PT_1_781,
      O => NlwBufferSignal_sdout_MC_D2_IN1
    );
  NlwBufferBlock_sdout_MC_D2_IN2 : X_BUF
    port map (
      I => sdout_MC_D2_PT_2_783,
      O => NlwBufferSignal_sdout_MC_D2_IN2
    );
  NlwBufferBlock_sdprev_en_MC_D_IN0 : X_BUF
    port map (
      I => sdprev_en_MC_D1_786,
      O => NlwBufferSignal_sdprev_en_MC_D_IN0
    );
  NlwBufferBlock_sdprev_en_MC_D_IN1 : X_BUF
    port map (
      I => sdprev_en_MC_D2_787,
      O => NlwBufferSignal_sdprev_en_MC_D_IN1
    );
  NlwBufferBlock_sdprev_en_MC_D1_IN0 : X_BUF
    port map (
      I => addr_sel_0_II_UIM_1,
      O => NlwBufferSignal_sdprev_en_MC_D1_IN0
    );
  NlwBufferBlock_sdprev_en_MC_D1_IN1 : X_BUF
    port map (
      I => addr_sel_1_II_UIM_3,
      O => NlwBufferSignal_sdprev_en_MC_D1_IN1
    );
  NlwBufferBlock_sdprev_en_MC_D1_IN2 : X_BUF
    port map (
      I => addr_sel_2_II_UIM_5,
      O => NlwBufferSignal_sdprev_en_MC_D1_IN2
    );
  NlwBufferBlock_sdprev_en_MC_D1_IN3 : X_BUF
    port map (
      I => addr_sel_3_II_UIM_7,
      O => NlwBufferSignal_sdprev_en_MC_D1_IN3
    );
  NlwBufferBlock_tsclk_a_MC_D_IN0 : X_BUF
    port map (
      I => tsclk_a_MC_D1_790,
      O => NlwBufferSignal_tsclk_a_MC_D_IN0
    );
  NlwBufferBlock_tsclk_a_MC_D_IN1 : X_BUF
    port map (
      I => tsclk_a_MC_D2_791,
      O => NlwBufferSignal_tsclk_a_MC_D_IN1
    );
  NlwBufferBlock_tsclk_a_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => proc_rcv_en_II_UIM_15,
      O => NlwBufferSignal_tsclk_a_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_tsclk_a_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => proc_wr_a_II_UIM_21,
      O => NlwBufferSignal_tsclk_a_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_tsclk_a_MC_D2_PT_0_IN2 : X_BUF
    port map (
      I => proc_sclk_II_UIM_23,
      O => NlwBufferSignal_tsclk_a_MC_D2_PT_0_IN2
    );
  NlwBufferBlock_tsclk_a_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => panel_select_MC_UIM_114,
      O => NlwBufferSignal_tsclk_a_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_tsclk_a_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => proc_rcv_en_II_UIM_15,
      O => NlwBufferSignal_tsclk_a_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_tsclk_a_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => N_PZ_383_172,
      O => NlwBufferSignal_tsclk_a_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_tsclk_a_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => serinf_ff_a_en_793,
      O => NlwBufferSignal_tsclk_a_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_tsclk_a_MC_D2_IN0 : X_BUF
    port map (
      I => tsclk_a_MC_D2_PT_0_792,
      O => NlwBufferSignal_tsclk_a_MC_D2_IN0
    );
  NlwBufferBlock_tsclk_a_MC_D2_IN1 : X_BUF
    port map (
      I => tsclk_a_MC_D2_PT_1_794,
      O => NlwBufferSignal_tsclk_a_MC_D2_IN1
    );
  NlwBufferBlock_serinf_ff_a_en_MC_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => serinf_ff_a_en_MC_RSTF_796,
      O => NlwBufferSignal_serinf_ff_a_en_MC_tsimcreated_prld_IN0
    );
  NlwBufferBlock_serinf_ff_a_en_MC_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_serinf_ff_a_en_MC_tsimcreated_prld_IN1
    );
  NlwBufferBlock_serinf_ff_a_en_MC_REG_IN : X_BUF
    port map (
      I => serinf_ff_a_en_MC_D_798,
      O => NlwBufferSignal_serinf_ff_a_en_MC_REG_IN
    );
  NlwBufferBlock_serinf_ff_a_en_MC_REG_CLK : X_BUF
    port map (
      I => sclk_II_FCLK_10,
      O => NlwBufferSignal_serinf_ff_a_en_MC_REG_CLK
    );
  NlwBufferBlock_serinf_ff_a_en_MC_D_IN0 : X_BUF
    port map (
      I => serinf_ff_a_en_MC_D1_799,
      O => NlwBufferSignal_serinf_ff_a_en_MC_D_IN0
    );
  NlwBufferBlock_serinf_ff_a_en_MC_D_IN1 : X_BUF
    port map (
      I => serinf_ff_a_en_MC_D2_800,
      O => NlwBufferSignal_serinf_ff_a_en_MC_D_IN1
    );
  NlwBufferBlock_serinf_ff_a_en_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => panel_select_MC_UIM_114,
      O => NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_serinf_ff_a_en_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => serinf_ff_a_en_793,
      O => NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_serinf_ff_a_en_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => N_PZ_383_172,
      O => NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_serinf_ff_a_en_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => serinf_ff_a_en_793,
      O => NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_serinf_ff_a_en_MC_D2_PT_2_IN0 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd1_94,
      O => NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_2_IN0
    );
  NlwBufferBlock_serinf_ff_a_en_MC_D2_PT_2_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount(1),
      O => NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_2_IN1
    );
  NlwBufferBlock_serinf_ff_a_en_MC_D2_PT_2_IN2 : X_BUF
    port map (
      I => ser_in_counter_bitcount(0),
      O => NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_2_IN2
    );
  NlwBufferBlock_serinf_ff_a_en_MC_D2_PT_2_IN3 : X_BUF
    port map (
      I => ser_in_counter_bitcount(2),
      O => NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_2_IN3
    );
  NlwBufferBlock_serinf_ff_a_en_MC_D2_PT_2_IN4 : X_BUF
    port map (
      I => ser_in_counter_bitcount(3),
      O => NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_2_IN4
    );
  NlwBufferBlock_serinf_ff_a_en_MC_D2_PT_2_IN5 : X_BUF
    port map (
      I => ser_in_counter_bitcount(4),
      O => NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_2_IN5
    );
  NlwBufferBlock_serinf_ff_a_en_MC_D2_PT_2_IN6 : X_BUF
    port map (
      I => ser_in_counter_bitcount(6),
      O => NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_2_IN6
    );
  NlwBufferBlock_serinf_ff_a_en_MC_D2_PT_2_IN7 : X_BUF
    port map (
      I => ser_in_counter_bitcount(5),
      O => NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_2_IN7
    );
  NlwBufferBlock_serinf_ff_a_en_MC_D2_PT_2_IN8 : X_BUF
    port map (
      I => ser_in_counter_bitcount(8),
      O => NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_2_IN8
    );
  NlwBufferBlock_serinf_ff_a_en_MC_D2_PT_2_IN9 : X_BUF
    port map (
      I => ser_in_counter_bitcount(7),
      O => NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_2_IN9
    );
  NlwBufferBlock_serinf_ff_a_en_MC_D2_PT_2_IN10 : X_BUF
    port map (
      I => ser_in_counter_bitcount(9),
      O => NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_2_IN10
    );
  NlwBufferBlock_serinf_ff_a_en_MC_D2_PT_2_IN11 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd2_128,
      O => NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_2_IN11
    );
  NlwBufferBlock_serinf_ff_a_en_MC_D2_PT_2_IN12 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_2_IN12
    );
  NlwBufferBlock_serinf_ff_a_en_MC_D2_PT_2_IN13 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_2_IN13
    );
  NlwBufferBlock_serinf_ff_a_en_MC_D2_PT_2_IN14 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_2_IN14
    );
  NlwBufferBlock_serinf_ff_a_en_MC_D2_PT_2_IN15 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_2_IN15
    );
  NlwBufferBlock_serinf_ff_a_en_MC_D2_IN0 : X_BUF
    port map (
      I => serinf_ff_a_en_MC_D2_PT_0_801,
      O => NlwBufferSignal_serinf_ff_a_en_MC_D2_IN0
    );
  NlwBufferBlock_serinf_ff_a_en_MC_D2_IN1 : X_BUF
    port map (
      I => serinf_ff_a_en_MC_D2_PT_1_802,
      O => NlwBufferSignal_serinf_ff_a_en_MC_D2_IN1
    );
  NlwBufferBlock_serinf_ff_a_en_MC_D2_IN2 : X_BUF
    port map (
      I => serinf_ff_a_en_MC_D2_PT_2_803,
      O => NlwBufferSignal_serinf_ff_a_en_MC_D2_IN2
    );
  NlwBufferBlock_serinf_ff_a_en_MC_RSTF_IN0 : X_BUF
    port map (
      I => reset_BUFR_98,
      O => NlwBufferSignal_serinf_ff_a_en_MC_RSTF_IN0
    );
  NlwBufferBlock_serinf_ff_a_en_MC_RSTF_IN1 : X_BUF
    port map (
      I => reset_BUFR_98,
      O => NlwBufferSignal_serinf_ff_a_en_MC_RSTF_IN1
    );
  NlwBufferBlock_tsclk_b_MC_D_IN0 : X_BUF
    port map (
      I => tsclk_b_MC_D1_806,
      O => NlwBufferSignal_tsclk_b_MC_D_IN0
    );
  NlwBufferBlock_tsclk_b_MC_D_IN1 : X_BUF
    port map (
      I => tsclk_b_MC_D2_807,
      O => NlwBufferSignal_tsclk_b_MC_D_IN1
    );
  NlwBufferBlock_tsclk_b_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => proc_rcv_en_II_UIM_15,
      O => NlwBufferSignal_tsclk_b_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_tsclk_b_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => proc_wr_b_II_UIM_19,
      O => NlwBufferSignal_tsclk_b_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_tsclk_b_MC_D2_PT_0_IN2 : X_BUF
    port map (
      I => proc_sclk_II_UIM_23,
      O => NlwBufferSignal_tsclk_b_MC_D2_PT_0_IN2
    );
  NlwBufferBlock_tsclk_b_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => panel_select_MC_UIM_114,
      O => NlwBufferSignal_tsclk_b_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_tsclk_b_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => proc_rcv_en_II_UIM_15,
      O => NlwBufferSignal_tsclk_b_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_tsclk_b_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => N_PZ_383_172,
      O => NlwBufferSignal_tsclk_b_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_tsclk_b_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => serinf_ff_b_en_809,
      O => NlwBufferSignal_tsclk_b_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_tsclk_b_MC_D2_IN0 : X_BUF
    port map (
      I => tsclk_b_MC_D2_PT_0_808,
      O => NlwBufferSignal_tsclk_b_MC_D2_IN0
    );
  NlwBufferBlock_tsclk_b_MC_D2_IN1 : X_BUF
    port map (
      I => tsclk_b_MC_D2_PT_1_810,
      O => NlwBufferSignal_tsclk_b_MC_D2_IN1
    );
  NlwBufferBlock_serinf_ff_b_en_MC_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => serinf_ff_b_en_MC_RSTF_812,
      O => NlwBufferSignal_serinf_ff_b_en_MC_tsimcreated_prld_IN0
    );
  NlwBufferBlock_serinf_ff_b_en_MC_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_36,
      O => NlwBufferSignal_serinf_ff_b_en_MC_tsimcreated_prld_IN1
    );
  NlwBufferBlock_serinf_ff_b_en_MC_REG_IN : X_BUF
    port map (
      I => serinf_ff_b_en_MC_D_814,
      O => NlwBufferSignal_serinf_ff_b_en_MC_REG_IN
    );
  NlwBufferBlock_serinf_ff_b_en_MC_REG_CLK : X_BUF
    port map (
      I => sclk_II_FCLK_10,
      O => NlwBufferSignal_serinf_ff_b_en_MC_REG_CLK
    );
  NlwBufferBlock_serinf_ff_b_en_MC_D_IN0 : X_BUF
    port map (
      I => serinf_ff_b_en_MC_D1_815,
      O => NlwBufferSignal_serinf_ff_b_en_MC_D_IN0
    );
  NlwBufferBlock_serinf_ff_b_en_MC_D_IN1 : X_BUF
    port map (
      I => serinf_ff_b_en_MC_D2_816,
      O => NlwBufferSignal_serinf_ff_b_en_MC_D_IN1
    );
  NlwBufferBlock_serinf_ff_b_en_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => panel_select_MC_UIM_114,
      O => NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_serinf_ff_b_en_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => serinf_ff_b_en_809,
      O => NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_serinf_ff_b_en_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => N_PZ_383_172,
      O => NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_serinf_ff_b_en_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => serinf_ff_b_en_809,
      O => NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_serinf_ff_b_en_MC_D2_PT_2_IN0 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd1_94,
      O => NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_2_IN0
    );
  NlwBufferBlock_serinf_ff_b_en_MC_D2_PT_2_IN1 : X_BUF
    port map (
      I => ser_in_counter_bitcount(1),
      O => NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_2_IN1
    );
  NlwBufferBlock_serinf_ff_b_en_MC_D2_PT_2_IN2 : X_BUF
    port map (
      I => ser_in_counter_bitcount(0),
      O => NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_2_IN2
    );
  NlwBufferBlock_serinf_ff_b_en_MC_D2_PT_2_IN3 : X_BUF
    port map (
      I => ser_in_counter_bitcount(2),
      O => NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_2_IN3
    );
  NlwBufferBlock_serinf_ff_b_en_MC_D2_PT_2_IN4 : X_BUF
    port map (
      I => ser_in_counter_bitcount(3),
      O => NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_2_IN4
    );
  NlwBufferBlock_serinf_ff_b_en_MC_D2_PT_2_IN5 : X_BUF
    port map (
      I => ser_in_counter_bitcount(4),
      O => NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_2_IN5
    );
  NlwBufferBlock_serinf_ff_b_en_MC_D2_PT_2_IN6 : X_BUF
    port map (
      I => ser_in_counter_bitcount(6),
      O => NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_2_IN6
    );
  NlwBufferBlock_serinf_ff_b_en_MC_D2_PT_2_IN7 : X_BUF
    port map (
      I => ser_in_counter_bitcount(5),
      O => NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_2_IN7
    );
  NlwBufferBlock_serinf_ff_b_en_MC_D2_PT_2_IN8 : X_BUF
    port map (
      I => ser_in_counter_bitcount(8),
      O => NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_2_IN8
    );
  NlwBufferBlock_serinf_ff_b_en_MC_D2_PT_2_IN9 : X_BUF
    port map (
      I => ser_in_counter_bitcount(7),
      O => NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_2_IN9
    );
  NlwBufferBlock_serinf_ff_b_en_MC_D2_PT_2_IN10 : X_BUF
    port map (
      I => ser_in_counter_bitcount(9),
      O => NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_2_IN10
    );
  NlwBufferBlock_serinf_ff_b_en_MC_D2_PT_2_IN11 : X_BUF
    port map (
      I => ser_in_counter_STATE_FSM_FFd2_128,
      O => NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_2_IN11
    );
  NlwBufferBlock_serinf_ff_b_en_MC_D2_PT_2_IN12 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_2_IN12
    );
  NlwBufferBlock_serinf_ff_b_en_MC_D2_PT_2_IN13 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_2_IN13
    );
  NlwBufferBlock_serinf_ff_b_en_MC_D2_PT_2_IN14 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_2_IN14
    );
  NlwBufferBlock_serinf_ff_b_en_MC_D2_PT_2_IN15 : X_BUF
    port map (
      I => Vcc_91,
      O => NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_2_IN15
    );
  NlwBufferBlock_serinf_ff_b_en_MC_D2_IN0 : X_BUF
    port map (
      I => serinf_ff_b_en_MC_D2_PT_0_817,
      O => NlwBufferSignal_serinf_ff_b_en_MC_D2_IN0
    );
  NlwBufferBlock_serinf_ff_b_en_MC_D2_IN1 : X_BUF
    port map (
      I => serinf_ff_b_en_MC_D2_PT_1_818,
      O => NlwBufferSignal_serinf_ff_b_en_MC_D2_IN1
    );
  NlwBufferBlock_serinf_ff_b_en_MC_D2_IN2 : X_BUF
    port map (
      I => serinf_ff_b_en_MC_D2_PT_2_819,
      O => NlwBufferSignal_serinf_ff_b_en_MC_D2_IN2
    );
  NlwBufferBlock_serinf_ff_b_en_MC_RSTF_IN0 : X_BUF
    port map (
      I => reset_BUFR_98,
      O => NlwBufferSignal_serinf_ff_b_en_MC_RSTF_IN0
    );
  NlwBufferBlock_serinf_ff_b_en_MC_RSTF_IN1 : X_BUF
    port map (
      I => reset_BUFR_98,
      O => NlwBufferSignal_serinf_ff_b_en_MC_RSTF_IN1
    );
  NlwBufferBlock_FOOBAR1_ctinst_5_IN0 : X_BUF
    port map (
      I => ser_in_counter_STATE_or0000_127,
      O => NlwBufferSignal_FOOBAR1_ctinst_5_IN0
    );
  NlwBufferBlock_FOOBAR1_ctinst_5_IN1 : X_BUF
    port map (
      I => ser_in_counter_STATE_or0000_127,
      O => NlwBufferSignal_FOOBAR1_ctinst_5_IN1
    );
  NlwBufferBlock_FOOBAR2_ctinst_5_IN0 : X_BUF
    port map (
      I => ser_in_counter_STATE_or0000_127,
      O => NlwBufferSignal_FOOBAR2_ctinst_5_IN0
    );
  NlwBufferBlock_FOOBAR2_ctinst_5_IN1 : X_BUF
    port map (
      I => ser_in_counter_STATE_or0000_127,
      O => NlwBufferSignal_FOOBAR2_ctinst_5_IN1
    );
  NlwBufferBlock_FOOBAR3_ctinst_5_IN0 : X_BUF
    port map (
      I => reset_BUFR_98,
      O => NlwBufferSignal_FOOBAR3_ctinst_5_IN0
    );
  NlwBufferBlock_FOOBAR3_ctinst_5_IN1 : X_BUF
    port map (
      I => reset_BUFR_98,
      O => NlwBufferSignal_FOOBAR3_ctinst_5_IN1
    );
  NlwBufferBlock_FOOBAR5_ctinst_5_IN0 : X_BUF
    port map (
      I => N_PZ_794_570,
      O => NlwBufferSignal_FOOBAR5_ctinst_5_IN0
    );
  NlwBufferBlock_FOOBAR5_ctinst_5_IN1 : X_BUF
    port map (
      I => N_PZ_794_570,
      O => NlwBufferSignal_FOOBAR5_ctinst_5_IN1
    );
  NlwBufferBlock_FOOBAR5_ctinst_6_IN0 : X_BUF
    port map (
      I => N_PZ_794_570,
      O => NlwBufferSignal_FOOBAR5_ctinst_6_IN0
    );
  NlwBufferBlock_FOOBAR5_ctinst_6_IN1 : X_BUF
    port map (
      I => N_PZ_794_570,
      O => NlwBufferSignal_FOOBAR5_ctinst_6_IN1
    );
  NlwBufferBlock_FOOBAR6_ctinst_5_IN0 : X_BUF
    port map (
      I => N_PZ_794_570,
      O => NlwBufferSignal_FOOBAR6_ctinst_5_IN0
    );
  NlwBufferBlock_FOOBAR6_ctinst_5_IN1 : X_BUF
    port map (
      I => N_PZ_794_570,
      O => NlwBufferSignal_FOOBAR6_ctinst_5_IN1
    );
  NlwBufferBlock_FOOBAR7_ctinst_5_IN0 : X_BUF
    port map (
      I => reset_BUFR_98,
      O => NlwBufferSignal_FOOBAR7_ctinst_5_IN0
    );
  NlwBufferBlock_FOOBAR7_ctinst_5_IN1 : X_BUF
    port map (
      I => reset_BUFR_98,
      O => NlwBufferSignal_FOOBAR7_ctinst_5_IN1
    );
  NlwInverterBlock_done_MC_D2_PT_0_IN4 : X_INV
    port map (
      I => NlwBufferSignal_done_MC_D2_PT_0_IN4,
      O => NlwInverterSignal_done_MC_D2_PT_0_IN4
    );
  NlwInverterBlock_done_MC_D2_PT_0_IN5 : X_INV
    port map (
      I => NlwBufferSignal_done_MC_D2_PT_0_IN5,
      O => NlwInverterSignal_done_MC_D2_PT_0_IN5
    );
  NlwInverterBlock_done_MC_D2_PT_0_IN10 : X_INV
    port map (
      I => NlwBufferSignal_done_MC_D2_PT_0_IN10,
      O => NlwInverterSignal_done_MC_D2_PT_0_IN10
    );
  NlwInverterBlock_done_MC_D2_PT_0_IN12 : X_INV
    port map (
      I => NlwBufferSignal_done_MC_D2_PT_0_IN12,
      O => NlwInverterSignal_done_MC_D2_PT_0_IN12
    );
  NlwInverterBlock_done_MC_D2_PT_1_IN4 : X_INV
    port map (
      I => NlwBufferSignal_done_MC_D2_PT_1_IN4,
      O => NlwInverterSignal_done_MC_D2_PT_1_IN4
    );
  NlwInverterBlock_done_MC_D2_PT_1_IN9 : X_INV
    port map (
      I => NlwBufferSignal_done_MC_D2_PT_1_IN9,
      O => NlwInverterSignal_done_MC_D2_PT_1_IN9
    );
  NlwInverterBlock_done_MC_D2_PT_1_IN11 : X_INV
    port map (
      I => NlwBufferSignal_done_MC_D2_PT_1_IN11,
      O => NlwInverterSignal_done_MC_D2_PT_1_IN11
    );
  NlwInverterBlock_done_MC_D2_PT_2_IN4 : X_INV
    port map (
      I => NlwBufferSignal_done_MC_D2_PT_2_IN4,
      O => NlwInverterSignal_done_MC_D2_PT_2_IN4
    );
  NlwInverterBlock_done_MC_D2_PT_2_IN9 : X_INV
    port map (
      I => NlwBufferSignal_done_MC_D2_PT_2_IN9,
      O => NlwInverterSignal_done_MC_D2_PT_2_IN9
    );
  NlwInverterBlock_done_MC_D2_PT_2_IN11 : X_INV
    port map (
      I => NlwBufferSignal_done_MC_D2_PT_2_IN11,
      O => NlwInverterSignal_done_MC_D2_PT_2_IN11
    );
  NlwInverterBlock_done_MC_D2_PT_2_IN20 : X_INV
    port map (
      I => NlwBufferSignal_done_MC_D2_PT_2_IN20,
      O => NlwInverterSignal_done_MC_D2_PT_2_IN20
    );
  NlwInverterBlock_mode_data_2_MC_CE_IN0 : X_INV
    port map (
      I => NlwBufferSignal_mode_data_2_MC_CE_IN0,
      O => NlwInverterSignal_mode_data_2_MC_CE_IN0
    );
  NlwInverterBlock_mode_data_2_MC_CE_IN1 : X_INV
    port map (
      I => NlwBufferSignal_mode_data_2_MC_CE_IN1,
      O => NlwInverterSignal_mode_data_2_MC_CE_IN1
    );
  NlwInverterBlock_mode_data_1_MC_CE_IN0 : X_INV
    port map (
      I => NlwBufferSignal_mode_data_1_MC_CE_IN0,
      O => NlwInverterSignal_mode_data_1_MC_CE_IN0
    );
  NlwInverterBlock_mode_data_1_MC_CE_IN1 : X_INV
    port map (
      I => NlwBufferSignal_mode_data_1_MC_CE_IN1,
      O => NlwInverterSignal_mode_data_1_MC_CE_IN1
    );
  NlwInverterBlock_mode_data_0_MC_CE_IN0 : X_INV
    port map (
      I => NlwBufferSignal_mode_data_0_MC_CE_IN0,
      O => NlwInverterSignal_mode_data_0_MC_CE_IN0
    );
  NlwInverterBlock_mode_data_0_MC_CE_IN1 : X_INV
    port map (
      I => NlwBufferSignal_mode_data_0_MC_CE_IN1,
      O => NlwInverterSignal_mode_data_0_MC_CE_IN1
    );
  NlwInverterBlock_ser_in_serial_dout_3_MC_CE_IN0 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_serial_dout_3_MC_CE_IN0,
      O => NlwInverterSignal_ser_in_serial_dout_3_MC_CE_IN0
    );
  NlwInverterBlock_ser_in_serial_dout_3_MC_CE_IN1 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_serial_dout_3_MC_CE_IN1,
      O => NlwInverterSignal_ser_in_serial_dout_3_MC_CE_IN1
    );
  NlwInverterBlock_ser_in_serial_dout_2_MC_CE_IN0 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_serial_dout_2_MC_CE_IN0,
      O => NlwInverterSignal_ser_in_serial_dout_2_MC_CE_IN0
    );
  NlwInverterBlock_ser_in_serial_dout_2_MC_CE_IN1 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_serial_dout_2_MC_CE_IN1,
      O => NlwInverterSignal_ser_in_serial_dout_2_MC_CE_IN1
    );
  NlwInverterBlock_ser_in_serial_dout_1_MC_CE_IN0 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_serial_dout_1_MC_CE_IN0,
      O => NlwInverterSignal_ser_in_serial_dout_1_MC_CE_IN0
    );
  NlwInverterBlock_ser_in_serial_dout_1_MC_CE_IN1 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_serial_dout_1_MC_CE_IN1,
      O => NlwInverterSignal_ser_in_serial_dout_1_MC_CE_IN1
    );
  NlwInverterBlock_ser_in_serial_dout_0_MC_CE_IN0 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_serial_dout_0_MC_CE_IN0,
      O => NlwInverterSignal_ser_in_serial_dout_0_MC_CE_IN0
    );
  NlwInverterBlock_ser_in_serial_dout_0_MC_CE_IN1 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_serial_dout_0_MC_CE_IN1,
      O => NlwInverterSignal_ser_in_serial_dout_0_MC_CE_IN1
    );
  NlwInverterBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN0,
      O => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN0
    );
  NlwInverterBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN1 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN1,
      O => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN1
    );
  NlwInverterBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN2 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN2,
      O => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN2
    );
  NlwInverterBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN3 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN3,
      O => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN3
    );
  NlwInverterBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN4 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN4,
      O => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN4
    );
  NlwInverterBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN5 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN5,
      O => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN5
    );
  NlwInverterBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN6 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN6,
      O => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN6
    );
  NlwInverterBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN7 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN7,
      O => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN7
    );
  NlwInverterBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN8 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN8,
      O => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN8
    );
  NlwInverterBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN9 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN9,
      O => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN9
    );
  NlwInverterBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN10 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN10,
      O => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_0_IN10
    );
  NlwInverterBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN8 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN8,
      O => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN8
    );
  NlwInverterBlock_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN10 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN10,
      O => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd1_MC_D2_PT_1_IN10
    );
  NlwInverterBlock_ser_in_counter_latchcount_0_MC_D1_IN7 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_latchcount_0_MC_D1_IN7,
      O => NlwInverterSignal_ser_in_counter_latchcount_0_MC_D1_IN7
    );
  NlwInverterBlock_ser_in_counter_latchcount_0_MC_D1_IN9 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_latchcount_0_MC_D1_IN9,
      O => NlwInverterSignal_ser_in_counter_latchcount_0_MC_D1_IN9
    );
  NlwInverterBlock_ser_in_counter_bitcount_1_MC_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_1_MC_D_IN0,
      O => NlwInverterSignal_ser_in_counter_bitcount_1_MC_D_IN0
    );
  NlwInverterBlock_ser_in_counter_bitcount_1_MC_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_0_IN0,
      O => NlwInverterSignal_ser_in_counter_bitcount_1_MC_D2_PT_0_IN0
    );
  NlwInverterBlock_ser_in_counter_bitcount_1_MC_D2_PT_0_IN1 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_0_IN1,
      O => NlwInverterSignal_ser_in_counter_bitcount_1_MC_D2_PT_0_IN1
    );
  NlwInverterBlock_ser_in_counter_bitcount_1_MC_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN0,
      O => NlwInverterSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN0
    );
  NlwInverterBlock_ser_in_counter_bitcount_1_MC_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN1,
      O => NlwInverterSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN1
    );
  NlwInverterBlock_ser_in_counter_bitcount_1_MC_D2_PT_1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN2,
      O => NlwInverterSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN2
    );
  NlwInverterBlock_ser_in_counter_bitcount_1_MC_D2_PT_1_IN3 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN3,
      O => NlwInverterSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN3
    );
  NlwInverterBlock_ser_in_counter_bitcount_1_MC_D2_PT_1_IN4 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN4,
      O => NlwInverterSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN4
    );
  NlwInverterBlock_ser_in_counter_bitcount_1_MC_D2_PT_1_IN5 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN5,
      O => NlwInverterSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN5
    );
  NlwInverterBlock_ser_in_counter_bitcount_1_MC_D2_PT_1_IN6 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN6,
      O => NlwInverterSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN6
    );
  NlwInverterBlock_ser_in_counter_bitcount_1_MC_D2_PT_1_IN7 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN7,
      O => NlwInverterSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN7
    );
  NlwInverterBlock_ser_in_counter_bitcount_1_MC_D2_PT_1_IN8 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN8,
      O => NlwInverterSignal_ser_in_counter_bitcount_1_MC_D2_PT_1_IN8
    );
  NlwInverterBlock_ser_in_counter_bitcount_0_MC_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_0_MC_D_IN0,
      O => NlwInverterSignal_ser_in_counter_bitcount_0_MC_D_IN0
    );
  NlwInverterBlock_ser_in_counter_STATE_or0000_MC_D2_PT_1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_1_IN2,
      O => NlwInverterSignal_ser_in_counter_STATE_or0000_MC_D2_PT_1_IN2
    );
  NlwInverterBlock_ser_in_counter_STATE_or0000_MC_D2_PT_2_IN2 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_2_IN2,
      O => NlwInverterSignal_ser_in_counter_STATE_or0000_MC_D2_PT_2_IN2
    );
  NlwInverterBlock_ser_in_counter_STATE_or0000_MC_D2_PT_2_IN4 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_2_IN4,
      O => NlwInverterSignal_ser_in_counter_STATE_or0000_MC_D2_PT_2_IN4
    );
  NlwInverterBlock_ser_in_counter_STATE_or0000_MC_D2_PT_2_IN5 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_2_IN5,
      O => NlwInverterSignal_ser_in_counter_STATE_or0000_MC_D2_PT_2_IN5
    );
  NlwInverterBlock_ser_in_counter_STATE_or0000_MC_D2_PT_3_IN1 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_3_IN1,
      O => NlwInverterSignal_ser_in_counter_STATE_or0000_MC_D2_PT_3_IN1
    );
  NlwInverterBlock_ser_in_counter_STATE_or0000_MC_D2_PT_4_IN1 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_4_IN1,
      O => NlwInverterSignal_ser_in_counter_STATE_or0000_MC_D2_PT_4_IN1
    );
  NlwInverterBlock_ser_in_counter_STATE_or0000_MC_D2_PT_4_IN4 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_4_IN4,
      O => NlwInverterSignal_ser_in_counter_STATE_or0000_MC_D2_PT_4_IN4
    );
  NlwInverterBlock_ser_in_counter_STATE_or0000_MC_D2_PT_4_IN5 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_STATE_or0000_MC_D2_PT_4_IN5,
      O => NlwInverterSignal_ser_in_counter_STATE_or0000_MC_D2_PT_4_IN5
    );
  NlwInverterBlock_res_reg_0_MC_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_res_reg_0_MC_D2_PT_0_IN0,
      O => NlwInverterSignal_res_reg_0_MC_D2_PT_0_IN0
    );
  NlwInverterBlock_res_reg_0_MC_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_res_reg_0_MC_D2_PT_1_IN0,
      O => NlwInverterSignal_res_reg_0_MC_D2_PT_1_IN0
    );
  NlwInverterBlock_grclkgen_tgen_cnt_0_MC_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_tgen_cnt_0_MC_D_IN0,
      O => NlwInverterSignal_grclkgen_tgen_cnt_0_MC_D_IN0
    );
  NlwInverterBlock_res_reg_10_MC_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_res_reg_10_MC_D2_PT_0_IN0,
      O => NlwInverterSignal_res_reg_10_MC_D2_PT_0_IN0
    );
  NlwInverterBlock_res_reg_10_MC_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_res_reg_10_MC_D2_PT_1_IN0,
      O => NlwInverterSignal_res_reg_10_MC_D2_PT_1_IN0
    );
  NlwInverterBlock_res_reg_1_MC_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_res_reg_1_MC_D2_PT_0_IN0,
      O => NlwInverterSignal_res_reg_1_MC_D2_PT_0_IN0
    );
  NlwInverterBlock_res_reg_1_MC_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_res_reg_1_MC_D2_PT_1_IN0,
      O => NlwInverterSignal_res_reg_1_MC_D2_PT_1_IN0
    );
  NlwInverterBlock_res_reg_2_MC_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_res_reg_2_MC_D2_PT_0_IN0,
      O => NlwInverterSignal_res_reg_2_MC_D2_PT_0_IN0
    );
  NlwInverterBlock_res_reg_2_MC_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_res_reg_2_MC_D2_PT_1_IN0,
      O => NlwInverterSignal_res_reg_2_MC_D2_PT_1_IN0
    );
  NlwInverterBlock_res_reg_3_MC_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_res_reg_3_MC_D2_PT_0_IN0,
      O => NlwInverterSignal_res_reg_3_MC_D2_PT_0_IN0
    );
  NlwInverterBlock_res_reg_3_MC_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_res_reg_3_MC_D2_PT_1_IN0,
      O => NlwInverterSignal_res_reg_3_MC_D2_PT_1_IN0
    );
  NlwInverterBlock_res_reg_4_MC_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_res_reg_4_MC_D2_PT_0_IN0,
      O => NlwInverterSignal_res_reg_4_MC_D2_PT_0_IN0
    );
  NlwInverterBlock_res_reg_4_MC_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_res_reg_4_MC_D2_PT_1_IN0,
      O => NlwInverterSignal_res_reg_4_MC_D2_PT_1_IN0
    );
  NlwInverterBlock_res_reg_5_MC_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_res_reg_5_MC_D2_PT_0_IN0,
      O => NlwInverterSignal_res_reg_5_MC_D2_PT_0_IN0
    );
  NlwInverterBlock_res_reg_5_MC_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_res_reg_5_MC_D2_PT_1_IN0,
      O => NlwInverterSignal_res_reg_5_MC_D2_PT_1_IN0
    );
  NlwInverterBlock_res_reg_6_MC_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_res_reg_6_MC_D2_PT_0_IN0,
      O => NlwInverterSignal_res_reg_6_MC_D2_PT_0_IN0
    );
  NlwInverterBlock_res_reg_6_MC_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_res_reg_6_MC_D2_PT_1_IN0,
      O => NlwInverterSignal_res_reg_6_MC_D2_PT_1_IN0
    );
  NlwInverterBlock_res_reg_7_MC_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_res_reg_7_MC_D2_PT_0_IN0,
      O => NlwInverterSignal_res_reg_7_MC_D2_PT_0_IN0
    );
  NlwInverterBlock_res_reg_7_MC_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_res_reg_7_MC_D2_PT_1_IN0,
      O => NlwInverterSignal_res_reg_7_MC_D2_PT_1_IN0
    );
  NlwInverterBlock_res_reg_8_MC_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_res_reg_8_MC_D2_PT_0_IN0,
      O => NlwInverterSignal_res_reg_8_MC_D2_PT_0_IN0
    );
  NlwInverterBlock_res_reg_8_MC_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_res_reg_8_MC_D2_PT_1_IN0,
      O => NlwInverterSignal_res_reg_8_MC_D2_PT_1_IN0
    );
  NlwInverterBlock_res_reg_9_MC_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_res_reg_9_MC_D2_PT_0_IN0,
      O => NlwInverterSignal_res_reg_9_MC_D2_PT_0_IN0
    );
  NlwInverterBlock_res_reg_9_MC_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_res_reg_9_MC_D2_PT_1_IN0,
      O => NlwInverterSignal_res_reg_9_MC_D2_PT_1_IN0
    );
  NlwInverterBlock_res_reg_11_MC_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_res_reg_11_MC_D2_PT_0_IN0,
      O => NlwInverterSignal_res_reg_11_MC_D2_PT_0_IN0
    );
  NlwInverterBlock_res_reg_11_MC_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_res_reg_11_MC_D2_PT_1_IN0,
      O => NlwInverterSignal_res_reg_11_MC_D2_PT_1_IN0
    );
  NlwInverterBlock_res_reg_12_MC_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_res_reg_12_MC_D2_PT_0_IN0,
      O => NlwInverterSignal_res_reg_12_MC_D2_PT_0_IN0
    );
  NlwInverterBlock_res_reg_12_MC_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_res_reg_12_MC_D2_PT_1_IN0,
      O => NlwInverterSignal_res_reg_12_MC_D2_PT_1_IN0
    );
  NlwInverterBlock_res_reg_13_MC_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_res_reg_13_MC_D2_PT_0_IN0,
      O => NlwInverterSignal_res_reg_13_MC_D2_PT_0_IN0
    );
  NlwInverterBlock_res_reg_13_MC_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_res_reg_13_MC_D2_PT_1_IN0,
      O => NlwInverterSignal_res_reg_13_MC_D2_PT_1_IN0
    );
  NlwInverterBlock_res_reg_14_MC_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_res_reg_14_MC_D2_PT_0_IN0,
      O => NlwInverterSignal_res_reg_14_MC_D2_PT_0_IN0
    );
  NlwInverterBlock_res_reg_14_MC_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_res_reg_14_MC_D2_PT_1_IN0,
      O => NlwInverterSignal_res_reg_14_MC_D2_PT_1_IN0
    );
  NlwInverterBlock_res_reg_15_MC_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_res_reg_15_MC_D2_PT_0_IN0,
      O => NlwInverterSignal_res_reg_15_MC_D2_PT_0_IN0
    );
  NlwInverterBlock_res_reg_15_MC_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_res_reg_15_MC_D2_PT_1_IN0,
      O => NlwInverterSignal_res_reg_15_MC_D2_PT_1_IN0
    );
  NlwInverterBlock_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_1_IN1,
      O => NlwInverterSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_1_IN1
    );
  NlwInverterBlock_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_1_IN2,
      O => NlwInverterSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_1_IN2
    );
  NlwInverterBlock_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_2_IN0,
      O => NlwInverterSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_2_IN0
    );
  NlwInverterBlock_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_2_IN2 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_2_IN2,
      O => NlwInverterSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_2_IN2
    );
  NlwInverterBlock_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_3_IN0 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_3_IN0,
      O => NlwInverterSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_3_IN0
    );
  NlwInverterBlock_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_3_IN1 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_3_IN1,
      O => NlwInverterSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0000_MC_D2_PT_3_IN1
    );
  NlwInverterBlock_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_1_IN1,
      O => NlwInverterSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_1_IN1
    );
  NlwInverterBlock_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_1_IN2,
      O => NlwInverterSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_1_IN2
    );
  NlwInverterBlock_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_2_IN0,
      O => NlwInverterSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_2_IN0
    );
  NlwInverterBlock_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_2_IN2 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_2_IN2,
      O => NlwInverterSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_2_IN2
    );
  NlwInverterBlock_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_3_IN0 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_3_IN0,
      O => NlwInverterSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_3_IN0
    );
  NlwInverterBlock_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_3_IN1 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_3_IN1,
      O => NlwInverterSignal_ser_in_comparator_Mxor_addr_valid_xor0000_xor0001_MC_D2_PT_3_IN1
    );
  NlwInverterBlock_ser_in_serial_dout_7_MC_CE_IN0 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_serial_dout_7_MC_CE_IN0,
      O => NlwInverterSignal_ser_in_serial_dout_7_MC_CE_IN0
    );
  NlwInverterBlock_ser_in_serial_dout_7_MC_CE_IN1 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_serial_dout_7_MC_CE_IN1,
      O => NlwInverterSignal_ser_in_serial_dout_7_MC_CE_IN1
    );
  NlwInverterBlock_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN0,
      O => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN0
    );
  NlwInverterBlock_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN2 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN2,
      O => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN2
    );
  NlwInverterBlock_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN3 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN3,
      O => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN3
    );
  NlwInverterBlock_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN4 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN4,
      O => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN4
    );
  NlwInverterBlock_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN5 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN5,
      O => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN5
    );
  NlwInverterBlock_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN6 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN6,
      O => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN6
    );
  NlwInverterBlock_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN7 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN7,
      O => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN7
    );
  NlwInverterBlock_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN8 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN8,
      O => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN8
    );
  NlwInverterBlock_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN9 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN9,
      O => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_0_IN9
    );
  NlwInverterBlock_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN0,
      O => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN0
    );
  NlwInverterBlock_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN4 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN4,
      O => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN4
    );
  NlwInverterBlock_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN5 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN5,
      O => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN5
    );
  NlwInverterBlock_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN6 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN6,
      O => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN6
    );
  NlwInverterBlock_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN7 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN7,
      O => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN7
    );
  NlwInverterBlock_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN8 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN8,
      O => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN8
    );
  NlwInverterBlock_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN9 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN9,
      O => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN9
    );
  NlwInverterBlock_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN10 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN10,
      O => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN10
    );
  NlwInverterBlock_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN11 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN11,
      O => NlwInverterSignal_ser_in_counter_STATE_FSM_FFd2_MC_D2_PT_1_IN11
    );
  NlwInverterBlock_ser_in_counter_bitcount_3_MC_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D_IN0,
      O => NlwInverterSignal_ser_in_counter_bitcount_3_MC_D_IN0
    );
  NlwInverterBlock_ser_in_counter_bitcount_3_MC_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_0_IN0,
      O => NlwInverterSignal_ser_in_counter_bitcount_3_MC_D2_PT_0_IN0
    );
  NlwInverterBlock_ser_in_counter_bitcount_3_MC_D2_PT_0_IN1 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_0_IN1,
      O => NlwInverterSignal_ser_in_counter_bitcount_3_MC_D2_PT_0_IN1
    );
  NlwInverterBlock_ser_in_counter_bitcount_3_MC_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_1_IN0,
      O => NlwInverterSignal_ser_in_counter_bitcount_3_MC_D2_PT_1_IN0
    );
  NlwInverterBlock_ser_in_counter_bitcount_3_MC_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_1_IN1,
      O => NlwInverterSignal_ser_in_counter_bitcount_3_MC_D2_PT_1_IN1
    );
  NlwInverterBlock_ser_in_counter_bitcount_3_MC_D2_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_2_IN0,
      O => NlwInverterSignal_ser_in_counter_bitcount_3_MC_D2_PT_2_IN0
    );
  NlwInverterBlock_ser_in_counter_bitcount_3_MC_D2_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_2_IN1,
      O => NlwInverterSignal_ser_in_counter_bitcount_3_MC_D2_PT_2_IN1
    );
  NlwInverterBlock_ser_in_counter_bitcount_3_MC_D2_PT_3_IN0 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN0,
      O => NlwInverterSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN0
    );
  NlwInverterBlock_ser_in_counter_bitcount_3_MC_D2_PT_3_IN1 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN1,
      O => NlwInverterSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN1
    );
  NlwInverterBlock_ser_in_counter_bitcount_3_MC_D2_PT_3_IN2 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN2,
      O => NlwInverterSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN2
    );
  NlwInverterBlock_ser_in_counter_bitcount_3_MC_D2_PT_3_IN3 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN3,
      O => NlwInverterSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN3
    );
  NlwInverterBlock_ser_in_counter_bitcount_3_MC_D2_PT_3_IN4 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN4,
      O => NlwInverterSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN4
    );
  NlwInverterBlock_ser_in_counter_bitcount_3_MC_D2_PT_3_IN5 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN5,
      O => NlwInverterSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN5
    );
  NlwInverterBlock_ser_in_counter_bitcount_3_MC_D2_PT_3_IN6 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN6,
      O => NlwInverterSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN6
    );
  NlwInverterBlock_ser_in_counter_bitcount_3_MC_D2_PT_3_IN7 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN7,
      O => NlwInverterSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN7
    );
  NlwInverterBlock_ser_in_counter_bitcount_3_MC_D2_PT_3_IN8 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN8,
      O => NlwInverterSignal_ser_in_counter_bitcount_3_MC_D2_PT_3_IN8
    );
  NlwInverterBlock_ser_in_counter_bitcount_6_MC_D2_PT_1_IN8 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_6_MC_D2_PT_1_IN8,
      O => NlwInverterSignal_ser_in_counter_bitcount_6_MC_D2_PT_1_IN8
    );
  NlwInverterBlock_ser_in_counter_bitcount_5_MC_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_5_MC_D_IN0,
      O => NlwInverterSignal_ser_in_counter_bitcount_5_MC_D_IN0
    );
  NlwInverterBlock_ser_in_counter_bitcount_5_MC_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_PT_0_IN0,
      O => NlwInverterSignal_ser_in_counter_bitcount_5_MC_D2_PT_0_IN0
    );
  NlwInverterBlock_ser_in_counter_bitcount_5_MC_D2_PT_0_IN1 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_PT_0_IN1,
      O => NlwInverterSignal_ser_in_counter_bitcount_5_MC_D2_PT_0_IN1
    );
  NlwInverterBlock_ser_in_counter_bitcount_5_MC_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_PT_1_IN0,
      O => NlwInverterSignal_ser_in_counter_bitcount_5_MC_D2_PT_1_IN0
    );
  NlwInverterBlock_ser_in_counter_bitcount_5_MC_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_PT_1_IN1,
      O => NlwInverterSignal_ser_in_counter_bitcount_5_MC_D2_PT_1_IN1
    );
  NlwInverterBlock_ser_in_counter_bitcount_5_MC_D2_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_PT_2_IN0,
      O => NlwInverterSignal_ser_in_counter_bitcount_5_MC_D2_PT_2_IN0
    );
  NlwInverterBlock_ser_in_counter_bitcount_5_MC_D2_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_PT_2_IN1,
      O => NlwInverterSignal_ser_in_counter_bitcount_5_MC_D2_PT_2_IN1
    );
  NlwInverterBlock_ser_in_counter_bitcount_5_MC_D2_PT_3_IN0 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_PT_3_IN0,
      O => NlwInverterSignal_ser_in_counter_bitcount_5_MC_D2_PT_3_IN0
    );
  NlwInverterBlock_ser_in_counter_bitcount_5_MC_D2_PT_3_IN1 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_PT_3_IN1,
      O => NlwInverterSignal_ser_in_counter_bitcount_5_MC_D2_PT_3_IN1
    );
  NlwInverterBlock_ser_in_counter_bitcount_5_MC_D2_PT_4_IN0 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_PT_4_IN0,
      O => NlwInverterSignal_ser_in_counter_bitcount_5_MC_D2_PT_4_IN0
    );
  NlwInverterBlock_ser_in_counter_bitcount_5_MC_D2_PT_4_IN1 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_PT_4_IN1,
      O => NlwInverterSignal_ser_in_counter_bitcount_5_MC_D2_PT_4_IN1
    );
  NlwInverterBlock_ser_in_counter_bitcount_5_MC_D2_PT_5_IN2 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_PT_5_IN2,
      O => NlwInverterSignal_ser_in_counter_bitcount_5_MC_D2_PT_5_IN2
    );
  NlwInverterBlock_ser_in_counter_bitcount_5_MC_D2_PT_5_IN4 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_5_MC_D2_PT_5_IN4,
      O => NlwInverterSignal_ser_in_counter_bitcount_5_MC_D2_PT_5_IN4
    );
  NlwInverterBlock_ser_in_counter_bitcount_8_MC_D2_PT_1_IN7 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN7,
      O => NlwInverterSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN7
    );
  NlwInverterBlock_ser_in_counter_bitcount_8_MC_D2_PT_1_IN9 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN9,
      O => NlwInverterSignal_ser_in_counter_bitcount_8_MC_D2_PT_1_IN9
    );
  NlwInverterBlock_ser_in_counter_bitcount_9_MC_D2_PT_1_IN7 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN7,
      O => NlwInverterSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN7
    );
  NlwInverterBlock_ser_in_counter_bitcount_9_MC_D2_PT_1_IN9 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN9,
      O => NlwInverterSignal_ser_in_counter_bitcount_9_MC_D2_PT_1_IN9
    );
  NlwInverterBlock_ser_in_counter_latchcount_1_MC_D1_IN8 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_latchcount_1_MC_D1_IN8,
      O => NlwInverterSignal_ser_in_counter_latchcount_1_MC_D1_IN8
    );
  NlwInverterBlock_ser_in_counter_latchcount_1_MC_D1_IN10 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_latchcount_1_MC_D1_IN10,
      O => NlwInverterSignal_ser_in_counter_latchcount_1_MC_D1_IN10
    );
  NlwInverterBlock_ser_in_counter_latchcount_2_MC_D1_IN8 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_latchcount_2_MC_D1_IN8,
      O => NlwInverterSignal_ser_in_counter_latchcount_2_MC_D1_IN8
    );
  NlwInverterBlock_ser_in_counter_latchcount_2_MC_D1_IN10 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_latchcount_2_MC_D1_IN10,
      O => NlwInverterSignal_ser_in_counter_latchcount_2_MC_D1_IN10
    );
  NlwInverterBlock_ser_in_counter_latchcount_3_MC_D1_IN8 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_latchcount_3_MC_D1_IN8,
      O => NlwInverterSignal_ser_in_counter_latchcount_3_MC_D1_IN8
    );
  NlwInverterBlock_ser_in_counter_latchcount_3_MC_D1_IN10 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_latchcount_3_MC_D1_IN10,
      O => NlwInverterSignal_ser_in_counter_latchcount_3_MC_D1_IN10
    );
  NlwInverterBlock_ser_in_counter_latchcount_4_MC_D1_IN8 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_latchcount_4_MC_D1_IN8,
      O => NlwInverterSignal_ser_in_counter_latchcount_4_MC_D1_IN8
    );
  NlwInverterBlock_ser_in_counter_latchcount_4_MC_D1_IN10 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_latchcount_4_MC_D1_IN10,
      O => NlwInverterSignal_ser_in_counter_latchcount_4_MC_D1_IN10
    );
  NlwInverterBlock_ser_in_counter_latchcount_5_MC_D1_IN8 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_latchcount_5_MC_D1_IN8,
      O => NlwInverterSignal_ser_in_counter_latchcount_5_MC_D1_IN8
    );
  NlwInverterBlock_ser_in_counter_latchcount_5_MC_D1_IN10 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_latchcount_5_MC_D1_IN10,
      O => NlwInverterSignal_ser_in_counter_latchcount_5_MC_D1_IN10
    );
  NlwInverterBlock_ser_in_counter_latchcount_6_MC_D1_IN8 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN8,
      O => NlwInverterSignal_ser_in_counter_latchcount_6_MC_D1_IN8
    );
  NlwInverterBlock_ser_in_counter_latchcount_6_MC_D1_IN10 : X_INV
    port map (
      I => NlwBufferSignal_ser_in_counter_latchcount_6_MC_D1_IN10,
      O => NlwInverterSignal_ser_in_counter_latchcount_6_MC_D1_IN10
    );
  NlwInverterBlock_N_PZ_383_MC_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_N_PZ_383_MC_D2_PT_0_IN0,
      O => NlwInverterSignal_N_PZ_383_MC_D2_PT_0_IN0
    );
  NlwInverterBlock_N_PZ_383_MC_D2_PT_0_IN1 : X_INV
    port map (
      I => NlwBufferSignal_N_PZ_383_MC_D2_PT_0_IN1,
      O => NlwInverterSignal_N_PZ_383_MC_D2_PT_0_IN1
    );
  NlwInverterBlock_N_PZ_383_MC_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_N_PZ_383_MC_D2_PT_1_IN0,
      O => NlwInverterSignal_N_PZ_383_MC_D2_PT_1_IN0
    );
  NlwInverterBlock_N_PZ_383_MC_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_N_PZ_383_MC_D2_PT_1_IN1,
      O => NlwInverterSignal_N_PZ_383_MC_D2_PT_1_IN1
    );
  NlwInverterBlock_panel_select_MC_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_panel_select_MC_D_IN0,
      O => NlwInverterSignal_panel_select_MC_D_IN0
    );
  NlwInverterBlock_panel_select_MC_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_panel_select_MC_D2_PT_0_IN0,
      O => NlwInverterSignal_panel_select_MC_D2_PT_0_IN0
    );
  NlwInverterBlock_panel_select_MC_D2_PT_0_IN1 : X_INV
    port map (
      I => NlwBufferSignal_panel_select_MC_D2_PT_0_IN1,
      O => NlwInverterSignal_panel_select_MC_D2_PT_0_IN1
    );
  NlwInverterBlock_panel_select_MC_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_panel_select_MC_D2_PT_1_IN1,
      O => NlwInverterSignal_panel_select_MC_D2_PT_1_IN1
    );
  NlwInverterBlock_panel_select_MC_D2_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_panel_select_MC_D2_PT_2_IN0,
      O => NlwInverterSignal_panel_select_MC_D2_PT_2_IN0
    );
  NlwInverterBlock_panel_select_MC_D2_PT_3_IN1 : X_INV
    port map (
      I => NlwBufferSignal_panel_select_MC_D2_PT_3_IN1,
      O => NlwInverterSignal_panel_select_MC_D2_PT_3_IN1
    );
  NlwInverterBlock_panel_select_MC_D2_PT_3_IN2 : X_INV
    port map (
      I => NlwBufferSignal_panel_select_MC_D2_PT_3_IN2,
      O => NlwInverterSignal_panel_select_MC_D2_PT_3_IN2
    );
  NlwInverterBlock_panel_select_MC_D2_PT_4_IN1 : X_INV
    port map (
      I => NlwBufferSignal_panel_select_MC_D2_PT_4_IN1,
      O => NlwInverterSignal_panel_select_MC_D2_PT_4_IN1
    );
  NlwInverterBlock_panel_select_MC_D2_PT_4_IN2 : X_INV
    port map (
      I => NlwBufferSignal_panel_select_MC_D2_PT_4_IN2,
      O => NlwInverterSignal_panel_select_MC_D2_PT_4_IN2
    );
  NlwInverterBlock_panel_select_MC_D2_PT_5_IN0 : X_INV
    port map (
      I => NlwBufferSignal_panel_select_MC_D2_PT_5_IN0,
      O => NlwInverterSignal_panel_select_MC_D2_PT_5_IN0
    );
  NlwInverterBlock_panel_select_MC_D2_PT_5_IN1 : X_INV
    port map (
      I => NlwBufferSignal_panel_select_MC_D2_PT_5_IN1,
      O => NlwInverterSignal_panel_select_MC_D2_PT_5_IN1
    );
  NlwInverterBlock_panel_select_MC_D2_PT_6_IN0 : X_INV
    port map (
      I => NlwBufferSignal_panel_select_MC_D2_PT_6_IN0,
      O => NlwInverterSignal_panel_select_MC_D2_PT_6_IN0
    );
  NlwInverterBlock_panel_select_MC_D2_PT_6_IN1 : X_INV
    port map (
      I => NlwBufferSignal_panel_select_MC_D2_PT_6_IN1,
      O => NlwInverterSignal_panel_select_MC_D2_PT_6_IN1
    );
  NlwInverterBlock_panel_select_MC_D2_PT_7_IN1 : X_INV
    port map (
      I => NlwBufferSignal_panel_select_MC_D2_PT_7_IN1,
      O => NlwInverterSignal_panel_select_MC_D2_PT_7_IN1
    );
  NlwInverterBlock_panel_select_MC_D2_PT_7_IN2 : X_INV
    port map (
      I => NlwBufferSignal_panel_select_MC_D2_PT_7_IN2,
      O => NlwInverterSignal_panel_select_MC_D2_PT_7_IN2
    );
  NlwInverterBlock_panel_select_MC_D2_PT_8_IN1 : X_INV
    port map (
      I => NlwBufferSignal_panel_select_MC_D2_PT_8_IN1,
      O => NlwInverterSignal_panel_select_MC_D2_PT_8_IN1
    );
  NlwInverterBlock_panel_select_MC_D2_PT_8_IN2 : X_INV
    port map (
      I => NlwBufferSignal_panel_select_MC_D2_PT_8_IN2,
      O => NlwInverterSignal_panel_select_MC_D2_PT_8_IN2
    );
  NlwInverterBlock_panel_select_MC_D2_PT_9_IN0 : X_INV
    port map (
      I => NlwBufferSignal_panel_select_MC_D2_PT_9_IN0,
      O => NlwInverterSignal_panel_select_MC_D2_PT_9_IN0
    );
  NlwInverterBlock_panel_select_MC_D2_PT_9_IN1 : X_INV
    port map (
      I => NlwBufferSignal_panel_select_MC_D2_PT_9_IN1,
      O => NlwInverterSignal_panel_select_MC_D2_PT_9_IN1
    );
  NlwInverterBlock_panel_select_MC_D2_PT_10_IN0 : X_INV
    port map (
      I => NlwBufferSignal_panel_select_MC_D2_PT_10_IN0,
      O => NlwInverterSignal_panel_select_MC_D2_PT_10_IN0
    );
  NlwInverterBlock_panel_select_MC_D2_PT_10_IN1 : X_INV
    port map (
      I => NlwBufferSignal_panel_select_MC_D2_PT_10_IN1,
      O => NlwInverterSignal_panel_select_MC_D2_PT_10_IN1
    );
  NlwInverterBlock_panel_select_MC_D2_PT_11_IN1 : X_INV
    port map (
      I => NlwBufferSignal_panel_select_MC_D2_PT_11_IN1,
      O => NlwInverterSignal_panel_select_MC_D2_PT_11_IN1
    );
  NlwInverterBlock_panel_select_MC_D2_PT_11_IN2 : X_INV
    port map (
      I => NlwBufferSignal_panel_select_MC_D2_PT_11_IN2,
      O => NlwInverterSignal_panel_select_MC_D2_PT_11_IN2
    );
  NlwInverterBlock_panel_select_MC_D2_PT_12_IN1 : X_INV
    port map (
      I => NlwBufferSignal_panel_select_MC_D2_PT_12_IN1,
      O => NlwInverterSignal_panel_select_MC_D2_PT_12_IN1
    );
  NlwInverterBlock_panel_select_MC_D2_PT_12_IN2 : X_INV
    port map (
      I => NlwBufferSignal_panel_select_MC_D2_PT_12_IN2,
      O => NlwInverterSignal_panel_select_MC_D2_PT_12_IN2
    );
  NlwInverterBlock_panel_select_MC_D2_PT_13_IN0 : X_INV
    port map (
      I => NlwBufferSignal_panel_select_MC_D2_PT_13_IN0,
      O => NlwInverterSignal_panel_select_MC_D2_PT_13_IN0
    );
  NlwInverterBlock_panel_select_MC_D2_PT_13_IN1 : X_INV
    port map (
      I => NlwBufferSignal_panel_select_MC_D2_PT_13_IN1,
      O => NlwInverterSignal_panel_select_MC_D2_PT_13_IN1
    );
  NlwInverterBlock_panel_select_MC_D2_PT_14_IN0 : X_INV
    port map (
      I => NlwBufferSignal_panel_select_MC_D2_PT_14_IN0,
      O => NlwInverterSignal_panel_select_MC_D2_PT_14_IN0
    );
  NlwInverterBlock_panel_select_MC_D2_PT_14_IN1 : X_INV
    port map (
      I => NlwBufferSignal_panel_select_MC_D2_PT_14_IN1,
      O => NlwInverterSignal_panel_select_MC_D2_PT_14_IN1
    );
  NlwInverterBlock_panel_select_MC_D2_PT_15_IN1 : X_INV
    port map (
      I => NlwBufferSignal_panel_select_MC_D2_PT_15_IN1,
      O => NlwInverterSignal_panel_select_MC_D2_PT_15_IN1
    );
  NlwInverterBlock_panel_select_MC_D2_PT_15_IN2 : X_INV
    port map (
      I => NlwBufferSignal_panel_select_MC_D2_PT_15_IN2,
      O => NlwInverterSignal_panel_select_MC_D2_PT_15_IN2
    );
  NlwInverterBlock_panel_select_MC_D2_PT_16_IN1 : X_INV
    port map (
      I => NlwBufferSignal_panel_select_MC_D2_PT_16_IN1,
      O => NlwInverterSignal_panel_select_MC_D2_PT_16_IN1
    );
  NlwInverterBlock_panel_select_MC_D2_PT_16_IN2 : X_INV
    port map (
      I => NlwBufferSignal_panel_select_MC_D2_PT_16_IN2,
      O => NlwInverterSignal_panel_select_MC_D2_PT_16_IN2
    );
  NlwInverterBlock_panel_select_MC_D2_PT_17_IN0 : X_INV
    port map (
      I => NlwBufferSignal_panel_select_MC_D2_PT_17_IN0,
      O => NlwInverterSignal_panel_select_MC_D2_PT_17_IN0
    );
  NlwInverterBlock_panel_select_MC_D2_PT_17_IN1 : X_INV
    port map (
      I => NlwBufferSignal_panel_select_MC_D2_PT_17_IN1,
      O => NlwInverterSignal_panel_select_MC_D2_PT_17_IN1
    );
  NlwInverterBlock_panel_select_MC_D2_PT_18_IN0 : X_INV
    port map (
      I => NlwBufferSignal_panel_select_MC_D2_PT_18_IN0,
      O => NlwInverterSignal_panel_select_MC_D2_PT_18_IN0
    );
  NlwInverterBlock_panel_select_MC_D2_PT_18_IN1 : X_INV
    port map (
      I => NlwBufferSignal_panel_select_MC_D2_PT_18_IN1,
      O => NlwInverterSignal_panel_select_MC_D2_PT_18_IN1
    );
  NlwInverterBlock_grayscale_clk_MC_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_grayscale_clk_MC_D_IN0,
      O => NlwInverterSignal_grayscale_clk_MC_D_IN0
    );
  NlwInverterBlock_grayscale_clk_MC_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_grayscale_clk_MC_D2_PT_0_IN0,
      O => NlwInverterSignal_grayscale_clk_MC_D2_PT_0_IN0
    );
  NlwInverterBlock_grayscale_clk_MC_D2_PT_0_IN1 : X_INV
    port map (
      I => NlwBufferSignal_grayscale_clk_MC_D2_PT_0_IN1,
      O => NlwInverterSignal_grayscale_clk_MC_D2_PT_0_IN1
    );
  NlwInverterBlock_grayscale_clk_MC_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_grayscale_clk_MC_D2_PT_1_IN0,
      O => NlwInverterSignal_grayscale_clk_MC_D2_PT_1_IN0
    );
  NlwInverterBlock_grayscale_clk_MC_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_grayscale_clk_MC_D2_PT_1_IN1,
      O => NlwInverterSignal_grayscale_clk_MC_D2_PT_1_IN1
    );
  NlwInverterBlock_grayscale_clk_MC_D2_PT_2_IN2 : X_INV
    port map (
      I => NlwBufferSignal_grayscale_clk_MC_D2_PT_2_IN2,
      O => NlwInverterSignal_grayscale_clk_MC_D2_PT_2_IN2
    );
  NlwInverterBlock_grclkgen_grclk_ctr_sig_MC_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_grclk_ctr_sig_MC_D2_PT_1_IN1,
      O => NlwInverterSignal_grclkgen_grclk_ctr_sig_MC_D2_PT_1_IN1
    );
  NlwInverterBlock_N_PZ_371_MC_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_N_PZ_371_MC_D2_PT_0_IN0,
      O => NlwInverterSignal_N_PZ_371_MC_D2_PT_0_IN0
    );
  NlwInverterBlock_grclkgen_sync_proc_sclk_MC_D1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_sync_proc_sclk_MC_D1_IN0,
      O => NlwInverterSignal_grclkgen_sync_proc_sclk_MC_D1_IN0
    );
  NlwInverterBlock_grclkgen_sync_proc_sclk_MC_D1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_sync_proc_sclk_MC_D1_IN2,
      O => NlwInverterSignal_grclkgen_sync_proc_sclk_MC_D1_IN2
    );
  NlwInverterBlock_grclkgen_pulser_curState_FSM_FFd1_MC_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_pulser_curState_FSM_FFd1_MC_D_IN0,
      O => NlwInverterSignal_grclkgen_pulser_curState_FSM_FFd1_MC_D_IN0
    );
  NlwInverterBlock_grclkgen_pulser_curState_FSM_FFd1_MC_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_pulser_curState_FSM_FFd1_MC_D2_PT_0_IN0,
      O => NlwInverterSignal_grclkgen_pulser_curState_FSM_FFd1_MC_D2_PT_0_IN0
    );
  NlwInverterBlock_grclkgen_pulser_curState_FSM_FFd1_MC_D2_PT_0_IN1 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_pulser_curState_FSM_FFd1_MC_D2_PT_0_IN1,
      O => NlwInverterSignal_grclkgen_pulser_curState_FSM_FFd1_MC_D2_PT_0_IN1
    );
  NlwInverterBlock_grclkgen_pulser_curState_FSM_FFd1_MC_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_pulser_curState_FSM_FFd1_MC_D2_PT_1_IN0,
      O => NlwInverterSignal_grclkgen_pulser_curState_FSM_FFd1_MC_D2_PT_1_IN0
    );
  NlwInverterBlock_grclkgen_pulser_curState_FSM_FFd1_MC_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_pulser_curState_FSM_FFd1_MC_D2_PT_1_IN1,
      O => NlwInverterSignal_grclkgen_pulser_curState_FSM_FFd1_MC_D2_PT_1_IN1
    );
  NlwInverterBlock_N_PZ_794_MC_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_N_PZ_794_MC_D2_PT_1_IN1,
      O => NlwInverterSignal_N_PZ_794_MC_D2_PT_1_IN1
    );
  NlwInverterBlock_grclkgen_proc_sclk_hlf_MC_D2_PT_0_IN3 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_proc_sclk_hlf_MC_D2_PT_0_IN3,
      O => NlwInverterSignal_grclkgen_proc_sclk_hlf_MC_D2_PT_0_IN3
    );
  NlwInverterBlock_grclkgen_proc_sclk_hlf_MC_D2_PT_1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_proc_sclk_hlf_MC_D2_PT_1_IN2,
      O => NlwInverterSignal_grclkgen_proc_sclk_hlf_MC_D2_PT_1_IN2
    );
  NlwInverterBlock_latch_out1_MC_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_latch_out1_MC_D2_PT_0_IN0,
      O => NlwInverterSignal_latch_out1_MC_D2_PT_0_IN0
    );
  NlwInverterBlock_latch_out1_MC_D2_PT_1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_latch_out1_MC_D2_PT_1_IN2,
      O => NlwInverterSignal_latch_out1_MC_D2_PT_1_IN2
    );
  NlwInverterBlock_latch_out1_MC_D2_PT_1_IN7 : X_INV
    port map (
      I => NlwBufferSignal_latch_out1_MC_D2_PT_1_IN7,
      O => NlwInverterSignal_latch_out1_MC_D2_PT_1_IN7
    );
  NlwInverterBlock_latch_out1_MC_D2_PT_1_IN9 : X_INV
    port map (
      I => NlwBufferSignal_latch_out1_MC_D2_PT_1_IN9,
      O => NlwInverterSignal_latch_out1_MC_D2_PT_1_IN9
    );
  NlwInverterBlock_latch_out1_MC_D2_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_latch_out1_MC_D2_PT_2_IN1,
      O => NlwInverterSignal_latch_out1_MC_D2_PT_2_IN1
    );
  NlwInverterBlock_latch_out1_MC_D2_PT_2_IN7 : X_INV
    port map (
      I => NlwBufferSignal_latch_out1_MC_D2_PT_2_IN7,
      O => NlwInverterSignal_latch_out1_MC_D2_PT_2_IN7
    );
  NlwInverterBlock_latch_out1_MC_D2_PT_2_IN9 : X_INV
    port map (
      I => NlwBufferSignal_latch_out1_MC_D2_PT_2_IN9,
      O => NlwInverterSignal_latch_out1_MC_D2_PT_2_IN9
    );
  NlwInverterBlock_latch_out2_MC_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_latch_out2_MC_D2_PT_0_IN0,
      O => NlwInverterSignal_latch_out2_MC_D2_PT_0_IN0
    );
  NlwInverterBlock_latch_out2_MC_D2_PT_1_IN6 : X_INV
    port map (
      I => NlwBufferSignal_latch_out2_MC_D2_PT_1_IN6,
      O => NlwInverterSignal_latch_out2_MC_D2_PT_1_IN6
    );
  NlwInverterBlock_latch_out2_MC_D2_PT_1_IN8 : X_INV
    port map (
      I => NlwBufferSignal_latch_out2_MC_D2_PT_1_IN8,
      O => NlwInverterSignal_latch_out2_MC_D2_PT_1_IN8
    );
  NlwInverterBlock_line_select_0_MC_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_line_select_0_MC_D_IN0,
      O => NlwInverterSignal_line_select_0_MC_D_IN0
    );
  NlwInverterBlock_line_select_0_MC_D1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_line_select_0_MC_D1_IN0,
      O => NlwInverterSignal_line_select_0_MC_D1_IN0
    );
  NlwInverterBlock_line_select_0_MC_D1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_line_select_0_MC_D1_IN1,
      O => NlwInverterSignal_line_select_0_MC_D1_IN1
    );
  NlwInverterBlock_line_select_0_MC_D1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_line_select_0_MC_D1_IN2,
      O => NlwInverterSignal_line_select_0_MC_D1_IN2
    );
  NlwInverterBlock_line_select_0_MC_D1_IN3 : X_INV
    port map (
      I => NlwBufferSignal_line_select_0_MC_D1_IN3,
      O => NlwInverterSignal_line_select_0_MC_D1_IN3
    );
  NlwInverterBlock_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN0,
      O => NlwInverterSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN0
    );
  NlwInverterBlock_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN3 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN3,
      O => NlwInverterSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN3
    );
  NlwInverterBlock_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN4 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN4,
      O => NlwInverterSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN4
    );
  NlwInverterBlock_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN5 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN5,
      O => NlwInverterSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN5
    );
  NlwInverterBlock_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN6 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN6,
      O => NlwInverterSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN6
    );
  NlwInverterBlock_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN7 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN7,
      O => NlwInverterSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN7
    );
  NlwInverterBlock_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN8 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN8,
      O => NlwInverterSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN8
    );
  NlwInverterBlock_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN9 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN9,
      O => NlwInverterSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_0_IN9
    );
  NlwInverterBlock_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN1,
      O => NlwInverterSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN1
    );
  NlwInverterBlock_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN2,
      O => NlwInverterSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN2
    );
  NlwInverterBlock_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN4 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN4,
      O => NlwInverterSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN4
    );
  NlwInverterBlock_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN5 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN5,
      O => NlwInverterSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN5
    );
  NlwInverterBlock_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN6 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN6,
      O => NlwInverterSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN6
    );
  NlwInverterBlock_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN7 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN7,
      O => NlwInverterSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN7
    );
  NlwInverterBlock_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN8 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN8,
      O => NlwInverterSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN8
    );
  NlwInverterBlock_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN9 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN9,
      O => NlwInverterSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN9
    );
  NlwInverterBlock_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN10 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN10,
      O => NlwInverterSignal_grclkgen_ctr_cnt_lines_0_MC_D2_PT_1_IN10
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_0_MC_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D_IN0,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_0_MC_D_IN0
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_1_IN0,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_1_IN0
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_1_IN1,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_1_IN1
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_2_IN0,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_2_IN0
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_2_IN1,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_2_IN1
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_3_IN0 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_3_IN0,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_3_IN0
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_3_IN1 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_3_IN1,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_3_IN1
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_4_IN2 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_4_IN2,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_4_IN2
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN0 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN0,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN0
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN1 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN1,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN1
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN2 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN2,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN2
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN3 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN3,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN3
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN4 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN4,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN4
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN5 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN5,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN5
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN6 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN6,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_0_MC_D2_PT_5_IN6
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_1_MC_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_D2_PT_0_IN0,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_1_MC_D2_PT_0_IN0
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_1_MC_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_D2_PT_1_IN1,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_1_MC_D2_PT_1_IN1
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_1_MC_D2_PT_1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_1_MC_D2_PT_1_IN2,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_1_MC_D2_PT_1_IN2
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_0_IN0,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_0_IN0
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_1_IN1,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_1_IN1
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_1_IN2,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_2_MC_D2_PT_1_IN2
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_0_IN0,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_0_IN0
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_1_IN1,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_1_IN1
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_1_IN2,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_3_MC_D2_PT_1_IN2
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_0_IN0,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_0_IN0
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_1_IN1,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_1_IN1
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_1_IN2,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_4_MC_D2_PT_1_IN2
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_0_IN0,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_0_IN0
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN1,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN1
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN2,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_5_MC_D2_PT_1_IN2
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN0,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_0_IN0
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN1,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN1
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN2,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_6_MC_D2_PT_1_IN2
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN0,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_0_IN0
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN1,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN1
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN2,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_1_IN2
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN0,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN0
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN3 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN3,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN3
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN4 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN4,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN4
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN5 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN5,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN5
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN6 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN6,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN6
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN7 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN7,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN7
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN8 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN8,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN8
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN9 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN9,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_2_IN9
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN1 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN1,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN1
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN2 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN2,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN2
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN4 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN4,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN4
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN5 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN5,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN5
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN6 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN6,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN6
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN7 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN7,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN7
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN8 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN8,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN8
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN9 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN9,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN9
    );
  NlwInverterBlock_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN10 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN10,
      O => NlwInverterSignal_grclkgen_ctr_cnt_gclk_7_MC_D2_PT_3_IN10
    );
  NlwInverterBlock_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN0,
      O => NlwInverterSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN0
    );
  NlwInverterBlock_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN4 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN4,
      O => NlwInverterSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN4
    );
  NlwInverterBlock_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN5 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN5,
      O => NlwInverterSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN5
    );
  NlwInverterBlock_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN6 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN6,
      O => NlwInverterSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN6
    );
  NlwInverterBlock_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN7 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN7,
      O => NlwInverterSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN7
    );
  NlwInverterBlock_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN8 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN8,
      O => NlwInverterSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN8
    );
  NlwInverterBlock_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN9 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN9,
      O => NlwInverterSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN9
    );
  NlwInverterBlock_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN10 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN10,
      O => NlwInverterSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_0_IN10
    );
  NlwInverterBlock_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN1,
      O => NlwInverterSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN1
    );
  NlwInverterBlock_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN2,
      O => NlwInverterSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN2
    );
  NlwInverterBlock_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN5 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN5,
      O => NlwInverterSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN5
    );
  NlwInverterBlock_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN6 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN6,
      O => NlwInverterSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN6
    );
  NlwInverterBlock_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN7 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN7,
      O => NlwInverterSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN7
    );
  NlwInverterBlock_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN8 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN8,
      O => NlwInverterSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN8
    );
  NlwInverterBlock_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN9 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN9,
      O => NlwInverterSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN9
    );
  NlwInverterBlock_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN10 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN10,
      O => NlwInverterSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN10
    );
  NlwInverterBlock_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN11 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN11,
      O => NlwInverterSignal_grclkgen_ctr_cnt_lines_1_MC_D2_PT_1_IN11
    );
  NlwInverterBlock_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN0,
      O => NlwInverterSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN0
    );
  NlwInverterBlock_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN5 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN5,
      O => NlwInverterSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN5
    );
  NlwInverterBlock_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN6 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN6,
      O => NlwInverterSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN6
    );
  NlwInverterBlock_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN7 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN7,
      O => NlwInverterSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN7
    );
  NlwInverterBlock_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN8 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN8,
      O => NlwInverterSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN8
    );
  NlwInverterBlock_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN9 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN9,
      O => NlwInverterSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN9
    );
  NlwInverterBlock_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN10 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN10,
      O => NlwInverterSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN10
    );
  NlwInverterBlock_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN11 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN11,
      O => NlwInverterSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_0_IN11
    );
  NlwInverterBlock_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN1,
      O => NlwInverterSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN1
    );
  NlwInverterBlock_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN2,
      O => NlwInverterSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN2
    );
  NlwInverterBlock_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN6 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN6,
      O => NlwInverterSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN6
    );
  NlwInverterBlock_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN7 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN7,
      O => NlwInverterSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN7
    );
  NlwInverterBlock_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN8 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN8,
      O => NlwInverterSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN8
    );
  NlwInverterBlock_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN9 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN9,
      O => NlwInverterSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN9
    );
  NlwInverterBlock_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN10 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN10,
      O => NlwInverterSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN10
    );
  NlwInverterBlock_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN11 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN11,
      O => NlwInverterSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN11
    );
  NlwInverterBlock_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN12 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN12,
      O => NlwInverterSignal_grclkgen_ctr_cnt_lines_2_MC_D2_PT_1_IN12
    );
  NlwInverterBlock_grclkgen_ctr_line_en_MC_D2_PT_0_IN2 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_line_en_MC_D2_PT_0_IN2,
      O => NlwInverterSignal_grclkgen_ctr_line_en_MC_D2_PT_0_IN2
    );
  NlwInverterBlock_grclkgen_ctr_line_en_MC_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_line_en_MC_D2_PT_1_IN1,
      O => NlwInverterSignal_grclkgen_ctr_line_en_MC_D2_PT_1_IN1
    );
  NlwInverterBlock_grclkgen_ctr_line_en_MC_D2_PT_1_IN3 : X_INV
    port map (
      I => NlwBufferSignal_grclkgen_ctr_line_en_MC_D2_PT_1_IN3,
      O => NlwInverterSignal_grclkgen_ctr_line_en_MC_D2_PT_1_IN3
    );
  NlwInverterBlock_line_select_1_MC_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_line_select_1_MC_D_IN0,
      O => NlwInverterSignal_line_select_1_MC_D_IN0
    );
  NlwInverterBlock_line_select_1_MC_D1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_line_select_1_MC_D1_IN0,
      O => NlwInverterSignal_line_select_1_MC_D1_IN0
    );
  NlwInverterBlock_line_select_1_MC_D1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_line_select_1_MC_D1_IN2,
      O => NlwInverterSignal_line_select_1_MC_D1_IN2
    );
  NlwInverterBlock_line_select_1_MC_D1_IN3 : X_INV
    port map (
      I => NlwBufferSignal_line_select_1_MC_D1_IN3,
      O => NlwInverterSignal_line_select_1_MC_D1_IN3
    );
  NlwInverterBlock_line_select_2_MC_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_line_select_2_MC_D_IN0,
      O => NlwInverterSignal_line_select_2_MC_D_IN0
    );
  NlwInverterBlock_line_select_2_MC_D1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_line_select_2_MC_D1_IN0,
      O => NlwInverterSignal_line_select_2_MC_D1_IN0
    );
  NlwInverterBlock_line_select_2_MC_D1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_line_select_2_MC_D1_IN1,
      O => NlwInverterSignal_line_select_2_MC_D1_IN1
    );
  NlwInverterBlock_line_select_2_MC_D1_IN3 : X_INV
    port map (
      I => NlwBufferSignal_line_select_2_MC_D1_IN3,
      O => NlwInverterSignal_line_select_2_MC_D1_IN3
    );
  NlwInverterBlock_line_select_3_MC_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_line_select_3_MC_D_IN0,
      O => NlwInverterSignal_line_select_3_MC_D_IN0
    );
  NlwInverterBlock_line_select_3_MC_D1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_line_select_3_MC_D1_IN0,
      O => NlwInverterSignal_line_select_3_MC_D1_IN0
    );
  NlwInverterBlock_line_select_3_MC_D1_IN3 : X_INV
    port map (
      I => NlwBufferSignal_line_select_3_MC_D1_IN3,
      O => NlwInverterSignal_line_select_3_MC_D1_IN3
    );
  NlwInverterBlock_line_select_4_MC_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_line_select_4_MC_D_IN0,
      O => NlwInverterSignal_line_select_4_MC_D_IN0
    );
  NlwInverterBlock_line_select_4_MC_D1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_line_select_4_MC_D1_IN0,
      O => NlwInverterSignal_line_select_4_MC_D1_IN0
    );
  NlwInverterBlock_line_select_4_MC_D1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_line_select_4_MC_D1_IN1,
      O => NlwInverterSignal_line_select_4_MC_D1_IN1
    );
  NlwInverterBlock_line_select_4_MC_D1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_line_select_4_MC_D1_IN2,
      O => NlwInverterSignal_line_select_4_MC_D1_IN2
    );
  NlwInverterBlock_line_select_5_MC_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_line_select_5_MC_D_IN0,
      O => NlwInverterSignal_line_select_5_MC_D_IN0
    );
  NlwInverterBlock_line_select_5_MC_D1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_line_select_5_MC_D1_IN0,
      O => NlwInverterSignal_line_select_5_MC_D1_IN0
    );
  NlwInverterBlock_line_select_5_MC_D1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_line_select_5_MC_D1_IN2,
      O => NlwInverterSignal_line_select_5_MC_D1_IN2
    );
  NlwInverterBlock_line_select_6_MC_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_line_select_6_MC_D_IN0,
      O => NlwInverterSignal_line_select_6_MC_D_IN0
    );
  NlwInverterBlock_line_select_6_MC_D1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_line_select_6_MC_D1_IN0,
      O => NlwInverterSignal_line_select_6_MC_D1_IN0
    );
  NlwInverterBlock_line_select_6_MC_D1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_line_select_6_MC_D1_IN1,
      O => NlwInverterSignal_line_select_6_MC_D1_IN1
    );
  NlwInverterBlock_line_select_7_MC_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_line_select_7_MC_D_IN0,
      O => NlwInverterSignal_line_select_7_MC_D_IN0
    );
  NlwInverterBlock_line_select_7_MC_D1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_line_select_7_MC_D1_IN0,
      O => NlwInverterSignal_line_select_7_MC_D1_IN0
    );
  NlwInverterBlock_mosi_a_MC_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_mosi_a_MC_D2_PT_1_IN0,
      O => NlwInverterSignal_mosi_a_MC_D2_PT_1_IN0
    );
  NlwInverterBlock_serinf_flipflop_a_MC_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_serinf_flipflop_a_MC_D_IN0,
      O => NlwInverterSignal_serinf_flipflop_a_MC_D_IN0
    );
  NlwInverterBlock_serinf_flipflop_a_MC_D2_PT_0_IN1 : X_INV
    port map (
      I => NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_0_IN1,
      O => NlwInverterSignal_serinf_flipflop_a_MC_D2_PT_0_IN1
    );
  NlwInverterBlock_serinf_flipflop_a_MC_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_1_IN0,
      O => NlwInverterSignal_serinf_flipflop_a_MC_D2_PT_1_IN0
    );
  NlwInverterBlock_serinf_flipflop_a_MC_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_1_IN1,
      O => NlwInverterSignal_serinf_flipflop_a_MC_D2_PT_1_IN1
    );
  NlwInverterBlock_serinf_flipflop_a_MC_D2_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_2_IN0,
      O => NlwInverterSignal_serinf_flipflop_a_MC_D2_PT_2_IN0
    );
  NlwInverterBlock_serinf_flipflop_a_MC_D2_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_2_IN1,
      O => NlwInverterSignal_serinf_flipflop_a_MC_D2_PT_2_IN1
    );
  NlwInverterBlock_serinf_flipflop_a_MC_D2_PT_2_IN2 : X_INV
    port map (
      I => NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_2_IN2,
      O => NlwInverterSignal_serinf_flipflop_a_MC_D2_PT_2_IN2
    );
  NlwInverterBlock_serinf_flipflop_a_MC_D2_PT_2_IN3 : X_INV
    port map (
      I => NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_2_IN3,
      O => NlwInverterSignal_serinf_flipflop_a_MC_D2_PT_2_IN3
    );
  NlwInverterBlock_serinf_flipflop_a_MC_D2_PT_2_IN4 : X_INV
    port map (
      I => NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_2_IN4,
      O => NlwInverterSignal_serinf_flipflop_a_MC_D2_PT_2_IN4
    );
  NlwInverterBlock_serinf_flipflop_a_MC_D2_PT_2_IN5 : X_INV
    port map (
      I => NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_2_IN5,
      O => NlwInverterSignal_serinf_flipflop_a_MC_D2_PT_2_IN5
    );
  NlwInverterBlock_serinf_flipflop_a_MC_D2_PT_2_IN6 : X_INV
    port map (
      I => NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_2_IN6,
      O => NlwInverterSignal_serinf_flipflop_a_MC_D2_PT_2_IN6
    );
  NlwInverterBlock_serinf_flipflop_a_MC_D2_PT_2_IN7 : X_INV
    port map (
      I => NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_2_IN7,
      O => NlwInverterSignal_serinf_flipflop_a_MC_D2_PT_2_IN7
    );
  NlwInverterBlock_serinf_flipflop_a_MC_D2_PT_2_IN8 : X_INV
    port map (
      I => NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_2_IN8,
      O => NlwInverterSignal_serinf_flipflop_a_MC_D2_PT_2_IN8
    );
  NlwInverterBlock_serinf_flipflop_a_MC_D2_PT_2_IN9 : X_INV
    port map (
      I => NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_2_IN9,
      O => NlwInverterSignal_serinf_flipflop_a_MC_D2_PT_2_IN9
    );
  NlwInverterBlock_serinf_flipflop_a_MC_D2_PT_2_IN10 : X_INV
    port map (
      I => NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_2_IN10,
      O => NlwInverterSignal_serinf_flipflop_a_MC_D2_PT_2_IN10
    );
  NlwInverterBlock_serinf_flipflop_a_MC_D2_PT_2_IN11 : X_INV
    port map (
      I => NlwBufferSignal_serinf_flipflop_a_MC_D2_PT_2_IN11,
      O => NlwInverterSignal_serinf_flipflop_a_MC_D2_PT_2_IN11
    );
  NlwInverterBlock_mosi_b_MC_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_mosi_b_MC_D2_PT_1_IN0,
      O => NlwInverterSignal_mosi_b_MC_D2_PT_1_IN0
    );
  NlwInverterBlock_serinf_flipflop_b_MC_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_serinf_flipflop_b_MC_D_IN0,
      O => NlwInverterSignal_serinf_flipflop_b_MC_D_IN0
    );
  NlwInverterBlock_serinf_flipflop_b_MC_D2_PT_0_IN1 : X_INV
    port map (
      I => NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_0_IN1,
      O => NlwInverterSignal_serinf_flipflop_b_MC_D2_PT_0_IN1
    );
  NlwInverterBlock_serinf_flipflop_b_MC_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_1_IN0,
      O => NlwInverterSignal_serinf_flipflop_b_MC_D2_PT_1_IN0
    );
  NlwInverterBlock_serinf_flipflop_b_MC_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_1_IN1,
      O => NlwInverterSignal_serinf_flipflop_b_MC_D2_PT_1_IN1
    );
  NlwInverterBlock_serinf_flipflop_b_MC_D2_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_2_IN0,
      O => NlwInverterSignal_serinf_flipflop_b_MC_D2_PT_2_IN0
    );
  NlwInverterBlock_serinf_flipflop_b_MC_D2_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_2_IN1,
      O => NlwInverterSignal_serinf_flipflop_b_MC_D2_PT_2_IN1
    );
  NlwInverterBlock_serinf_flipflop_b_MC_D2_PT_2_IN2 : X_INV
    port map (
      I => NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_2_IN2,
      O => NlwInverterSignal_serinf_flipflop_b_MC_D2_PT_2_IN2
    );
  NlwInverterBlock_serinf_flipflop_b_MC_D2_PT_2_IN3 : X_INV
    port map (
      I => NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_2_IN3,
      O => NlwInverterSignal_serinf_flipflop_b_MC_D2_PT_2_IN3
    );
  NlwInverterBlock_serinf_flipflop_b_MC_D2_PT_2_IN4 : X_INV
    port map (
      I => NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_2_IN4,
      O => NlwInverterSignal_serinf_flipflop_b_MC_D2_PT_2_IN4
    );
  NlwInverterBlock_serinf_flipflop_b_MC_D2_PT_2_IN5 : X_INV
    port map (
      I => NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_2_IN5,
      O => NlwInverterSignal_serinf_flipflop_b_MC_D2_PT_2_IN5
    );
  NlwInverterBlock_serinf_flipflop_b_MC_D2_PT_2_IN6 : X_INV
    port map (
      I => NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_2_IN6,
      O => NlwInverterSignal_serinf_flipflop_b_MC_D2_PT_2_IN6
    );
  NlwInverterBlock_serinf_flipflop_b_MC_D2_PT_2_IN7 : X_INV
    port map (
      I => NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_2_IN7,
      O => NlwInverterSignal_serinf_flipflop_b_MC_D2_PT_2_IN7
    );
  NlwInverterBlock_serinf_flipflop_b_MC_D2_PT_2_IN8 : X_INV
    port map (
      I => NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_2_IN8,
      O => NlwInverterSignal_serinf_flipflop_b_MC_D2_PT_2_IN8
    );
  NlwInverterBlock_serinf_flipflop_b_MC_D2_PT_2_IN9 : X_INV
    port map (
      I => NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_2_IN9,
      O => NlwInverterSignal_serinf_flipflop_b_MC_D2_PT_2_IN9
    );
  NlwInverterBlock_serinf_flipflop_b_MC_D2_PT_2_IN10 : X_INV
    port map (
      I => NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_2_IN10,
      O => NlwInverterSignal_serinf_flipflop_b_MC_D2_PT_2_IN10
    );
  NlwInverterBlock_serinf_flipflop_b_MC_D2_PT_2_IN11 : X_INV
    port map (
      I => NlwBufferSignal_serinf_flipflop_b_MC_D2_PT_2_IN11,
      O => NlwInverterSignal_serinf_flipflop_b_MC_D2_PT_2_IN11
    );
  NlwInverterBlock_sdout_MC_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_sdout_MC_D2_PT_1_IN1,
      O => NlwInverterSignal_sdout_MC_D2_PT_1_IN1
    );
  NlwInverterBlock_sdout_MC_D2_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_sdout_MC_D2_PT_2_IN0,
      O => NlwInverterSignal_sdout_MC_D2_PT_2_IN0
    );
  NlwInverterBlock_sdprev_en_MC_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_sdprev_en_MC_D_IN0,
      O => NlwInverterSignal_sdprev_en_MC_D_IN0
    );
  NlwInverterBlock_sdprev_en_MC_D1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_sdprev_en_MC_D1_IN0,
      O => NlwInverterSignal_sdprev_en_MC_D1_IN0
    );
  NlwInverterBlock_sdprev_en_MC_D1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_sdprev_en_MC_D1_IN1,
      O => NlwInverterSignal_sdprev_en_MC_D1_IN1
    );
  NlwInverterBlock_sdprev_en_MC_D1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_sdprev_en_MC_D1_IN2,
      O => NlwInverterSignal_sdprev_en_MC_D1_IN2
    );
  NlwInverterBlock_sdprev_en_MC_D1_IN3 : X_INV
    port map (
      I => NlwBufferSignal_sdprev_en_MC_D1_IN3,
      O => NlwInverterSignal_sdprev_en_MC_D1_IN3
    );
  NlwInverterBlock_tsclk_a_MC_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_tsclk_a_MC_D2_PT_0_IN0,
      O => NlwInverterSignal_tsclk_a_MC_D2_PT_0_IN0
    );
  NlwInverterBlock_serinf_ff_a_en_MC_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_serinf_ff_a_en_MC_D_IN0,
      O => NlwInverterSignal_serinf_ff_a_en_MC_D_IN0
    );
  NlwInverterBlock_serinf_ff_a_en_MC_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_0_IN0,
      O => NlwInverterSignal_serinf_ff_a_en_MC_D2_PT_0_IN0
    );
  NlwInverterBlock_serinf_ff_a_en_MC_D2_PT_0_IN1 : X_INV
    port map (
      I => NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_0_IN1,
      O => NlwInverterSignal_serinf_ff_a_en_MC_D2_PT_0_IN1
    );
  NlwInverterBlock_serinf_ff_a_en_MC_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_1_IN0,
      O => NlwInverterSignal_serinf_ff_a_en_MC_D2_PT_1_IN0
    );
  NlwInverterBlock_serinf_ff_a_en_MC_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_1_IN1,
      O => NlwInverterSignal_serinf_ff_a_en_MC_D2_PT_1_IN1
    );
  NlwInverterBlock_serinf_ff_a_en_MC_D2_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_2_IN0,
      O => NlwInverterSignal_serinf_ff_a_en_MC_D2_PT_2_IN0
    );
  NlwInverterBlock_serinf_ff_a_en_MC_D2_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_2_IN1,
      O => NlwInverterSignal_serinf_ff_a_en_MC_D2_PT_2_IN1
    );
  NlwInverterBlock_serinf_ff_a_en_MC_D2_PT_2_IN2 : X_INV
    port map (
      I => NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_2_IN2,
      O => NlwInverterSignal_serinf_ff_a_en_MC_D2_PT_2_IN2
    );
  NlwInverterBlock_serinf_ff_a_en_MC_D2_PT_2_IN3 : X_INV
    port map (
      I => NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_2_IN3,
      O => NlwInverterSignal_serinf_ff_a_en_MC_D2_PT_2_IN3
    );
  NlwInverterBlock_serinf_ff_a_en_MC_D2_PT_2_IN4 : X_INV
    port map (
      I => NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_2_IN4,
      O => NlwInverterSignal_serinf_ff_a_en_MC_D2_PT_2_IN4
    );
  NlwInverterBlock_serinf_ff_a_en_MC_D2_PT_2_IN5 : X_INV
    port map (
      I => NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_2_IN5,
      O => NlwInverterSignal_serinf_ff_a_en_MC_D2_PT_2_IN5
    );
  NlwInverterBlock_serinf_ff_a_en_MC_D2_PT_2_IN6 : X_INV
    port map (
      I => NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_2_IN6,
      O => NlwInverterSignal_serinf_ff_a_en_MC_D2_PT_2_IN6
    );
  NlwInverterBlock_serinf_ff_a_en_MC_D2_PT_2_IN7 : X_INV
    port map (
      I => NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_2_IN7,
      O => NlwInverterSignal_serinf_ff_a_en_MC_D2_PT_2_IN7
    );
  NlwInverterBlock_serinf_ff_a_en_MC_D2_PT_2_IN8 : X_INV
    port map (
      I => NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_2_IN8,
      O => NlwInverterSignal_serinf_ff_a_en_MC_D2_PT_2_IN8
    );
  NlwInverterBlock_serinf_ff_a_en_MC_D2_PT_2_IN9 : X_INV
    port map (
      I => NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_2_IN9,
      O => NlwInverterSignal_serinf_ff_a_en_MC_D2_PT_2_IN9
    );
  NlwInverterBlock_serinf_ff_a_en_MC_D2_PT_2_IN10 : X_INV
    port map (
      I => NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_2_IN10,
      O => NlwInverterSignal_serinf_ff_a_en_MC_D2_PT_2_IN10
    );
  NlwInverterBlock_serinf_ff_a_en_MC_D2_PT_2_IN11 : X_INV
    port map (
      I => NlwBufferSignal_serinf_ff_a_en_MC_D2_PT_2_IN11,
      O => NlwInverterSignal_serinf_ff_a_en_MC_D2_PT_2_IN11
    );
  NlwInverterBlock_tsclk_b_MC_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_tsclk_b_MC_D2_PT_0_IN0,
      O => NlwInverterSignal_tsclk_b_MC_D2_PT_0_IN0
    );
  NlwInverterBlock_tsclk_b_MC_D2_PT_1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_tsclk_b_MC_D2_PT_1_IN2,
      O => NlwInverterSignal_tsclk_b_MC_D2_PT_1_IN2
    );
  NlwInverterBlock_serinf_ff_b_en_MC_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_serinf_ff_b_en_MC_D_IN0,
      O => NlwInverterSignal_serinf_ff_b_en_MC_D_IN0
    );
  NlwInverterBlock_serinf_ff_b_en_MC_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_0_IN0,
      O => NlwInverterSignal_serinf_ff_b_en_MC_D2_PT_0_IN0
    );
  NlwInverterBlock_serinf_ff_b_en_MC_D2_PT_0_IN1 : X_INV
    port map (
      I => NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_0_IN1,
      O => NlwInverterSignal_serinf_ff_b_en_MC_D2_PT_0_IN1
    );
  NlwInverterBlock_serinf_ff_b_en_MC_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_1_IN1,
      O => NlwInverterSignal_serinf_ff_b_en_MC_D2_PT_1_IN1
    );
  NlwInverterBlock_serinf_ff_b_en_MC_D2_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_2_IN0,
      O => NlwInverterSignal_serinf_ff_b_en_MC_D2_PT_2_IN0
    );
  NlwInverterBlock_serinf_ff_b_en_MC_D2_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_2_IN1,
      O => NlwInverterSignal_serinf_ff_b_en_MC_D2_PT_2_IN1
    );
  NlwInverterBlock_serinf_ff_b_en_MC_D2_PT_2_IN2 : X_INV
    port map (
      I => NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_2_IN2,
      O => NlwInverterSignal_serinf_ff_b_en_MC_D2_PT_2_IN2
    );
  NlwInverterBlock_serinf_ff_b_en_MC_D2_PT_2_IN3 : X_INV
    port map (
      I => NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_2_IN3,
      O => NlwInverterSignal_serinf_ff_b_en_MC_D2_PT_2_IN3
    );
  NlwInverterBlock_serinf_ff_b_en_MC_D2_PT_2_IN4 : X_INV
    port map (
      I => NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_2_IN4,
      O => NlwInverterSignal_serinf_ff_b_en_MC_D2_PT_2_IN4
    );
  NlwInverterBlock_serinf_ff_b_en_MC_D2_PT_2_IN5 : X_INV
    port map (
      I => NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_2_IN5,
      O => NlwInverterSignal_serinf_ff_b_en_MC_D2_PT_2_IN5
    );
  NlwInverterBlock_serinf_ff_b_en_MC_D2_PT_2_IN6 : X_INV
    port map (
      I => NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_2_IN6,
      O => NlwInverterSignal_serinf_ff_b_en_MC_D2_PT_2_IN6
    );
  NlwInverterBlock_serinf_ff_b_en_MC_D2_PT_2_IN7 : X_INV
    port map (
      I => NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_2_IN7,
      O => NlwInverterSignal_serinf_ff_b_en_MC_D2_PT_2_IN7
    );
  NlwInverterBlock_serinf_ff_b_en_MC_D2_PT_2_IN8 : X_INV
    port map (
      I => NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_2_IN8,
      O => NlwInverterSignal_serinf_ff_b_en_MC_D2_PT_2_IN8
    );
  NlwInverterBlock_serinf_ff_b_en_MC_D2_PT_2_IN9 : X_INV
    port map (
      I => NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_2_IN9,
      O => NlwInverterSignal_serinf_ff_b_en_MC_D2_PT_2_IN9
    );
  NlwInverterBlock_serinf_ff_b_en_MC_D2_PT_2_IN10 : X_INV
    port map (
      I => NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_2_IN10,
      O => NlwInverterSignal_serinf_ff_b_en_MC_D2_PT_2_IN10
    );
  NlwInverterBlock_serinf_ff_b_en_MC_D2_PT_2_IN11 : X_INV
    port map (
      I => NlwBufferSignal_serinf_ff_b_en_MC_D2_PT_2_IN11,
      O => NlwInverterSignal_serinf_ff_b_en_MC_D2_PT_2_IN11
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => PRLD);

end Structure;

