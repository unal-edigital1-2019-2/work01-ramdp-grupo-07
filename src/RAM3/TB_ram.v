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
	reg [16:0] addr_in;
	reg [15:0] data_in;
	reg regwrite;
	reg [16:0] addr_out;
	reg regread;

	// Outputs
	wire [15:0] data_out;
	

	// Instantiate the Unit Under Test (UUT)
	buffer_ram_dp uut (
		.clk(clk), 
		.addr_in(addr_in), 
		.data_in(data_in), 
		.regwrite(regwrite), 
		.data_out(data_out), 
		.addr_out(addr_out), 
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
		for (addr_out = 0; addr_out < 10; addr_out = addr_out + 1) begin
			#5 $display("el valor de memoria %d =  %d", addr_out,data_out) ;
		end 
      
		
		//desactiva modo lectura 
		#5
		regread=0;
		
		#5		
		//direccion de entrada
		addr_in = 0;
		//dato de entrada 
		data_in = 16'haaaa;
		// activa dato de escritura 
		regwrite = 1;
		
		#10 //espera
		// en la direccion 1
		addr_in = 1;
		// dato de entrada 
		data_in = 16'h8642;
		//activa el odo escritura
		regwrite = 1;
		
		#10//espera 
		// en la direccion 2
		addr_in = 2;
		// dato de entrada
		data_in = 16'hffff; 
		// activa el odo escritura 
		regwrite = 1;

	   #10//espera 
		addr_in = 3;
		// dato de entrada
		data_in = 16'haaaf; 
		// activa el odo escritura 
		regwrite = 1;

		
		
		//uestra el valor de la eoria direccion y el dato
		#5 $display("el valor de memoria %d = %d", addr_out, data_out);
		
		#10
		
		//lee el dato de la direccion 3
		addr_out = 3;
		regread = 1;
		
		#5 $display("el valor de memoria %d = %d", addr_out, data_out);
		
		#10
		//lee el dato de la direccion 1
		addr_out = 1;
		regread = 1;
		
		#5 $display("el valor de memoria %d = %d", addr_out, data_out);
		
		#10
		
		//lee el dato de la direccion 4
		addr_out = 4;
		regread = 1;
		
		#5 $display("el valor de memoria %d = %d", addr_out, data_out);
		
		#10
		// desactiva lectura
		regread = 0;

	end
  always #1 clk = ~clk;         
endmodule