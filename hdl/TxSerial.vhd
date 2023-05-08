library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

Entity TxSerial Is
Port(
	RstB		: in	std_logic;
	Clk			: in	std_logic;
	
	TxFfEmpty	: in	std_logic;
	TxFfRdData	: in	std_logic_vector( 7 downto 0 );
	TxFfRdEn	: out	std_logic;
	
	SerDataOut	: out	std_logic
);
End Entity TxSerial;

Architecture rtl Of TxSerial Is

----------------------------------------------------------------------------------
-- Constant declaration
----------------------------------------------------------------------------------
	Constant cBuadCnt	: integer := 868;

----------------------------------------------------------------------------------
-- Signal declaration
----------------------------------------------------------------------------------
	type StateType is
						(
							StIdle,
							StRdReq,
							StWtData,
							StWtEnd
						);
	Signal rState 			: StateType;
	
	Signal rBuadCnt			: std_logic_vector( 9 downto 0 );
	Signal rBuadEn			: std_logic;
	Signal rSerData			: std_logic_vector( 9 downto 0 );
	Signal rTxFfRdEn		: std_logic_vector( 1 downto 0 );
	Signal rDataCnt			: std_logic_vector( 3 downto 0 );
	
Begin

----------------------------------------------------------------------------------
-- Output assignment
----------------------------------------------------------------------------------
	SerDataOut 		<= rSerData(0);
	TxFfRdEn		<= rTxFfRdEn(1);

----------------------------------------------------------------------------------
-- DFF 
----------------------------------------------------------------------------------
	u_rState : process(Clk) Is
	Begin
		if ( rising_edge(Clk) ) then
			if ( RstB = '0' ) then
				rState <= StIdle;
			else
				case ( rState ) Is
					when StIdle		=>
						if ( TxFfEmpty = '0' ) then
							rState 	<= StRdReq;
						else
							rState	<= StIdle;
						end if;
						
					when StRdReq	=>
						rState	<= StWtData;
						
					when StWtData	=>
						if ( rTxFfRdEn(1) = '1' ) then
							rState	<= StWtEnd;
						end if;
						
					when StWtEnd	=>
						if ( rBuadEn = '1' and rDataCnt( 3 downto 0 ) = "1001" ) then
							rState	<= StIdle;
						else
							rState	<= StWtEnd;
						end if;
				end case;
			end if;
		end if;
	end process u_rState;
	
	u_rTxFfRdEn : process(Clk) Is
	Begin
		if ( rising_edge(Clk) ) then
			if ( RstB = '0' ) then
				rTxFfRdEn(1 downto 0)	<= "00";
			else
				if ( rState = StRdReq ) then
					rTxFfRdEn(0)	<= '1';
				else
					rTxFfRdEn(0)	<= '0';
				rTxFfRdEn(1)		<= rTxFfRdEn(0);
				end if;
			end if;
		end if;
	end process u_rTxFfRdEn;
	

	u_rBuadCnt : process(Clk) Is
	Begin
		if ( rising_edge(Clk) ) then
			if ( RstB = '0' ) then
				rBuadCnt( 9 downto 0 )		 <= conv_std_logic_vector(cBuadCnt, rBuadCnt'length);
			else
				if ( rState = StWtEnd ) then
					if ( rBuadCnt = 1 ) then
						rBuadCnt( 9 downto 0 )	 <= conv_std_logic_vector(cBuadCnt, rBuadCnt'length);
					else	
						rBuadCnt( 9 downto 0 )	 <= rBuadCnt - 1;
					end if;
				else
					rBuadCnt( 9 downto 0 )	 <= conv_std_logic_vector(cBuadCnt, rBuadCnt'length);
				end if;
			end if;
		end if;
	end process u_rBuadCnt;
	
	u_rBuadEn : process(Clk) Is
	Begin
		if ( rising_edge(Clk) ) then
			if ( RstB = '0' ) then
				rBuadEn 		<= '0';
			else
				if ( rState = StWtEnd ) then
					if ( rBuadCnt = 2 ) then
						rBuadEn 	<= '1';
					else
						rBuadEn		<= '0';
					end if;
				end if;
			end if;
		end if;
	end process u_rBuadEn;
	
	u_rSerData : process(Clk) Is
	Begin
		if ( rising_edge(Clk) ) then
			if ( RstB = '0' ) then
				rSerData( 7 downto 0 ) <= (others => '1');
			else
				if ( rTxFfRdEn(1) = '1' ) then
					rSerData(9)					<= '1';
					rSerData( 8 downto 1 )		<= TxFfRdData( 7 downto 0);
					rSerData(0)					<= '0';
				elsif ( rBuadEn = '1' ) then
					rSerData( 9 downto 0 )		<= '1' & rSerData( 9 downto 1 );
				else
					rSerData					<= rSerData;
				end if;
			end if;
		end if;
	end process u_rSerData;
	
	u_rDataCnt : process(Clk) Is
	Begin
		if ( rising_edge(Clk) ) then
			if ( RstB = '0' ) then
				rDataCnt( 3 downto 0 ) <= (others => '0');
			else
				if ( rBuadEn = '1' ) then
					if ( rDataCnt( 3 downto 0 ) = "1001" ) then
						rDataCnt( 3 downto 0 ) <= "0000";
					else
						rDataCnt( 3 downto 0 ) <= rDataCnt( 3 downto 0 ) + 1;
					end if;
				else
					rDataCnt( 3 downto 0 ) <= rDataCnt( 3 downto 0 );
				end if;
			end if;
		end if;
	end process u_rDataCnt;
	
End Architecture rtl;