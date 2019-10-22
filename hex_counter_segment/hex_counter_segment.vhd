----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:14:31 10/22/2019 
-- Design Name: 
-- Module Name:    hex_counter_segment - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity hex_counter_segment is
    Port ( anode : out  STD_LOGIC_VECTOR (7 downto 0);
           segment : out  STD_LOGIC_VECTOR (7 downto 0);
           led_count : out  STD_LOGIC_VECTOR (3 downto 0);
           rst : in  STD_LOGIC;
           clk : in  STD_LOGIC);
end hex_counter_segment;

architecture segment_hex_count of hex_counter_segment is

signal counter : std_logic_vector(31 downto 0);
signal bts : std_logic_vector(3 downto 0);

begin

anode <= "01010101";
bts <= counter(31 downto 28);
led_count <= bts;

PROCESS(clk,rst)
	begin
		if(rst='0') then
			counter <= (others => '0');
		elsif clk'EVENT and clk='1' then
			counter <= counter + '1';
		end if;
end PROCESS;

PROCESS(bts)
	begin
	case bts is
		when "0000" => segment <= "01000000";
		when "0001" => segment <= "01111001";
		when "0010" => segment <= "00100100";
		when "0011" => segment <= "00110000";
		when "0100" => segment <= "00011001";
		when "0101" => segment <= "00010010";
		when "0110" => segment <= "00000010";
		when "0111" => segment <= "01111000";
		when "1000" => segment <= "00000000";
		when "1001" => segment <= "00010000";
		when "1010" => segment <= "00001000";
		when "1011" => segment <= "00000011";
		when "1100" => segment <= "01000110";
		when "1101" => segment <= "00100001";
		when "1110" => segment <= "00000110";
		when "1111" => segment <= "00001110";
		when others => segment <= "11111111";
	end case;
end PROCESS;
	
end segment_hex_count;

