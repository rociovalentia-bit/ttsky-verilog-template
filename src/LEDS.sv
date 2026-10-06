`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.09.2024 18:06:24
// Design Name: 
// Module Name: LEDS
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
//Este modulo es para las leds, verificando entradas y salidas, siendo las entradas los toques o famas

module LEDS(
    input logic E1,
    input logic E2,
    input logic E3,
    output logic S1,
    output logic S2,
    output logic S3
    );
   logic x1,x2;
   or orled1(S1,E1,E2,E3);
   and andled3(S3,E1,E2,E3);
   xnor xnorled2(x1,E1,E2,E3);
   and andled2(x2,S1,x1);
   or orled2(S2,x2,S3);  
endmodule
