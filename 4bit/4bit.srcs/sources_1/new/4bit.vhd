library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity BITADDER4 is
    Port ( A0 : in  STD_LOGIC;
           B0 : in  STD_LOGIC;
           A1 : in  STD_LOGIC;
           B1 : in  STD_LOGIC;
           A2 : in  STD_LOGIC;
           B2 : in  STD_LOGIC;
           A3 : in  STD_LOGIC;
           B3 : in  STD_LOGIC;
           S0 : out  STD_LOGIC;
           S1 : out  STD_LOGIC;
           S2 : out  STD_LOGIC;
           S3 : out  STD_LOGIC;
           C0 : in  STD_LOGIC;
      --     C1 : inout  STD_LOGIC;
        --   C2 : inout  STD_LOGIC;
          -- C3 : inout  STD_LOGIC;
           C4 : out  STD_LOGIC);
end BITADDER4;

architecture Behavioral of BITADDER4 is
component full_adder1 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end component full_adder1;

signal c1,c2,c3;

begin
FA1: full_adder1 port map(a=>a0,b=>b0,cin=>c0,sum=>s0,cout=>c1);
FA2: full_adder1 port map(a=>a1,b=>b1,cin=>c1,sum=>s1,cout=>c2);
FA3: full_adder1 port map(a=>a2,b=>b2,cin=>c2,sum=>s2,cout=>c3);
FA4: full_adder1 port map(a=>a3,b=>b3,cin=>c3,sum=>s3,cout=>c4);
end Behavioral;
