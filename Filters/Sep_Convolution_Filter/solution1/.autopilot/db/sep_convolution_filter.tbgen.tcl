set C_TypeInfoList {{ 
"sep_convolution_filter" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"in_img": [[], {"array": ["0", [307200]]}] }, {"out_img": [[], {"array": ["0", [307200]]}] }],[],""], 
"0": [ "pixel", {"typedef": [[[],"1"],""]}], 
"1": [ "ap_uint<8>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 8}}]],""]}}]
}}
set moduleName sep_convolution_filter
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {sep_convolution_filter}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_img_V int 8 regular {axi_s 0 volatile  { in_img_V data } }  }
	{ out_img_V int 8 regular {axi_s 1 volatile  { out_img_V data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_img_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "in_img.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 307199,"step" : 1}]}]}]} , 
 	{ "Name" : "out_img_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "out_img.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 307199,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_img_V_TDATA sc_in sc_lv 8 signal 0 } 
	{ in_img_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ in_img_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ out_img_V_TDATA sc_out sc_lv 8 signal 1 } 
	{ out_img_V_TVALID sc_out sc_logic 1 outvld 1 } 
	{ out_img_V_TREADY sc_in sc_logic 1 outacc 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_img_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_img_V", "role": "TDATA" }} , 
 	{ "name": "in_img_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_img_V", "role": "TVALID" }} , 
 	{ "name": "in_img_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_img_V", "role": "TREADY" }} , 
 	{ "name": "out_img_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_img_V", "role": "TDATA" }} , 
 	{ "name": "out_img_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_img_V", "role": "TVALID" }} , 
 	{ "name": "out_img_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_img_V", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"], "CDFG" : "sep_convolution_filter", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "in_img_V", "Type" : "Axis", "Direction" : "I", "BlockSignal" : [
			{"Name" : "in_img_V_TDATA_blk_n", "Type" : "RtlSignal"}], "SubConnect" : []}, 
		{"Name" : "out_img_V", "Type" : "Axis", "Direction" : "O", "BlockSignal" : [
			{"Name" : "out_img_V_TDATA_blk_n", "Type" : "RtlSignal"}], "SubConnect" : []}, 
		{"Name" : "line_buffer_V_0", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "window_V_0", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "line_buffer_V_1", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "window_V_1", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "window_V_2", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "convolution_buffer_V_1", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "convolution_buffer_V_2", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buffer_V_0_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buffer_V_1_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.sep_convolution_filter_mac_muladd_17s_8ns_24s_24_1_U1", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.sep_convolution_filter_mac_muladd_17s_6s_23s_24_1_U2", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.sep_convolution_filter_mac_muladd_8ns_8s_16s_17_1_U3", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.sep_convolution_filter_mac_muladd_8ns_8ns_14s_16_1_U4", "Parent" : "0", "Child" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "308324", "Max" : "308324"}
	, {"Name" : "Interval", "Min" : "308325", "Max" : "308325"}
]}

set Spec2ImplPortList { 
	in_img_V { axis {  { in_img_V_TDATA in_data 0 8 }  { in_img_V_TVALID in_vld 0 1 }  { in_img_V_TREADY in_acc 1 1 } } }
	out_img_V { axis {  { out_img_V_TDATA out_data 1 8 }  { out_img_V_TVALID out_vld 1 1 }  { out_img_V_TREADY out_acc 0 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
