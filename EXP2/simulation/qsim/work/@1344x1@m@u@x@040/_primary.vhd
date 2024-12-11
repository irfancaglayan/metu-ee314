library verilog;
use verilog.vl_types.all;
entity \4x1MUX\ is
    port(
        Y               : out    vl_logic;
        I               : in     vl_logic_vector(3 downto 0);
        S               : in     vl_logic_vector(1 downto 0)
    );
end \4x1MUX\;
