`timescale 1ns / 1ps

module phase_to_amplitude_converter(
    reset,   // reset signal
    phase,   // 10-bit phase accumulator
    data_sin // output sine wave values   
    );

    input reset;
          
    input  [9:0] phase;
    
    output [9:0] data_sin;
    reg    [9:0] data_sin;
    
    always @ (*) begin
              
            if (reset) begin
                data_sin = 10'd100;
            end
            // bin 1
            else if (phase >= 0 && phase < 11) begin
                data_sin = 10'd100;
            end
            // bin 2
            else if (phase >= 11 && phase < 21) begin
                data_sin = 10'd106;
            end
            // bin 3
            else if (phase >= 21 && phase < 31) begin
                data_sin = 10'd113;
            end
            // bin 4
            else if (phase >= 31 && phase < 41) begin
                data_sin = 10'd119;
            end
            // bin 5
            else if (phase >= 41 && phase < 52) begin
                data_sin = 10'd125;
            end
            // bin 6
            else if (phase >= 52 && phase < 63) begin
                data_sin = 10'd131;
            end
            // bin 7 
            else if (phase >= 63 && phase < 73) begin
                data_sin = 10'd137;
            end
            // bin 8
            else if (phase >= 73 && phase < 83) begin
                data_sin = 10'd143;
            end
            // bin 9
            else if (phase >= 83 && phase < 93) begin
                data_sin = 10'd148;
            end
            // bin 10
            else if (phase >= 93 && phase < 104) begin
                data_sin = 10'd154;
            end
            // bin 11
            else if (phase >= 104 && phase < 115) begin
                data_sin = 10'd159;
            end
            // bin 12
            else if (phase >= 115 && phase < 125) begin
                data_sin = 10'd164;
            end
            // bin 13
            else if (phase >= 125 && phase < 135) begin
                data_sin = 10'd168;
            end
            // bin 14
            else if (phase >= 135 && phase < 145) begin
                data_sin = 10'd173;
            end
            // bin 15
            else if (phase >= 145 && phase < 156) begin
                data_sin = 10'd177;
            end
            // bin 16
            else if (phase >= 156 && phase < 166) begin
                data_sin = 10'd181;
            end
            // bin 17
            else if (phase >= 166 && phase < 176) begin
                data_sin = 10'd184;
            end
            // bin 18
            else if (phase >= 176 && phase < 186) begin
                data_sin = 10'd188;
            end
            // bin 19
            else if (phase >= 186 && phase < 196) begin
                data_sin = 10'd190;
            end
            // bin 20
            else if (phase >= 196 && phase < 207) begin
                data_sin = 10'd193;
            end
            // bin 21
            else if (phase >= 207 && phase < 217) begin
                data_sin = 10'd195;
            end
            // bin 22
            else if (phase >= 217 && phase < 227) begin
                data_sin = 10'd197;
            end
            // bin 23
            else if (phase >= 227 && phase < 237) begin
                data_sin = 10'd198;
            end
            // bin 24
            else if (phase >= 237 && phase < 247) begin
                data_sin = 10'd199;
            end
            // bin 25
            else if (phase >= 247 && phase < 258) begin
                data_sin = 10'd200;
            end
            // bin 26
            else if (phase >= 258 && phase < 268) begin
                data_sin = 10'd200;
            end         
            // bin 27
            else if (phase >= 268 && phase < 278) begin
                data_sin = 10'd200;
            end
            // bin 28
            else if (phase >= 278 && phase < 288) begin
                data_sin = 10'd199;
            end
            // bin 29
            else if (phase >= 288 && phase < 298) begin
                data_sin = 10'd198;
            end
            // bin 30
            else if (phase >= 298 && phase < 309) begin
                data_sin = 10'd197;
            end
            // bin 31
            else if (phase >= 309 && phase < 319) begin
                data_sin = 10'd195;
            end
            // bin 32
            else if (phase >= 319 && phase < 329) begin
                data_sin = 10'd193;
            end
            // bin 33
            else if (phase >= 329 && phase < 339) begin
                data_sin = 10'd190;
            end
            // bin 34
            else if (phase >= 334 && phase < 344) begin
                data_sin = 10'd188;
            end
            // bin 35
            else if (phase >= 344 && phase < 355) begin
                data_sin = 10'd184;
            end
            // bin 36
            else if (phase >= 355 && phase < 365) begin
                data_sin = 10'd181;
            end
            // bin 37
            else if (phase >= 365 && phase < 375) begin
                data_sin = 10'd177;
            end
            // bin 38
            else if (phase >= 375 && phase < 385) begin
                data_sin = 10'd173;
            end
            // bin 39
            else if (phase >= 385 && phase < 395) begin
                data_sin = 10'd168;
            end
            // bin 40
            else if (phase >= 395 && phase < 407) begin
                data_sin = 10'd164;
            end
            // bin 41
            else if (phase >= 407 && phase < 418) begin
                data_sin = 10'd159;
            end
            // bin 42
            else if (phase >= 418 && phase < 428) begin
                data_sin = 10'd154;
            end
            // bin 43
            else if (phase >= 428 && phase < 439) begin
                data_sin = 10'd148;
            end
            // bin 44
            else if (phase >= 439 && phase < 449) begin
                data_sin = 10'd143;
            end
            // bin 45            
            else if (phase >= 449 && phase < 460) begin
                data_sin = 10'd137;
            end
            // bin 46
            else if (phase >= 460 && phase < 470) begin
                data_sin = 10'd131;
            end
            // bin 47
            else if (phase >= 470 && phase < 480) begin
                data_sin = 10'd125;
            end
            // bin 48
            else if (phase >= 480 && phase < 490) begin
                data_sin = 10'd119;
            end
            // bin 49
            else if (phase >= 490 && phase < 500) begin
                data_sin = 10'd113;
            end
            // bin 50
            else if (phase >= 500 && phase < 512) begin
                data_sin = 10'd106;
            end
            // bin 51
            else if (phase >= 512 && phase < 522) begin
                data_sin = 10'd100;
            end
            // bin 52
            else if (phase >= 522 && phase < 532) begin
                data_sin = 10'd94;
            end
            // bin 53
            else if (phase >= 432 && phase < 542) begin
                data_sin = 10'd87;
            end
            // bin 54
            else if (phase >= 542 && phase < 552) begin
                data_sin = 10'd81;
            end
            // bin 55
            else if (phase >= 552 && phase < 553) begin
                data_sin = 10'd75;
            end
            // bin 56
            else if (phase >= 553 && phase < 563) begin
                data_sin = 10'd69;
            end
            // bin 57
            else if (phase >= 563 && phase < 573) begin
                data_sin = 10'd63;
            end
            // bin 58
            else if (phase >= 573 && phase < 583) begin
                data_sin = 10'd57;
            end
            // bin 59
            else if (phase >= 583 && phase < 593) begin
                data_sin = 10'd52;
            end
            // bin 60
            else if (phase >= 593 && phase < 604) begin
                data_sin = 10'd46;
            end
            // bin 61
            else if (phase >= 604 && phase < 614) begin
                data_sin = 10'd41;
            end
            // bin 62
            else if (phase >= 614 && phase < 624) begin
                data_sin = 10'd36;
            end
            // bin 63
            else if (phase >= 624 && phase < 634) begin
                data_sin = 10'd32;
            end
            // bin 64
            else if (phase >= 634 && phase < 644) begin
                data_sin = 10'd27;
            end
            // bin 65
            else if (phase >= 644 && phase < 665) begin
                data_sin = 10'd23;
            end
            // bin 66
            else if (phase >= 665 && phase < 675) begin
                data_sin = 10'd19;
            end
            // bin 67
            else if (phase >= 675 && phase < 685) begin
                data_sin = 10'd16;
            end
            // bin 68
            else if (phase >= 685 && phase < 695) begin
                data_sin = 10'd12;
            end
            // bin 69
            else if (phase >= 695 && phase < 705) begin
                data_sin = 10'd10;
            end
            // bin 70
            else if (phase >= 705 && phase < 716) begin
                data_sin = 10'd7;
            end
            // bin 71
            else if (phase >= 716 && phase < 726) begin
                data_sin = 10'd5;
            end
            // bin 72
            else if (phase >= 726 && phase < 736) begin
                data_sin = 10'd3;
            end
            // bin 73
            else if (phase >= 736 && phase < 746) begin
                data_sin = 10'd2;
            end
            // bin 74
            else if (phase >= 746 && phase < 756) begin
                data_sin = 10'd1;
            end
            // bin 75
            else if (phase >= 756 && phase < 767) begin
                data_sin = 10'd0;
            end
            // bin 76
            else if (phase >= 767 && phase < 777) begin
                data_sin = 10'd0;
            end                  
            // bin 77
            else if (phase >= 777 && phase < 787) begin
                data_sin = 10'd0;
            end      
            // bin 78
            else if (phase >= 787 && phase < 797) begin
                data_sin = 10'd1;
            end
            // bin 79
            else if (phase >= 797 && phase < 807) begin
                data_sin = 10'd2;
            end
            // bin 80
            else if (phase >= 807 && phase < 819) begin
                data_sin = 10'd3;
            end
            // bin 81
            else if (phase >= 819 && phase < 829) begin
                data_sin = 10'd5;
            end
            // bin 82
            else if (phase >= 829 && phase < 839) begin
                data_sin = 10'd7;
            end
            // bin 83
            else if (phase >= 839 && phase < 849) begin
                data_sin = 10'd10;
            end
            // bin 84
            else if (phase >= 849 && phase < 859) begin
                data_sin = 10'd12;
            end
            // bin 85
            else if (phase >= 859 && phase < 870) begin
                data_sin = 10'd16;
            end
            // bin 86
            else if (phase >= 870 && phase < 880) begin
                data_sin = 10'd19;
            end
            // bin 87
            else if (phase >= 880 && phase < 890) begin
                data_sin = 10'd23;
            end
            // bin 88
            else if (phase >= 890 && phase < 900) begin
                data_sin = 10'd27;
            end
            // bin 89
            else if (phase >= 900 && phase < 910) begin
                data_sin = 10'd32;
            end
            // bin 90
            else if (phase >= 910 && phase < 921) begin
                data_sin = 10'd36;
            end
            // bin 91
            else if (phase >= 921 && phase < 932) begin
                data_sin = 10'd41;
            end
            // bin 92
            else if (phase >= 932 && phase < 942) begin
                data_sin = 10'd46;
            end
            // bin 93
            else if (phase >= 942 && phase < 952) begin
                data_sin = 10'd52;
            end
            // bin 94
            else if (phase >= 952 && phase < 962) begin
                data_sin = 10'd57;
            end
            // bin 95
            else if (phase >= 962 && phase < 973) begin
                data_sin = 10'd63;
            end
            // bin 96
            else if (phase >= 973 && phase < 983) begin
                data_sin = 10'd69;
            end
            // bin 97
            else if (phase >= 983 && phase < 993) begin
                data_sin = 10'd75;
            end
            // bin 98
            else if (phase >= 993 && phase < 1003) begin
                data_sin = 10'd81;
            end
            // bin 99            
            else if (phase >= 1003 && phase < 1013) begin
                data_sin = 10'd87;
            end
            // bin 100
            else if (phase >= 1013 && phase <= 1023) begin
                data_sin = 10'd94;
            end
            
            // else begin
            //     data_sin <= 10'b00_0110_0100; //10'd100;    
            // end       
    end         
endmodule
