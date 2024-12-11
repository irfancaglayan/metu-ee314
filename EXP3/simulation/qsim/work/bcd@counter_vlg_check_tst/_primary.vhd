library verilog;
use verilog.vl_types.all;
entity bcdCounter_vlg_check_tst is
    port(
        outp            : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end bcdCounter_vlg_check_tst;
