library verilog;
use verilog.vl_types.all;
entity fouroneMUX is
    port(
        Y               : out    vl_logic;
        I               : in     vl_logic_vector(3 downto 0);
        S               : in     vl_logic_vector(1 downto 0)
    );
end fouroneMUX;
