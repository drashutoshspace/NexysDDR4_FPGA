----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:28:40 10/22/2019 
-- Design Name: 
-- Module Name:    HALF_ADDER - Behavioral 
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

entity HALF_ADDER is
    Port ( HA_IN_A : in  STD_LOGIC;
           HA_IN_B : in  STD_LOGIC;
           HA_OUT_SUM : out  STD_LOGIC;
           HA_OUT_CARRY : out  STD_LOGIC);
end HALF_ADDER;

architecture Behavioral of HALF_ADDER is

begin

HA_OUT_SUM <= HA_IN_A xor HA_IN_B;
HA_OUT_CARRY <= HA_IN_A and HA_IN_B;

end Behavioral;

