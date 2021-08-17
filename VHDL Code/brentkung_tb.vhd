library ieee;
use ieee.std_logic_1164.all;

entity brentkung_tb is
end brentkung_tb;

architecture test1 of brentkung_tb is

component brentkung is
port (A,B : in std_logic_vector(31 downto 0);
		c0 : in std_logic;
		cout: out std_logic;
		sum: out  std_logic_vector(31 downto 0));

end component;

signal A,B : std_logic_vector(31 downto 0):="00000000000000000000000000000000";
signal c0 : std_logic:='0';
signal cout: std_logic;
signal sum: std_logic_vector(31 downto 0);

begin

UT1: brentkung port map(A,B,c0,Cout,Sum);

process

begin

A <= "11110000000000000000000000001111";
B <= "00000000000000000000000000000000";
wait for 20 ns;
A <= "11110000000000000000000000000000";
B <= "11111111111111111111111111111111";

wait;

end process;

end test1;
