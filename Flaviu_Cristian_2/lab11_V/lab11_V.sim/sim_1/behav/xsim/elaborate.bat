@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.1 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Wed Jan 08 14:23:08 +0200 2020
REM SW Build 2552052 on Fri May 24 14:49:42 MDT 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
echo "xelab -wto d146b49eb5724049af0651e8cedba295 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot Data_memory_sim_behav xil_defaultlib.Data_memory_sim -log elaborate.log"
call xelab  -wto d146b49eb5724049af0651e8cedba295 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot Data_memory_sim_behav xil_defaultlib.Data_memory_sim -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
