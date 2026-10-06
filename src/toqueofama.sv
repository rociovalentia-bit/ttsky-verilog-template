`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.09.2024 17:32:59
// Design Name: 
// Module Name: toqueofama
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
//Este segmento del codigo identificara si es un toque o fama
//utulizando el comparar 
module toqueofama(
        input logic A0x, A1x, B0x, B1x, C0x, C1x,
        input logic A0y, A1y,
        output logic F, T
    );
    logic x1, x2, x3, not_F;
    
    comparar comp1 (A0y,A1y,A0x,A1x,F);
    comparar comp2 (A0y,A1y,B0x,B1x,x1);
    comparar comp3 (A0y,A1y,C0x,C1x,x2);
    or or1 (x3,x1,x2);
    not not1 (not_F,F);
    and and1 (T,x3,not_F);
endmodule
