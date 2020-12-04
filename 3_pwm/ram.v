// File: ram.v
// Generated by MyHDL 0.11
// Date: Fri Dec  4 10:10:10 2020


`timescale 1ns/10ps

module ram (
    clk_i,
    wr_i,
    addr_i,
    data_i,
    data_o
);
// Inputs:
//   clk_i:  Data is read/written on the rising edge of this clock input.
//   wr_i:   When high, data is written to the RAM; when low, data is read from the RAM.
//   addr_i: Address bus for selecting which RAM location is being read/written.
//   data_i: Data bus for writing data into the RAM.
// Outputs:
//   data_o: Data bus for reading data from the RAM.

input clk_i;
input wr_i;
input [8:0] addr_i;
input [23:0] data_i;
output [23:0] data_o;
reg [23:0] data_o;

reg [23:0] mem [0:512-1];



always @(posedge clk_i) begin: RAM_LOC_INSTS_CHUNK_INSTS_K
    if (wr_i) begin
        mem[addr_i] <= data_i;
    end
    else begin
        data_o <= mem[addr_i];
    end
end

endmodule
