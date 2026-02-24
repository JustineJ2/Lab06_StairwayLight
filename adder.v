module adder(
    input A,B,// Declare your A/B inputs
    output Y, // Declare Y output
    output Carry // Declare carry output
);

    assign Y = (A ^ B);// Enter logic equation here
    assign Carry = (A & B);
endmodule