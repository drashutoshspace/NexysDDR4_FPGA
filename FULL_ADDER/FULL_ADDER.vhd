----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:37:55 10/22/2019 
-- Design Name: 
-- Module Name:    FULL_ADDER - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FULL_ADDER is
    Port ( FA_IN_A : in  STD_LOGIC;
           FA_IN_B : in  STD_LOGIC;
           FA_IN_CARRY : in  STD_LOGIC;
           FA_OUT_SUM : out  STD_LOGIC;
           FA_OUT_CARRY : out  STD_LOGIC);
end FULL_ADDER;

architecture Behavioral of FULL_ADDER is

component HALF_ADDER is
    Port ( HA_IN_A : in  STD_LOGIC;
           HA_IN_B : in  STD_LOGIC;
           HA_OUT_SUM : out  STD_LOGIC;
           HA_OUT_CARRY : out  STD_LOGIC);
end component HALF_ADDER;

component OR_GATE is
    Port ( OR_IN_A : in  STD_LOGIC;
           OR_IN_B : in  STD_LOGIC;
           OR_OUT_C : out  STD_LOGIC);
end component OR_GATE;

signal S1,S2,S3:STD_LOGIC;

begin

HA1 : HALF_ADDER port map(HA_IN_A=>FA_IN_A,HA_IN_B=>FA_IN_B,HA_OUT_SUM=>S1,HA_OUT_CARRY=>S2);
HA2 : HALF_ADDER port map(S1,FA_IN_CARRY,FA_OUT_SUM,S3);
OR1 : OR_GATE port map(OR_IN_A=>S2,OR_IN_B=>S3,OR_OUT_C=>FA_OUT_CARRY);
end Behavioral;

