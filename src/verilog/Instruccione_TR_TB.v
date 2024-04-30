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

    // Generaci�n del reloj
    reg CLK = 0;
    always #10 CLK = ~CLK;

    // Generaci�n de est�mulos
    initial begin
        // Asigna valores a TR para simular diferentes casos de prueba
        TR = 32'h00000001; // Ejemplo de un valor para TR
        #100; // Espera un tiempo para la estabilizaci�n de la salida
        $finish;
    end

endmodule

