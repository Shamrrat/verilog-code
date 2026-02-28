module task_example1;

  task display_msg;
    begin
      $display("Hello from task at time %0t", $time);
    end
  endtask

  initial begin
    #10;
    display_msg();
  end

endmodule

//output
"Hello from task at time 20"
