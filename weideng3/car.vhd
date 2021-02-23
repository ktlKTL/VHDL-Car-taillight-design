LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL; 
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
entity car is
 port(clk,tright,tleft,mark:in std_logic;
	  rightlight:out std_logic_vector(2 downto 0);
	  leftlight:out std_logic_vector(2 downto 0));
end entity car;

architecture behave of car is
	signal llight:std_logic_vector(1 downto 0);
	signal rlight:std_logic_vector(1 downto 0);
begin
	control:process(clk,tleft,tright)
	begin
		if clk'event and clk='1'then
			if rlight="01"then
				rlight<="11";
			else rlight<=(rlight-1);
	        end if;
	        if llight="01"then
				llight<="11";
			else llight<=(llight-1);
	        end if;
	    end if;
	end process control;
	proout:process(clk,tright,tleft,rlight,llight,mark)
	begin
		if clk'event and clk='1'then
			if tleft='0'and tright='1'then
				leftlight<="000";
				case rlight is
					when"01"=>rightlight<="001";
					when"10"=>rightlight<="010";
					when"11"=>rightlight<="100";
					when others=>rightlight<="000";
				end case;
			end if;
			if tleft='1'and tright='0'then
				rightlight<="000";
				case rlight is
					when"01"=>leftlight<="100";
					when"10"=>leftlight<="010";
					when"11"=>leftlight<="001";
					when others=>leftlight<="000";
				end case;
			end if;
		end if;
		if tleft='1'and tright='1'then
			leftlight<="111";
			rightlight<="111";
		elsif tleft='0'and tright='0'then
			leftlight<="000";
			rightlight<="000";
		end if;
		if mark='1'then
			leftlight<="111";
			rightlight<="111";
		end if;
	end process proout;
end behave;