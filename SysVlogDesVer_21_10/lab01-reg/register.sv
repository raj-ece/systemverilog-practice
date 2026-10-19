module register(
  output logic [7:0] out,
  input  logic [7:0] data,
  input  logic enable,
  input  logic clk,
  input  logic rst_
);
  timeunit 1ns;
  timeprecision 100ps;
  
    
  always_ff @(posedge clk or negedge rst_)
    
        if(!rst_)
        out <= 8'h00;
    else if(enable) 
        out <= data;
    
endmodule
  