	component address_decode_clk_csr is
		port (
			clk_out     : out std_logic;        -- clk
			in_clk      : in  std_logic := 'X'; -- clk
			reset_n     : in  std_logic := 'X'; -- reset_n
			reset_n_out : out std_logic         -- reset_n
		);
	end component address_decode_clk_csr;

	u0 : component address_decode_clk_csr
		port map (
			clk_out     => CONNECTED_TO_clk_out,     --          clk.clk
			in_clk      => CONNECTED_TO_in_clk,      --       clk_in.clk
			reset_n     => CONNECTED_TO_reset_n,     -- clk_in_reset.reset_n
			reset_n_out => CONNECTED_TO_reset_n_out  --    clk_reset.reset_n
		);

