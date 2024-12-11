library verilog;
use verilog.vl_types.all;
entity bcdCounter is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        outp            : out    vl_logic_vector(3 downto 0)
    );
end bcdCounter;
