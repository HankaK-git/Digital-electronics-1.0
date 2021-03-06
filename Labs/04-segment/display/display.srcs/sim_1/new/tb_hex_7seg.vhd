library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity tb_hex_7seg is
--  Port ( );
end tb_hex_7seg;

architecture Behavioral of tb_hex_7seg is

    signal s_hex : STD_LOGIC_VECTOR (4-1 downto 0);
    signal s_seg : STD_LOGIC_VECTOR (7-1 downto 0);


begin
    uut_hex_7seg  : entity work.hex_7seg
        port map (
        
        hex_i => s_hex,
        seg_o => s_seg
        );

    p_stimulus : process
    begin
        report "Stimulus process started" severity note;
        
        s_hex <= "0000"; wait for 100 ns; --0
        
        s_hex <= "0001"; wait for 100 ns; --1
        
        s_hex <= "0010"; wait for 100 ns; --2
        
        s_hex <= "0011"; wait for 100 ns; --3
        
        s_hex <= "0100"; wait for 100 ns; --4
        
        s_hex <= "0101"; wait for 100 ns; --5
        
        s_hex <= "0110"; wait for 100 ns; --6
        
        s_hex <= "0111"; wait for 100 ns; --7
        
        s_hex <= "1000"; wait for 100 ns; --8
        
        s_hex <= "1001"; wait for 100 ns; --9
        
        s_hex <= "1010"; wait for 100 ns; --A
        
        s_hex <= "1011"; wait for 100 ns; --b
        
        s_hex <= "1100"; wait for 100 ns; --C
        
        s_hex <= "1101"; wait for 100 ns; --d
        
        s_hex <= "1110"; wait for 100 ns; --E
        
        s_hex <= "1111"; wait for 100 ns; --F
        
           
        report "Stimulus process finished" severity note;
    end process p_stimulus;

end Behavioral;