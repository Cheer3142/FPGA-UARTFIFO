library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

Entity RxSerial Is
Port(
	RstB		: in	std_logic;
	Clk			: in	std_logic;
	
	SerDataIn	: in	std_logic;
	
	RxFfFull	: in	std_logic;
	RxFfWrData	: out	std_logic_vector( 7 downto 0 );
	RxFfWrEn	: out	std_logic
);
End Entity RxSerial;

Architecture rtl Of RxSerial Is

----------------------------------------------------------------------------------
-- Constant declaration
----------------------------------------------------------------------------------
	Constant cBuadCnt	: integer := 868;
	Constant cHBuadCnt	: integer := cBuadCnt/2;

----------------------------------------------------------------------------------
-- Signal declaration
----------------------------------------------------------------------------------
	type StateType Is
						(
							StIdle,
							StRdEnd,
							StChkFull
						);
	Signal rState		: StateType;
	
	Signal rBuadCnt		: std_logic_vector( 9 downto 0 );
	Signal rBuadEn		: std_logic;
	signal rSerDataIn	: std_logic;						-- internal input
	signal rRxFfWrData	: std_logic_vector( 7 downto 0 ); 	-- internal output 
	Signal rDataCnt		: std_logic_vector( 3 downto 0 );
	Signal rRxFfWrEn	: std_logic;

Begin

----------------------------------------------------------------------------------
-- Output assignment
----------------------------------------------------------------------------------
	RxFfWrData	<= rRxFfWrData;
	RxFfWrEn	<= rRxFfWrEn;

----------------------------------------------------------------------------------
-- DFF 
----------------------------------------------------------------------------------
	u_rState : Process (Clk) Is
	Begin
		if ( rising_edge(Clk) ) then
			if ( RstB = '0' ) then
				rState <= StIdle;
			else
				case ( rState ) Is
					when StIdle		=>
						if ( SerDataIn = '0' ) then
							rState	<= StRdEnd;
						else
							rState	<= StIdle;
						end if;
					
					when StRdEnd	=>
						if ( rDataCnt( 3 downto 0 ) = "1001" ) then
							rState	<= StChkFull;
						else
							rState	<= StRdEnd;
						end if;
						
					when StChkFull 	=>
						if ( rBuadEn = '1' ) then
							rState		<= StIdle;
						end if;
				end case;
			end if;
		end if;
	End Process u_rState;
	
	u_rSerDataIn : Process (Clk) Is
	Begin
		if ( rising_edge(Clk) ) then
			rSerDataIn		<= SerDataIn;
		end if;
	End Process u_rSerDataIn;
	
	u_rBuadCnt : Process (Clk) Is
	Begin
		if ( rising_edge(Clk) ) then
			if ( RstB = '0' ) then	
				rBuadCnt( 9 downto 0 )		<= conv_std_logic_vector(cBuadCnt, rBuadCnt'length);
			else 
				if ( rState /= StIdle ) then
					if ( rBuadCnt = 1 ) then
						rBuadCnt( 9 downto 0 )	<= conv_std_logic_vector(cBuadCnt, rBuadCnt'length);
					else
						rBuadCnt( 9 downto 0 )	<= rBuadCnt(9 downto 0) - 1;
					end if;
				else
					rBuadCnt( 9 downto 0 ) 		<= conv_std_logic_vector(cBuadCnt, rBuadCnt'length); 
				end if;
			end if;
		end if;
	End Process u_rBuadCnt;
	
	u_rBuadEn : Process (Clk) Is
	Begin
		if ( rising_edge(Clk) ) then
			if ( RstB = '0' ) then
				rBuadEn 		<= '0';
			else
				if ( rBuadCnt = cHBuadCnt ) then
					rBuadEn		<= '1';
				else
					rBuadEn		<= '0';
				end if;
			end if;
		end if;
	end Process u_rBuadEn;
	
	u_rRxFfWrData : Process (Clk) Is
	Begin
		if ( rising_edge(Clk) ) then
			if ( RstB = '0' ) then
				rRxFfWrData		<= (others => '1');
			else
				if ( rState = StRdEnd ) then
					if ( rBuadEn = '1' ) then
						rRxFfWrData(7) 					<= rSerDataIn;
						rRxFfWrData( 6 downto 0 ) 		<= rRxFfWrData( 7 downto 1 );
					else
						rRxFfWrData( 7 downto 0 ) 		<= rRxFfWrData( 7 downto 0 );
					end if;
				end if;
			end if;
		end if;
	end Process u_rRxFfWrData;
	
	u_rRxFfWrEn : Process(Clk) Is
	Begin
		if ( rising_edge(Clk) ) then
			if ( RstB = '0') then
				rRxFfWrEn		<= '0';
			else
				if ( rState = StChkFull ) then
					if ( rBuadEn = '1' and RxFfFull = '0' and rSerDataIn = '1') then
						rRxFfWrEn	<= '1';
					else
						rRxFfWrEn	<= '0';
					end if;
				else
					rRxFfWrEn		<= '0';
				end if;
			end if;
		end if;
	end Process u_rRxFfWrEn;
	
	u_rDataCnt : Process(Clk) Is
	Begin
		if ( rising_edge(Clk) ) then
			if ( RstB = '0' ) then
				rDataCnt( 3 downto 0 ) 			<= (others => '0');
			else
				if ( rBuadEn = '1' ) then
					if ( rDataCnt( 3 downto 0 ) = "1001" ) then
						rDataCnt( 3 downto 0 ) 	<= "0000";
					else
						rDataCnt( 3 downto 0 )	<= rDataCnt( 3 downto 0 ) + 1;
					end if;
				else
					rDataCnt( 3 downto 0 )		<= rDataCnt( 3 downto 0 );
				end if;
			end if;
		end if;
	end Process u_rDataCnt;
	
End Architecture rtl;