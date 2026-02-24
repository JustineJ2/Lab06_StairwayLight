module light(
    input downstairs, upstairs, // Declare downstairs and upstairs input
    output stair_light// Declare stair light output
);

    assign stair_light = downstairs ^ upstairs; // Enter logic equation here

endmodule