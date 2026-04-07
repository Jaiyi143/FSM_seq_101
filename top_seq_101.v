//top level design seq 101

module top_seq_101 (out,state,clk_led,clk_in,rst_n,in);

input 		in;
input 		rst_n;
input 		clk_in;
output 		clk_led;
output [1:0]	state;
output 	out;

//nets
wire clk_w;

//clock divider instance

clk_div #(.PERIOD_OUT(3)) clk_div_ins(
.clk_in(clk_in),
.clk_out(clk_w),
.clk_led(clk_led)
);

//seq instance
seq_101 seq101(
.out(out),
.state(state),
.in(in),
.clk(clk_w),
.rst_n(rst_n)
);

endmodule