///////////////////////////////////////////////////////////////////////////////////
// Testbench for Component: OneBitAdderHalf
// Package: FIUSCIS-CDA
// Course: CDA3102 (Computer Architecture), Florida International University
// Developer: Trevor Cickovski
// License: MIT, (C) 2023 All Rights Reserved
///////////////////////////////////////////////////////////////////////////////////

module testbench();
`include "../Test/Test.v"
///////////////////////////////////////////////////////////////////////////////////
// Inputs: A (1-bit)
//         B (1-bit)
//         C (1-bit)
reg A;
reg B;
///////////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////
// Outputs: S (2-bit)
wire[1:0] S;
///////////////////////////////////////////////////////////////////////////////////

OneBitAdderHalf myAdder(A, B, S[0], S[1]);

initial begin
////////////////////////////////////////////////////////////////////////////////////////
// Test: 0+0=0 (00)
$display("Testing: 0+0=0 (00 in binary)");
A=0; B=0;   #10; 
verifyEqual2(S, A+B);
////////////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////////////
// Test: 0+1=1 (01)
$display("Testing: 0+1=1 (01 in binary)");
A=0; B=1;  #10; 
verifyEqual2(S, A+B);
////////////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////////////
// Test: 1+0=1 (01)
$display("Testing: 1+0=1 (01 in binary)");
A=1; B=0;   #10; 
verifyEqual2(S, A+B);
////////////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////////////
// Test: 1+1=2 (10)
$display("Testing: 1+1=2 (10 in binary)");
A=1; B=1;  #10; 
verifyEqual2(S, A+B);
////////////////////////////////////////////////////////////////////////////////////////

$display("All tests passed.");
end

endmodule

