// Write your modules here!
module hamming_code(
  input [3:0] data_in,
  output [7:0] code_out,
  output error_detected,
  output [3:0] corrected_data
);
  
  // Parity bit calculation
  wire p1 = data_in[0] ^ data_in[1] ^ data_in[3];
  wire p2 = data_in[0] ^ data_in[2] ^ data_in[3];
  wire p4 = data_in[1] ^ data_in[2] ^ data_in[3];
  
  // Create the code word
  assign code_out = {p1, p2, data_in, p4};
  
  // Receiver logic
  wire r_p1 = code_out[0] ^ code_out[2] ^ code_out[4] ^ code_out[6]; 
  wire r_p2 = code_out[1] ^ code_out[2] ^ code_out[5] ^ code_out[6];
  wire r_p4 = code_out[3] ^ code_out[4] ^ code_out[5] ^ code_out[6];
  
  // Detect errors
  assign error_detected = (r_p1 | r_p2 | r_p4) ? 1'b1 : 1'b0;
  
  // Correct errors
  assign corrected_data = {
    r_p4 ^ code_out[3],
    r_p2 ^ code_out[1],
    r_p1 ^ code_out[0],
    code_out[2]
  };
endmodule

/*
    Example 1
    
        Input: 0111
        Output: No error detected.

    Example 2

        Input:  

*/