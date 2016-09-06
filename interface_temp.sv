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
// File   : interface_temp.sv
// Create : 2016-09-06 11:05:47
// Editor : sublime text3, tab size (4)
// -----------------------------------------------------------------------------

// This example displays a basic example or template for an interface to be used 
// when implementing UVM for system verilog. 

`include "uvm_macros.svh"

interface dut_if;

	logic clock, reset;
	logic cmd;
	logic [7:0] addr;
	logic [7:0] data;

endinterface
