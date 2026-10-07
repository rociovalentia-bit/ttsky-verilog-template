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
    
    comparar comp11 (.p0x(A0y),.p0x(A1y),.p0x(A0x),.p0x(A1x),.p0x(F));
    comparar comp12 (.p1x(A0y),.p1x(A1y),.p1x(A0x),.p1x(A1x),.p1x(F));
    comparar comp13 (.p0y(A0y),.p0y(A1y),.p0y(A0x),.p0y(A1x),.p0y(F));
    comparar comp14 (.p1y(A0y),.p1y(A1y),.p1y(A0x),.p1y(A1x),.p1y(F));	

    comparar comp21 (.p0x(A0y),.p0x(A1y),.p0x(B0x),.p0x(B1x),.p0x(x1));
    comparar comp22 (.p1x(A0y),.p1x(A1y),.p1x(B0x),.p1x(B1x),.p1x(x1));
    comparar comp23 (.p0y(A0y),.p0y(A1y),.p0y(B0x),.p0y(B1x),.p0y(x1));
    comparar comp24 (.p1y(A0y),.p1y(A1y),.p1y(B0x),.p1y(B1x),.p1y(x1));

    comparar comp31 (.p0x(A0y),.p0x(A1y),.p0x(C0x),.p0x(C1x),.p0x(x2));
    comparar comp32 (.p1x(A0y),.p1x(A1y),.p1x(C0x),.p1x(C1x),.p1x(x2));
    comparar comp33 (.p0y(A0y),.p0y(A1y),.p0y(C0x),.p0y(C1x),.p0y(x2));
    comparar comp34 (.p1y(A0y),.p1y(A1y),.p1y(C0x),.p1y(C1x),.p1y(x2));
    assign x3=x1||x2
    assign not_F||F
    assign T=x3&not_F

    //or or1 (x3,x1,x2);
    //not not1 (not_F,F);
    //and and1 (T,x3,not_F);
endmodule
