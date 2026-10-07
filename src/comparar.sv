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
//En esta parte compararemos si las metradas son iguales, ya que cuando revisen nuestro informe, observaran que en el logisim, al momento de ahcer el diagrama, se nos repite mucho esta parte que compara
//ahora cambie
module comparar(
        input logic p0x, p1x, p0y, p1y,
        output logic y
    );
    
    logic x1, x2;
    xnor xno1 (x1, p0x, p0y);
    xnor xno2 (x2, p1x, p1y);
    
    and  and1 (y, x1, x2);
endmodule

