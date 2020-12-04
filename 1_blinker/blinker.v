// File: blinker.v
// Generated by MyHDL 0.11
// Date: Thu Dec  3 16:46:01 2020


`timescale 1ns/10ps

module blinker (
    clk_i,
    led_o
);


input clk_i;
output led_o;
wire led_o;

reg [21:0] cnt;



always @(posedge clk_i) begin: BLINKER_LOC_INSTS_CHUNK_INSTS_0
    cnt <= (cnt + 1);
end



assign led_o = cnt[(22 - 1)];

endmodule
