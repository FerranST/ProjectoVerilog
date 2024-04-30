module ControladorALU (
    input wire [5:0] bits_instruccion, // Entrada de 6 bits de la instrucci�n
    input wire[2:0] codigo_UC,         // Entrada de 3 bits de la UC
    output reg [2:0] senial_ALU    // Salida de 3 bits para la ALU
);

// Par�metros para los c�digos de operaci�n de la ALU
parameter ADD = 3'b000;
parameter SUB = 3'b001;
parameter AND = 3'b010;
parameter OR  = 3'b011;
parameter NOR = 3'b100;
parameter SLT = 3'b101;
parameter NOP = 3'b111; // No operation (ninguna operaci�n)

// Definici�n de se�ales para operaciones R
reg operacion_R;

always @* begin
    // Verifica si la instrucci�n es tipo R (asumiendo que el c�digo de operaci�n R es 3'b000)
    if (codigo_UC == 3'b000) begin
        operacion_R = 1'b1; // La instrucci�n es tipo R
    end else begin
        operacion_R = 1'b0; // La instrucci�n no es tipo R
    end

    // Dependiendo del c�digo de la UC y si la instrucci�n es tipo R, asigna la se�al correspondiente para la ALU
    case (codigo_UC)
        3'b000: senial_ALU = NOP; // No operation
        3'b001: senial_ALU = NOP; // No operation
        3'b010: senial_ALU = NOP; // No operation
        3'b011: senial_ALU = NOP; // No operation
        3'b100: senial_ALU = NOP; // No operation
        3'b101: senial_ALU = NOP; // No operation
        3'b110: senial_ALU = NOP; // No operation
        3'b111: begin // Dependiendo de la instrucci�n tipo R o no, asigna la operaci�n correspondiente
            if (operacion_R) begin // Si es una instrucci�n tipo R
                // Asigna la se�al de operaci�n de acuerdo a los bits 5:0 de la instrucci�n
                case (bits_instruccion)
                    6'b100000: senial_ALU = ADD; // Si la instrucci�n es ADD
                    6'b100010: senial_ALU = SUB; // Si la instrucci�n es SUB
                    6'b100100: senial_ALU = AND; // Si la instrucci�n es AND
                    6'b100101: senial_ALU = OR; // Si la instrucci�n es OR
                    6'b100110: senial_ALU = NOR; // Si la instrucci�n es XOR
					6'b101010: senial_ALU = SLT; //Si la instrucci�n es STL
                    default: senial_ALU = NOP; // Cualquier otro caso, no realiza operaci�n
                endcase
            end else begin // Si no es una instrucci�n tipo R
                senial_ALU = NOP; // No operation
            end
        end
    endcase
end

endmodule

