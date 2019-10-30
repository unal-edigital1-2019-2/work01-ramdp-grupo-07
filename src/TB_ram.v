`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:   14:41:52 10/22/2019
// Design Name:   buffer_ram_dp
// Module Name:   C:/Users/UECCI/Documents/GitHub/SPARTAN6-ATMEGA-MAX5864/lab/P001-ProyectoCamara/src/ramdp/TB_ram.v
// Project Name:  P001-ProyectoCamara
// Target Device:
// Tool versions:
// Description:
//
// Verilog Test Fixture created by ISE for module: buffer_ram_dp
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
////////////////////////////////////////////////////////////////////////////////

module TB_ram;

	// Inputs
	reg clk;
	reg [14:0] addr_in;
	reg [15:0] data_in;
	reg regwrite;
	reg [14:0] addr_out; //-- variable interna para ubicar el elemento que será leido
	reg regread;

	// Outputs
	wire [15:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	buffer_ram_dp uut (
		.clk(clk),
		.addr_in(addr_in),
		.data_in(data_in),    //-- 3 entradas
		.regwrite(regwrite),

		.data_out(data_out),
		.addr_out(addr_out),   // -- 2 salidas addr_out interno
		.regread(regread)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		addr_in = 0;
		data_in = 0;
		regwrite = 0;
		addr_out = 0;
		regread = 0;

  // Adicionar las estimulos necesarios para simular la lectura y escritura de la memoria ram


 		  #10
 		  addr_in=0;
 		  data_in=234;    //--datos de entrada en escritura
 		  regwrite=1;

 		  #10
         addr_in=1;
 		  data_in=123;
 		  regwrite=1;

 		  #10
 		  addr_in=2;
 		  data_in=334;
 		  regwrite=1;
 		   //$display("el valor de memoria %d =  %d", addr_out,data_out) ;

 		 //-para leer en memoria RAM 
 		  #100;
 		  regread=1;
 		  for (addr_out = 0; addr_out < 3; addr_out = addr_out + 1) begin

 			 #5 $display("el valor de memoria %d =  %d", addr_out,data_out) ;

 		  end

	end
	always #1 clk = ~clk ;



endmodule
