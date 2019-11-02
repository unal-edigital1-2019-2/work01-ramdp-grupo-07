`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:   
// Design Name: 	
// Module Name:    buffer_ram_dp
// Project Name:
// Target Devices:
// Tool versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////
module buffer_ram_dp#(
	parameter AW = 15, // Cantidad de bits  de la dirección
	parameter DW = 8, // cantidad de Bits de los datos
	parameter   imageFILE= "./image.men")
	(
	input  clk,
	input  [AW-1: 0] addr_in,
	input  [DW-1: 0] data_in,
	input  regwrite,

	output reg [DW-1: 0] data_out,
	input [AW-1: 0] addr_out,
	input regread
	);

//-- Calcular el numero de posiciones totales de memoria
localparam NPOS = 2 ** AW; //-- Memoria

 reg [DW-1: 0] ram [0: NPOS-1];

//-- Lectura/escritura  de la memoria port 1
always @(posedge clk) begin
       if (regwrite == 1)  // -- sí regwrite esta en 1 escribe informacion en la ram para la posición addr_in de entrada
             ram[addr_in] <= data_in; // -- data in representa el bus de datos de entrada escritos en la ram
end

//-- Lectura/escritura  de la memoria port 2
always @(posedge clk) begin
       if (regread == 1) 
           data_out <= ram[addr_out];
end

initial begin
	$readmemh(imageFILE, ram);
end

endmodule
