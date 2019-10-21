----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:18:57 10/22/2019 
-- Design Name: 
-- Module Name:    OR_GATE - Behavioral 
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

entity OR_GATE is
    Port ( OR_IN_A : in  STD_LOGIC;
           OR_IN_B : in  STD_LOGIC;
           OR_OUT_C : out  STD_LOGIC);
end OR_GATE;

architecture Behavioral of OR_GATE is

begin

OR_OUT_C <= OR_IN_A or OR_IN_B;

end Behavioral;

