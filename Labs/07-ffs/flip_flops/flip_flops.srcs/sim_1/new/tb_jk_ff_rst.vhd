library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_jk_ff_rst is
--  Port ( );
end tb_jk_ff_rst;

architecture Behavioral of tb_jk_ff_rst is
 constant c_CLK_100MHZ_PERIOD : time    := 10 ns;

        signal s_clk_100MHz : std_logic;
       
        signal s_rst   :  std_logic;
        signal s_j      :  std_logic;
        signal s_k      :  std_logic;
        signal s_q      :  std_logic;
        signal s_q_bar  :  std_logic;

begin
    uut_jk_ff_rst: entity work.jk_ff_rst
        port map(
            clk    => s_clk_100MHz,   
            rst   => s_rst, 
            j     => s_j,    
            k     => s_k,    
            q     => s_q,    
            q_bar => s_q_bar
        );
       
    p_clk_gen : process
        begin
            while now < 750 ns loop         -- 75 periods of 100MHz clock
                s_clk_100MHz <= '0';
                wait for c_CLK_100MHZ_PERIOD / 2;
                s_clk_100MHz <= '1';
                wait for c_CLK_100MHZ_PERIOD / 2;
            end loop;
            wait;
    end process p_clk_gen;

    p_reset_gen : process
        begin
            wait for 12 ns;
        
            -- Reset activated
            s_rst <= '1';
            wait for 48 ns;
       
        
            s_rst <= '0';
--            wait for 150 ns;
        
--        -- Reset activated
--            s_rst <= '1';
--            wait for 60 ns;
       
--            s_rst <= '0';
            wait;
    end process p_reset_gen;
        
    p_stimulus : process
        begin
            report "Stimulus process started" severity note;
                s_j <= '0';
                s_k <= '0';
            
            
                wait for 50ns;
                s_j <= '0';
                s_k <= '1';
                wait for 50ns;
                s_j <= '1';
                s_k <= '0';
                wait for 50ns;
                s_j <= '1';
                s_k <= '1';
                wait for 50ns;
                s_j <= '0';
                s_k <= '0';
            
            
                wait for 50ns;
                s_j <= '0';
                s_k <= '1';
                wait for 50ns;
                s_j <= '1';
                s_k <= '0';
                wait for 50ns;
                s_j <= '1';
                s_k <= '1';
                wait for 50ns;
                s_j <= '0';
                s_k <= '0';
            
            
                wait for 10ns;
                s_j <= '0';
                s_k <= '1';
                wait for 20ns;
                s_j <= '1';
                s_k <= '0';
                wait for 30ns;
                s_j <= '1';
                s_k <= '1';
                wait for 10ns;
    
        report "Stimulus process finished" severity note;
            wait;
    end process p_stimulus;


end Behavioral;
