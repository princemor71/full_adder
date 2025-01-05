`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.01.2025 13:22:34
// Design Name: 
// Module Name: bdc
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


module bdc();

    // Declare inputs and outputs
    reg [3:0] b;         // 4-bit binary input
    wire [3:0] d;        // 4-bit BCD output

    // Instantiate the binary_bcd module
    binary_bcd uut (
        .b(b),
        .d(d)
    );

    // Initial block for stimulus
    initial begin
        // Display format
       // $display("Binary Input\tBCD Output");

        // Test case 1: Binary input = 0
        b = 4'b0000;  // 0 in binary
        #10;          // Wait for 10 time units
        //$display("%b\t\t%b", b, d);

        // Test case 2: Binary input = 1
        b = 4'b0001;  // 1 in binary
        #10;
        //$display("%b\t\t%b", b, d);

        // Test case 3: Binary input = 2
        b = 4'b0010;  // 2 in binary
        #10;
        //$display("%b\t\t%b", b, d);

        // Test case 4: Binary input = 3
        b = 4'b0011;  // 3 in binary
        #10;
        //$display("%b\t\t%b", b, d);

        // Test case 5: Binary input = 7
        b = 4'b0111;  // 7 in binary
        #10;
       // $display("%b\t\t%b", b, d);

        // Test case 6: Binary input = 8
        b = 4'b1000;  // 8 in binary
        #10;
        //$display("%b\t\t%b", b, d);

        // Test case 7: Binary input = 9
        b = 4'b1001;  // 9 in binary
        #10;
       // $display("%b\t\t%b", b, d);

        // Test case 8: Binary input = 10
        b = 4'b1010;  // 10 in binary
        #10;
//        $display("%b\t\t%b", b, d);

        // Test case 9: Binary input = 15
        b = 4'b1111;  // 15 in binary
        #10;
  //      $display("%b\t\t%b", b, d);

        // End the simulation
        $finish;
    end

endmodule
