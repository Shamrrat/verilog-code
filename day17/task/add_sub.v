module task_example;

  // Declare registers
  reg [7:0] a, b;
  reg [8:0] sum;
  reg [7:0] sub_out;

  // Task to add two numbers
  task add;
    input [7:0] x, y;
    output [8:0] result;
    begin
      result = x + y;
    end
  endtask

  // Task to subtract two numbers
  task sub;
    input [7:0] x, y;
    output [7:0] result;
    begin
      result = x - y;
    end
  endtask

  initial begin
    a = 8'd20;
    b = 8'd10;

    // Call tasks
    add(a, b, sum);
    sub(a, b, sub_out);

    $display("A = %d, B = %d", a, b);
    $display("Sum = %d", sum);
    $display("sub = %d", sub_out);

    $finish;
  end

endmodule

