----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:28:18 10/22/2019 
-- Design Name: 
-- Module Name:    MUX_4X1 - Behavioral 
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

entity MUX_4X1 is
    Port ( MUX_IN_A : in  STD_LOGIC_VECTOR (3 downto 0);
           MUX_SEL : in  STD_LOGIC_VECTOR (1 downto 0);
           MUX_OUT_Q : out  STD_LOGIC);
end MUX_4X1;

architecture Behavioral of MUX_4X1 is

begin

	process(MUX_SEL,MUX_IN_A)
		begin
			case MUX_SEL is
				when "00" => MUX_OUT_Q <=MUX_IN_A(0);
				when "01" => MUX_OUT_Q <=MUX_IN_A(1);
				when "10" => MUX_OUT_Q <=MUX_IN_A(2);
				when "11" => MUX_OUT_Q <=MUX_IN_A(3);
				when others => MUX_OUT_Q <= '0';
			end case;
		end process;
end Behavioral;

