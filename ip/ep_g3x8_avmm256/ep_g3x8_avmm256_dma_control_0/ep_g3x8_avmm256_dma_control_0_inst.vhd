	component ep_g3x8_avmm256_dma_control_0 is
		port (
			MsiInterface_i       : in  std_logic_vector(81 downto 0)  := (others => 'X'); -- msi_intfc
			RdDCMAddress_o       : out std_logic_vector(63 downto 0);                     -- address
			RdDCMWrite_o         : out std_logic;                                         -- write
			RdDCMWriteData_o     : out std_logic_vector(31 downto 0);                     -- writedata
			RdDCMRead_o          : out std_logic;                                         -- read
			RdDCMByteEnable_o    : out std_logic_vector(3 downto 0);                      -- byteenable
			RdDCMWaitRequest_i   : in  std_logic                      := 'X';             -- waitrequest
			RdDCMReadData_i      : in  std_logic_vector(31 downto 0)  := (others => 'X'); -- readdata
			RdDCMReadDataValid_i : in  std_logic                      := 'X';             -- readdatavalid
			RdDCSChipSelect_i    : in  std_logic                      := 'X';             -- chipselect
			RdDCSWrite_i         : in  std_logic                      := 'X';             -- write
			RdDCSAddress_i       : in  std_logic_vector(7 downto 0)   := (others => 'X'); -- address
			RdDCSWriteData_i     : in  std_logic_vector(31 downto 0)  := (others => 'X'); -- writedata
			RdDCSByteEnable_i    : in  std_logic_vector(3 downto 0)   := (others => 'X'); -- byteenable
			RdDCSWaitRequest_o   : out std_logic;                                         -- waitrequest
			RdDCSRead_i          : in  std_logic                      := 'X';             -- read
			RdDCSReadData_o      : out std_logic_vector(31 downto 0);                     -- readdata
			RdDmaRxData_i        : in  std_logic_vector(31 downto 0)  := (others => 'X'); -- data
			RdDmaRxValid_i       : in  std_logic                      := 'X';             -- valid
			RdDmaTxData_o        : out std_logic_vector(159 downto 0);                    -- data
			RdDmaTxValid_o       : out std_logic;                                         -- valid
			RdDmaTxReady_i       : in  std_logic                      := 'X';             -- ready
			RdDTSChipSelect_i    : in  std_logic                      := 'X';             -- chipselect
			RdDTSWrite_i         : in  std_logic                      := 'X';             -- write
			RdDTSBurstCount_i    : in  std_logic_vector(4 downto 0)   := (others => 'X'); -- burstcount
			RdDTSAddress_i       : in  std_logic_vector(7 downto 0)   := (others => 'X'); -- address
			RdDTSWriteData_i     : in  std_logic_vector(255 downto 0) := (others => 'X'); -- writedata
			RdDTSWaitRequest_o   : out std_logic;                                         -- waitrequest
			Rstn_i               : in  std_logic                      := 'X';             -- reset_n
			WrDCMAddress_o       : out std_logic_vector(63 downto 0);                     -- address
			WrDCMWrite_o         : out std_logic;                                         -- write
			WrDCMWriteData_o     : out std_logic_vector(31 downto 0);                     -- writedata
			WrDCMRead_o          : out std_logic;                                         -- read
			WrDCMByteEnable_o    : out std_logic_vector(3 downto 0);                      -- byteenable
			WrDCMWaitRequest_i   : in  std_logic                      := 'X';             -- waitrequest
			WrDCMReadDataValid_i : in  std_logic                      := 'X';             -- readdatavalid
			WrDCMReadData_i      : in  std_logic_vector(31 downto 0)  := (others => 'X'); -- readdata
			WrDCSChipSelect_i    : in  std_logic                      := 'X';             -- chipselect
			WrDCSWrite_i         : in  std_logic                      := 'X';             -- write
			WrDCSAddress_i       : in  std_logic_vector(7 downto 0)   := (others => 'X'); -- address
			WrDCSWriteData_i     : in  std_logic_vector(31 downto 0)  := (others => 'X'); -- writedata
			WrDCSByteEnable_i    : in  std_logic_vector(3 downto 0)   := (others => 'X'); -- byteenable
			WrDCSWaitRequest_o   : out std_logic;                                         -- waitrequest
			WrDCSRead_i          : in  std_logic                      := 'X';             -- read
			WrDCSReadData_o      : out std_logic_vector(31 downto 0);                     -- readdata
			WrDmaRxData_i        : in  std_logic_vector(31 downto 0)  := (others => 'X'); -- data
			WrDmaRxValid_i       : in  std_logic                      := 'X';             -- valid
			WrDmaTxData_o        : out std_logic_vector(159 downto 0);                    -- data
			WrDmaTxValid_o       : out std_logic;                                         -- valid
			WrDmaTxReady_i       : in  std_logic                      := 'X';             -- ready
			WrDTSChipSelect_i    : in  std_logic                      := 'X';             -- chipselect
			WrDTSWrite_i         : in  std_logic                      := 'X';             -- write
			WrDTSBurstCount_i    : in  std_logic_vector(4 downto 0)   := (others => 'X'); -- burstcount
			WrDTSAddress_i       : in  std_logic_vector(7 downto 0)   := (others => 'X'); -- address
			WrDTSWriteData_i     : in  std_logic_vector(255 downto 0) := (others => 'X'); -- writedata
			WrDTSWaitRequest_o   : out std_logic;                                         -- waitrequest
			Clk_i                : in  std_logic                      := 'X'              -- clk
		);
	end component ep_g3x8_avmm256_dma_control_0;

	u0 : component ep_g3x8_avmm256_dma_control_0
		port map (
			MsiInterface_i       => CONNECTED_TO_MsiInterface_i,       -- MsiInterface.msi_intfc
			RdDCMAddress_o       => CONNECTED_TO_RdDCMAddress_o,       -- RdDCM_Master.address
			RdDCMWrite_o         => CONNECTED_TO_RdDCMWrite_o,         --             .write
			RdDCMWriteData_o     => CONNECTED_TO_RdDCMWriteData_o,     --             .writedata
			RdDCMRead_o          => CONNECTED_TO_RdDCMRead_o,          --             .read
			RdDCMByteEnable_o    => CONNECTED_TO_RdDCMByteEnable_o,    --             .byteenable
			RdDCMWaitRequest_i   => CONNECTED_TO_RdDCMWaitRequest_i,   --             .waitrequest
			RdDCMReadData_i      => CONNECTED_TO_RdDCMReadData_i,      --             .readdata
			RdDCMReadDataValid_i => CONNECTED_TO_RdDCMReadDataValid_i, --             .readdatavalid
			RdDCSChipSelect_i    => CONNECTED_TO_RdDCSChipSelect_i,    --  RdDCS_slave.chipselect
			RdDCSWrite_i         => CONNECTED_TO_RdDCSWrite_i,         --             .write
			RdDCSAddress_i       => CONNECTED_TO_RdDCSAddress_i,       --             .address
			RdDCSWriteData_i     => CONNECTED_TO_RdDCSWriteData_i,     --             .writedata
			RdDCSByteEnable_i    => CONNECTED_TO_RdDCSByteEnable_i,    --             .byteenable
			RdDCSWaitRequest_o   => CONNECTED_TO_RdDCSWaitRequest_o,   --             .waitrequest
			RdDCSRead_i          => CONNECTED_TO_RdDCSRead_i,          --             .read
			RdDCSReadData_o      => CONNECTED_TO_RdDCSReadData_o,      --             .readdata
			RdDmaRxData_i        => CONNECTED_TO_RdDmaRxData_i,        --     RdDMA_Rx.data
			RdDmaRxValid_i       => CONNECTED_TO_RdDmaRxValid_i,       --             .valid
			RdDmaTxData_o        => CONNECTED_TO_RdDmaTxData_o,        --     RdDMA_Tx.data
			RdDmaTxValid_o       => CONNECTED_TO_RdDmaTxValid_o,       --             .valid
			RdDmaTxReady_i       => CONNECTED_TO_RdDmaTxReady_i,       --             .ready
			RdDTSChipSelect_i    => CONNECTED_TO_RdDTSChipSelect_i,    --  RdDTS_slave.chipselect
			RdDTSWrite_i         => CONNECTED_TO_RdDTSWrite_i,         --             .write
			RdDTSBurstCount_i    => CONNECTED_TO_RdDTSBurstCount_i,    --             .burstcount
			RdDTSAddress_i       => CONNECTED_TO_RdDTSAddress_i,       --             .address
			RdDTSWriteData_i     => CONNECTED_TO_RdDTSWriteData_i,     --             .writedata
			RdDTSWaitRequest_o   => CONNECTED_TO_RdDTSWaitRequest_o,   --             .waitrequest
			Rstn_i               => CONNECTED_TO_Rstn_i,               --       Resetn.reset_n
			WrDCMAddress_o       => CONNECTED_TO_WrDCMAddress_o,       -- WrDCM_Master.address
			WrDCMWrite_o         => CONNECTED_TO_WrDCMWrite_o,         --             .write
			WrDCMWriteData_o     => CONNECTED_TO_WrDCMWriteData_o,     --             .writedata
			WrDCMRead_o          => CONNECTED_TO_WrDCMRead_o,          --             .read
			WrDCMByteEnable_o    => CONNECTED_TO_WrDCMByteEnable_o,    --             .byteenable
			WrDCMWaitRequest_i   => CONNECTED_TO_WrDCMWaitRequest_i,   --             .waitrequest
			WrDCMReadDataValid_i => CONNECTED_TO_WrDCMReadDataValid_i, --             .readdatavalid
			WrDCMReadData_i      => CONNECTED_TO_WrDCMReadData_i,      --             .readdata
			WrDCSChipSelect_i    => CONNECTED_TO_WrDCSChipSelect_i,    --  WrDCS_slave.chipselect
			WrDCSWrite_i         => CONNECTED_TO_WrDCSWrite_i,         --             .write
			WrDCSAddress_i       => CONNECTED_TO_WrDCSAddress_i,       --             .address
			WrDCSWriteData_i     => CONNECTED_TO_WrDCSWriteData_i,     --             .writedata
			WrDCSByteEnable_i    => CONNECTED_TO_WrDCSByteEnable_i,    --             .byteenable
			WrDCSWaitRequest_o   => CONNECTED_TO_WrDCSWaitRequest_o,   --             .waitrequest
			WrDCSRead_i          => CONNECTED_TO_WrDCSRead_i,          --             .read
			WrDCSReadData_o      => CONNECTED_TO_WrDCSReadData_o,      --             .readdata
			WrDmaRxData_i        => CONNECTED_TO_WrDmaRxData_i,        --     WrDMA_Rx.data
			WrDmaRxValid_i       => CONNECTED_TO_WrDmaRxValid_i,       --             .valid
			WrDmaTxData_o        => CONNECTED_TO_WrDmaTxData_o,        --     WrDMA_Tx.data
			WrDmaTxValid_o       => CONNECTED_TO_WrDmaTxValid_o,       --             .valid
			WrDmaTxReady_i       => CONNECTED_TO_WrDmaTxReady_i,       --             .ready
			WrDTSChipSelect_i    => CONNECTED_TO_WrDTSChipSelect_i,    --  WrDTS_slave.chipselect
			WrDTSWrite_i         => CONNECTED_TO_WrDTSWrite_i,         --             .write
			WrDTSBurstCount_i    => CONNECTED_TO_WrDTSBurstCount_i,    --             .burstcount
			WrDTSAddress_i       => CONNECTED_TO_WrDTSAddress_i,       --             .address
			WrDTSWriteData_i     => CONNECTED_TO_WrDTSWriteData_i,     --             .writedata
			WrDTSWaitRequest_o   => CONNECTED_TO_WrDTSWaitRequest_o,   --             .waitrequest
			Clk_i                => CONNECTED_TO_Clk_i                 --        clock.clk
		);

