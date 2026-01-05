module number_diamond;
integer i, j, k;
initial begin
    // Upper half
    for (i = 1; i <= 5; i = i + 1) begin
        // spaces
        for (j = 1; j <= 5 - i; j = j + 1)
            $write(" ");
        for (k = 1; k <= i; k = k + 1)
            $write("%0d", i);  end
  // Lower half
    for (i = 4; i >= 1; i = i - 1) begin
        // spaces
        for (j = 1; j <= 5 - i; j = j + 1)
            $write(" ");
        for (k = 1; k <= i; k = k + 1)
          $write("%0d", i);
      $write("\n");
    end
end

endmodule
