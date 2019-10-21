----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:12:12 10/22/2019 
-- Design Name: 
-- Module Name:    MUX_2X1 - Behavioral 
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

entity MUX_2X1 is
    Port ( MUX_IN_A : in  STD_LOGIC;
           MUX_IN_B : in  STD_LOGIC;
           MUX_SEL : in  STD_LOGIC;
           MUX_OUT_C : out  STD_LOGIC);
end MUX_2X1;

architecture Behavioral of MUX_2X1 is

begin
	PROCESS(MUX_IN_A,MUX_IN_B,MUX_SEL)
	BEGIN
		IF MUX_SEL='0' THEN
			MUX_OUT_C<=MUX_IN_A;
		ELSE
			MUX_OUT_C<=MUX_IN_B;
		END IF;
	END PROCESS;

end Behavioral;

