//========================================================================
// PairTripleDetector_GL
//========================================================================

`ifndef PAIR_TRIPLE_DETECTOR_GL_V
`define PAIR_TRIPLE_DETECTOR_GL_V

`include "ece2300-misc.v"

module PairTripleDetector_GL
(
  input wire  in0,
  input wire  in1,
  input wire  in2,
  output wire out
);

  //''' ACTIVITY '''''''''''''''''''''''''''''''''''''''''''''''''''''''''
  // Implement pair/triple detector using explicit gate-level modeling
  //''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
  // You will need to remove the ECE2300_UNUSED and ECE2300_FLOATING
  // macros and then replace them with your implementation (this is also
  // true for all lab assignments).

  wire w;
  wire y;
  wire x;

  or(w, in0, in1);
  and(y, w, in2);
  and(x, in0, in1);
  or(out, y, x);
endmodule

`endif /* PAIR_TRIPLE_DETECTOR_GL_V */

