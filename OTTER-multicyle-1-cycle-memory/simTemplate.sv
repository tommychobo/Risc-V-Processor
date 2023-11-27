`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 09/24/2018 08:37:20 AM
// Design Name:
// Module Name: simTemplate
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
module simTemplate();

    logic CLK=0,BTNL,BTNC,PS2Clk,PS2Data,VGA_HS,VGA_VS,Tx;
    logic [15:0] SWITCHES,LEDS;
    logic [7:0] CATHODES,VGA_RGB;
    logic [3:0] ANODES;

    OTTER_Wrapper DUT (
    .CLK(CLK),
    .BTNL(BTNL),
    .BTNC(BTNC),
    .SWITCHES(SWITCHES),
    .PS2Clk(PS2Clk),
    .PS2Data(PS2Data),
    .LEDS(LEDS),
    .CATHODES(CATHODES),
    .ANODES(ANODES),
    .VGA_RGB(VGA_RGB),
    .VGA_HS(VGA_HS),
    .VGA_VS(VGA_VS),
    .Tx(Tx)
    );

    initial forever  #10  CLK =  ! CLK;


    initial begin
        BTNC=1;
        #600
        BTNC=0;
        SWITCHES=15'd0;

      //$finish;
    end
endmodule