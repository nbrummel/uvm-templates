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
// File   : module_template.sv
// Create : 2016-09-06 11:05:26
// Editor : sublime text3, tab size (4)
// -----------------------------------------------------------------------------

// This displays a basic device under test template when using uvm.

`include "uvm_macros.svh"
module dut(dut_if dif);

  import uvm_pkg::*;

  always @(posedge dif.clock)
  begin
    `uvm_info("", $sformatf("DUT received cmd=%b, addr=%d, data=%d",
                            dif.cmd, dif.addr, dif.data), UVM_MEDIUM)
  end
  
endmodule