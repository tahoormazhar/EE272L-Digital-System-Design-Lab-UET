module and_gate_tb;
logic a1, b1, y1;
localparam period = 10;
and_gate UUT(
.a(a1),
.b(b1),
.y(y1)
);
initial
begin
// Provide different input combinations to check validity
a1 = 0; b1 = 0;
#period;
a1 = 0; b1 = 1;
#period;
a1 = 1; b1 = 0;
#period;
a1 = 1; b1 = 1;
#period;
$stop;
end
endmodule