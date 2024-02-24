`timescale 1ns / 1ps

module testbench();
    reg   clock,
          reset;
    
    wire  [9:0] phase;     
    wire  [9:0] data_sin;
    
    
    sine_wave_generator UUT(clock, reset, phase, data_sin);
    
    initial begin
        clock = 1'b0;
        reset = 1'b1;
        
        #1000
        reset = 1'b0;      
    end
    
    always #500 clock = ~clock;
    
    always @(posedge clock) begin
        // output phase and data_sin values to the simulation logs
        $display("Time: %t, Phase: %d, Data_sin: %d", $time, phase, data_sin);
    end
    
    // end the simulation after a certain period of time
    initial begin
        #10000; // end simulation after 10000 time units
        $finish;
    end
endmodule
