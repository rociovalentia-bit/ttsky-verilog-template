`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.09.2024 16:51:36
// Design Name: 
// Module Name: comparar
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


module comparar(
        input logic p0x, p1x, p0y, p1y,
        output logic y
    );
    
    logic x1, x2;
    assign x1=p0x~^p0y;
    assign x2=~(p1y^p1y);
    assign y=x1&x2;
endmodule

