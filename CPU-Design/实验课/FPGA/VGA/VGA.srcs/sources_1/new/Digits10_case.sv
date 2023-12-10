module Digits10_case(
    input  logic [3:0] digit,   // digit 0-9 
    input  logic [2:0] yofs,    // vertical offset (0-4)
    output logic [4:0] bits );   // output (5 bits)
    
    logic [6:0] address = {digit,yofs};
    
    always @(*) 
        case (address) 
            // digit "0" 
            7'o00: bits = 5'b11111; // ***** 
            7'o01: bits = 5'b10001; // *   * 
            7'o02: bits = 5'b10001; // *   * 
            7'o03: bits = 5'b10001; // *   * 
            7'o04: bits = 5'b11111; // ***** 
            // digit "1" 
            7'o10: bits = 5'b01100; //  ** 
            7'o11: bits = 5'b00100; //   * 
            7'o12: bits = 5'b00100; //   * 
            7'o13: bits = 5'b00100; //   * 
            7'o14: bits = 5'b11111; // ***** 
            // digit "2"             
            7'o20: bits = 5'b11111; // *****
            7'o21: bits = 5'b00001; //     *
            7'o22: bits = 5'b11111; // *****
            7'o23: bits = 5'b10000; // *
            7'o24: bits = 5'b11111; // *****
            // digit "3" 
            7'o30: bits = 5'b11111; // *****
            7'o31: bits = 5'b00001; //     *
            7'o32: bits = 5'b11111; // *****
            7'o33: bits = 5'b00001; //     *
            7'o34: bits = 5'b11111; // *****
            // digit "4" 
            7'o40: bits = 5'b10001; // *   *
            7'o41: bits = 5'b10001; // *   *
            7'o42: bits = 5'b11111; // *****
            7'o43: bits = 5'b00001; //     *
            7'o44: bits = 5'b00001; //     *
            // digit "5" 
            7'o50: bits = 5'b11111; // *****
            7'o51: bits = 5'b10000; // *
            7'o52: bits = 5'b11111; // *****
            7'o53: bits = 5'b00001; //     *
            7'o54: bits = 5'b11111; // *****
            // digit "6" 
            7'o60: bits = 5'b11111; // *****
            7'o61: bits = 5'b10000; // *
            7'o62: bits = 5'b11111; // *****
            7'o63: bits = 5'b10001; // *   *
            7'o64: bits = 5'b11111; // *****
            // digit "7" 
            7'o70: bits = 5'b11111; // *****
            7'o71: bits = 5'b00001; //     *
            7'o72: bits = 5'b00001; //     *
            7'o73: bits = 5'b00001; //     *
            7'o74: bits = 5'b00001; //     *
            // digit "8" 
            7'o100: bits = 5'b11111; // *****
            7'o101: bits = 5'b10001; // *   *
            7'o102: bits = 5'b11111; // *****
            7'o103: bits = 5'b10001; // *   *
            7'o104: bits = 5'b11111; // *****
            // digit "9" 
            7'o110: bits = 5'b11111; // *****
            7'o111: bits = 5'b10001; // *   *
            7'o112: bits = 5'b11111; // *****
            7'o113: bits = 5'b00001; //     *
            7'o114: bits = 5'b11111; // *****
            default: bits = 0;
        endcase
endmodule