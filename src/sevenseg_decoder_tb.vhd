----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/02/2026 11:59:08 AM
-- Design Name: 
-- Module Name: sevenseg_decoder_tb - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sevenseg_decoder_tb is
end sevenseg_decoder_tb;


architecture Behavioral of sevenseg_decoder_tb is


component sevenseg_decoder is
    Port ( i_Hex    :  in  std_logic_vector (3 downto 0);
           o_seg_n  :  out std_logic_vector (6 downto 0));
end component;

signal w_Hex    :   std_logic_vector (3 downto 0)   := "0000";
signal w_seg_n  :   std_logic_vector (6 downto 0);

begin

uut:    sevenseg_decoder
        port map(
            i_Hex   => w_Hex,
            o_seg_n => w_seg_n
            );
            
stim_proc: process 

begin

for i in 0 to 15 loop
    w_Hex <= std_logic_vector(TO_UNSIGNED(i,4));
    wait for 10 ns;
   end loop;
   wait;
end process;

end Behavioral;
