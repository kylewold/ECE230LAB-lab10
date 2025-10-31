`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2025 09:52:45 AM
// Design Name: 
// Module Name: lab10_demux
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module lab10_demux(
    input [7:0] data,
    input [1:0] sel,
    output reg [7:0] A,
    output reg [7:0] B,
    output reg [7:0] C,
    output reg [7:0] D
);

    always @(*) begin 
        case(sel)
            2'b00: {D, C, B, A} <= {8'b0, 8'b0, 8'b0, data}; 
            2'b01: {D, C, B, A} <= {8'b0, 8'b0, data, 8'b0};
            2'b10: {D, C, B, A} <= {8'b0, data, 8'b0, 8'b0};
            2'b11: {D, C, B, A} <= {data, 8'b0, 8'b0, 8'b0};
        endcase
    end
    
endmodule
