----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.11.2019 09:56:24
-- Design Name: 
-- Module Name: btogray - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity btogray is
    Port ( g0 : in STD_LOGIC;
           g1 : in STD_LOGIC;
           g2 : in STD_LOGIC;
           g3 : in STD_LOGIC;
           b0 : inout STD_LOGIC;
           b1 : inout STD_LOGIC;
           b2 : inout STD_LOGIC;
           b3 : inout STD_LOGIC);
end btogray;

architecture Behavioral of btogray is

begin
b0<=b1 xor g0;
b1<=b2 xor g1;
b2<=b3 xor g2;
b3<=g3;


end Behavioral;
