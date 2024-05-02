`timescale 1ns/1ns

module Intrucciones_TR_TB();
    // Se�ales de entrada
    reg [31:0] TR;
    // Se�ales de salida
    wire TR_ZF;

    // Instancia del DUT (Design Under Test)
    Intrucciones_TR dut (
        .TR(TR),
        .TR_ZF(TR_ZF)
    );
    // Generaci�n de est�mulos
    initial begin
  // Asigna valores a TR para simular diferentes casos de prueba
        TR = 32'h00000001; // Ejemplo de un valor para TR
	
// Asigna valores a los campos de la instrucci�n
	TR[31:26] = 6'd0;
        TR[25:21] = 5'd10; // Direcci�n del primer operando
        TR[20:16] = 5'd11; // Direcci�n del segundo operando
        TR[15:11] = 5'd12; // Direcci�n donde se guardar� el resultado
        TR[10:6] = 6'b000000; // Shift amount, en este caso est� en 0
        TR[5:0] = 6'b100000; // Especifica la operaci�n de suma usando el par�metro ADD
        #100; // Espera un tiempo para la estabilizaci�n de la salida
	
	TR[31:26] = 6'd0;
	TR[25:21] = 5'd10; // Direcci�n del primer operando
        TR[20:16] = 5'd11; // Direcci�n del segundo operando
        TR[15:11] = 5'd12; // Direcci�n donde se guardar� el resultado
        TR[10:6] = 6'b000000; // Shift amount, en este caso est� en 0
        TR[5:0] = 6'b100010; // Especifica la operaci�n de suma usando el par�metro SUB
        #100; // Espera un tiempo para la estabilizaci�n de la salida

	TR[31:26] = 6'd0;
	TR[25:21] = 5'd10; // Direcci�n del primer operando
        TR[20:16] = 5'd11; // Direcci�n del segundo operando
        TR[15:11] = 5'd12; // Direcci�n donde se guardar� el resultado
        TR[10:6] = 6'b000000; // Shift amount, en este caso est� en 0
        TR[5:0] = 6'b100100; // Especifica la operaci�n de suma usando el par�metro AND
        #100; // Espera un tiempo para la estabilizaci�n de la salida

	TR[31:26] = 6'd0;
	TR[25:21] = 5'd10; // Direcci�n del primer operando
        TR[20:16] = 5'd11; // Direcci�n del segundo operando
        TR[15:11] = 5'd12; // Direcci�n donde se guardar� el resultado
        TR[10:6] = 6'b000000; // Shift amount, en este caso est� en 0
        TR[5:0] = 3'b011; // Especifica la operaci�n de suma usando el par�metro OR
        #100; // Espera un tiempo para la estabilizaci�n de la salida

	TR[31:26] = 6'd0;
	TR[25:21] = 5'd10; // Direcci�n del primer operando
        TR[20:16] = 5'd11; // Direcci�n del segundo operando
        TR[15:11] = 5'd12; // Direcci�n donde se guardar� el resultado
        TR[10:6] = 6'b000000; // Shift amount, en este caso est� en 0
        TR[5:0] = 6'b100101; // Especifica la operaci�n de suma usando el par�metro NOT
        #100; // Espera un tiempo para la estabilizaci�n de la salida

	TR[31:26] = 6'd0;
	TR[25:21] = 5'd10; // Direcci�n del primer operando
        TR[20:16] = 5'd11; // Direcci�n del segundo operando
        TR[15:11] = 5'd12; // Direcci�n donde se guardar� el resultado
        TR[10:6] = 6'b000000; // Shift amount, en este caso est� en 0
        TR[5:0] = 6'b100110; // Especifica la operaci�n de suma usando el par�metro SLT
        #100; // Espera un tiempo para la estabilizaci�n de la salida

	TR[31:26] = 6'd0;
	TR[25:21] = 5'd3; // Direcci�n del primer operando
        TR[20:16] = 5'd4; // Direcci�n del segundo operando
        TR[15:11] = 5'd5; // Direcci�n donde se guardar� el resultado
        TR[10:6] = 6'b000000; // Shift amount, en este caso est� en 0
        TR[5:0] = 6'b101010; // Especifica la operaci�n de suma usando el par�metro ADD
        #100; // Espera un tiempo para la estabilizaci�n de la salida

	TR[31:26] = 6'd0;
	TR[25:21] = 5'd3; // Direcci�n del primer operando
        TR[20:16] = 5'd4; // Direcci�n del segundo operando
        TR[15:11] = 5'd5; // Direcci�n donde se guardar� el resultado
        TR[10:6] = 6'b000000; // Shift amount, en este caso est� en 0
        TR[5:0] = 6'b100010; // Especifica la operaci�n de suma usando el par�metro SUB
        #100; // Espera un tiempo para la estabilizaci�n de la salida

	TR[31:26] = 6'd0;
	TR[25:21] = 5'd3; // Direcci�n del primer operando
        TR[20:16] = 5'd4; // Direcci�n del segundo operando
        TR[15:11] = 5'd5; // Direcci�n donde se guardar� el resultado
        TR[10:6] = 6'b000000; // Shift amount, en este caso est� en 0
        TR[5:0] = 6'b100101; // Especifica la operaci�n de suma usando el par�metro NOT
        #100; // Espera un tiempo para la estabilizaci�n de la salida

	TR[31:26] = 6'd0;
	TR[25:21] = 5'd3; // Direcci�n del primer operando
        TR[20:16] = 5'd4; // Direcci�n del segundo operando
        TR[15:11] = 5'd5; // Direcci�n donde se guardar� el resultado
        TR[10:6] = 6'b000000; // Shift amount, en este caso est� en 0
        TR[5:0] = 6'b100100; // Especifica la operaci�n de suma usando el par�metro AND
        #100; // Espera un tiempo para la estabilizaci�n de la salida
        $finish;
    end

endmodule

