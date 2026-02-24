module top(
    input [7:0] sw,
    output[5:0] led
 );
    wire C1;
    light light_inst(
    .downstairs(sw[0]),
    .upstairs(sw[1]),
    .stair_light(led[0])
    
    );
    
    adder adder_inst(
    .A (sw[2]),
    .B (sw[3]),
    .Y (led[1]),
    .Carry (led[2])
    );
    
    full_adder full_adder_inst(//LSB
    .A (sw[4]),
    .B (sw[6]),
    .Cin (1'b0), 
    .Y(led[3]),// 1 bit, 0
    .Cout(C1)
    );
    
    full_adder full_adder_inst_2(//MSB
    .A (sw[5]),
    .B (sw[7]),
    .Cin(C1),
    .Y(led[4]),
    .Cout(led[5])
    
    );
 endmodule
    
