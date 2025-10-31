`timescale 1ns / 1ps

module eight_bit_mux(
 input [7:0] A, B, C, D,
    input [1:0] sel,
    output [7:0] Y
);

    assign Y = (sel == 2'b00 ) ? A :
               (sel == 2'b01 ) ? B :
               (sel == 2'b10 ) ? C : 
               (sel == 2'b11 ) ? D : 0;
     
endmodule