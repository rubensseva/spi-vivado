module EdgeDetect(
  input   clock,
  input   reset,
  input   io_din,
  output  io_edge
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg  stateReg; // @[EdgeDetect.scala 17:25]
  wire  _T = ~stateReg; // @[Conditional.scala 37:30]
  wire  _GEN_0 = io_din | stateReg; // @[EdgeDetect.scala 24:20]
  wire  _T_2 = ~io_din; // @[EdgeDetect.scala 33:13]
  wire  _GEN_4 = stateReg & _T_2; // @[Conditional.scala 39:67]
  assign io_edge = _T ? 1'h0 : _GEN_4; // @[EdgeDetect.scala 19:11 EdgeDetect.scala 36:19]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  stateReg = _RAND_0[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      stateReg <= 1'h0;
    end else if (_T) begin
      stateReg <= _GEN_0;
    end else if (stateReg) begin
      if (_T_2) begin
        stateReg <= 1'h0;
      end
    end
  end
endmodule
module ShiftRegister(
  input        clock,
  input        reset,
  input        io_in,
  input        io_enable,
  output [7:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
`endif // RANDOMIZE_REG_INIT
  reg  registers_0; // @[ShiftRegister.scala 21:26]
  reg  registers_1; // @[ShiftRegister.scala 21:26]
  reg  registers_2; // @[ShiftRegister.scala 21:26]
  reg  registers_3; // @[ShiftRegister.scala 21:26]
  reg  registers_4; // @[ShiftRegister.scala 21:26]
  reg  registers_5; // @[ShiftRegister.scala 21:26]
  reg  registers_6; // @[ShiftRegister.scala 21:26]
  reg  registers_7; // @[ShiftRegister.scala 21:26]
  wire [7:0] _T_8 = {registers_0,registers_1,registers_2,registers_3,registers_4,registers_5,registers_6,registers_7}; // @[Cat.scala 29:58]
  wire [7:0] _T_12 = {{4'd0}, _T_8[7:4]}; // @[Bitwise.scala 103:31]
  wire [7:0] _T_14 = {_T_8[3:0], 4'h0}; // @[Bitwise.scala 103:65]
  wire [7:0] _T_16 = _T_14 & 8'hf0; // @[Bitwise.scala 103:75]
  wire [7:0] _T_17 = _T_12 | _T_16; // @[Bitwise.scala 103:39]
  wire [7:0] _GEN_8 = {{2'd0}, _T_17[7:2]}; // @[Bitwise.scala 103:31]
  wire [7:0] _T_22 = _GEN_8 & 8'h33; // @[Bitwise.scala 103:31]
  wire [7:0] _T_24 = {_T_17[5:0], 2'h0}; // @[Bitwise.scala 103:65]
  wire [7:0] _T_26 = _T_24 & 8'hcc; // @[Bitwise.scala 103:75]
  wire [7:0] _T_27 = _T_22 | _T_26; // @[Bitwise.scala 103:39]
  wire [7:0] _GEN_9 = {{1'd0}, _T_27[7:1]}; // @[Bitwise.scala 103:31]
  wire [7:0] _T_32 = _GEN_9 & 8'h55; // @[Bitwise.scala 103:31]
  wire [7:0] _T_34 = {_T_27[6:0], 1'h0}; // @[Bitwise.scala 103:65]
  wire [7:0] _T_36 = _T_34 & 8'haa; // @[Bitwise.scala 103:75]
  assign io_out = _T_32 | _T_36; // @[ShiftRegister.scala 32:12]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  registers_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  registers_1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  registers_2 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  registers_3 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  registers_4 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  registers_5 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  registers_6 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  registers_7 = _RAND_7[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      registers_0 <= 1'h0;
    end else if (io_enable) begin
      registers_0 <= io_in;
    end
    if (reset) begin
      registers_1 <= 1'h0;
    end else if (io_enable) begin
      registers_1 <= registers_0;
    end
    if (reset) begin
      registers_2 <= 1'h0;
    end else if (io_enable) begin
      registers_2 <= registers_1;
    end
    if (reset) begin
      registers_3 <= 1'h0;
    end else if (io_enable) begin
      registers_3 <= registers_2;
    end
    if (reset) begin
      registers_4 <= 1'h0;
    end else if (io_enable) begin
      registers_4 <= registers_3;
    end
    if (reset) begin
      registers_5 <= 1'h0;
    end else if (io_enable) begin
      registers_5 <= registers_4;
    end
    if (reset) begin
      registers_6 <= 1'h0;
    end else if (io_enable) begin
      registers_6 <= registers_5;
    end
    if (reset) begin
      registers_7 <= 1'h0;
    end else if (io_enable) begin
      registers_7 <= registers_6;
    end
  end
endmodule

module SPISlave(
  input        clock,
  input        reset,
  input        io_SPISignals_SCLK,
  input        io_SPISignals_MOSI,
  input        io_SPISignals_SS,
  output [7:0] io_currentByte,
  output       io_isCurrentlyReading
);
  wire  edgeDetect_clock; // @[SPISlave.scala 18:26]
  wire  edgeDetect_reset; // @[SPISlave.scala 18:26]
  wire  edgeDetect_io_din; // @[SPISlave.scala 18:26]
  wire  edgeDetect_io_edge; // @[SPISlave.scala 18:26]
  wire  shiftRegister_clock; // @[SPISlave.scala 21:29]
  wire  shiftRegister_reset; // @[SPISlave.scala 21:29]
  wire  shiftRegister_io_in; // @[SPISlave.scala 21:29]
  wire  shiftRegister_io_enable; // @[SPISlave.scala 21:29]
  wire [7:0] shiftRegister_io_out; // @[SPISlave.scala 21:29]
  wire  _T = ~io_SPISignals_SS; // @[SPISlave.scala 29:9]
  wire  _GEN_0 = edgeDetect_io_edge; // @[SPISlave.scala 31:31]
  wire  _GEN_1 = edgeDetect_io_edge & io_SPISignals_MOSI; // @[SPISlave.scala 31:31]
  EdgeDetect edgeDetect ( // @[SPISlave.scala 18:26]
    .clock(edgeDetect_clock),
    .reset(edgeDetect_reset),
    .io_din(edgeDetect_io_din),
    .io_edge(edgeDetect_io_edge)
  );
  ShiftRegister shiftRegister ( // @[SPISlave.scala 21:29]
    .clock(shiftRegister_clock),
    .reset(shiftRegister_reset),
    .io_in(shiftRegister_io_in),
    .io_enable(shiftRegister_io_enable),
    .io_out(shiftRegister_io_out)
  );
  assign io_currentByte = shiftRegister_io_out; // @[SPISlave.scala 25:18]
  assign io_isCurrentlyReading = ~io_SPISignals_SS; // @[SPISlave.scala 16:25 SPISlave.scala 30:27]
  assign edgeDetect_clock = clock;
  assign edgeDetect_reset = reset;
  assign edgeDetect_io_din = io_SPISignals_SCLK; // @[SPISlave.scala 19:21]
  assign shiftRegister_clock = clock;
  assign shiftRegister_reset = reset;
  assign shiftRegister_io_in = _T & _GEN_1; // @[SPISlave.scala 23:23 SPISlave.scala 33:27]
  assign shiftRegister_io_enable = _T & _GEN_0; // @[SPISlave.scala 22:27 SPISlave.scala 32:31]
endmodule`
