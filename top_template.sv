// -----------------------------------------------------------------------------
// Copyright (c) 2014-2016 All rights reserved
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
// -----------------------------------------------------------------------------
// Author : Nathan Brummel nathan.e.brummel@jpl.nasa.gov
// File   : top_template.sv
// Create : 2016-09-06 11:04:40
// Editor : sublime text3, tab size (4)
// -----------------------------------------------------------------------------

`include "uvm_macros.svh"
module top;

  import uvm_pkg::*;
  import my_pkg::*;
  
  dut_if dut_if1 ();
  
  dut    dut1 ( .dif(dut_if1) );

  // Clock generator
  initial
  begin
    dut_if1.clock = 0;
    forever #5 dut_if1.clock = ~dut_if1.clock;
  end

  initial
  begin
    uvm_config_db #(virtual dut_if)::set(null, "*", "dut_if", dut_if1);
    
    uvm_top.finish_on_completion = 1;
    
    run_test("my_test");
  end

endmodule: top