module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] memory
);

    // This should instantiate 4 instances of
    // byte_memory, and then demultiplex
    // data and store into the one selected by
    // addr

    // It should then multiplex the output of the
    // memory specified by addr into the memory
    // output for display on the LEDs

    // you will need 2 demultiplexers:
    // 1. Demultiplex data -> selected byte
    // 2. Demultiplex store -> selected byte

    // and one multiplexer:
    // 1. Multiplex selected byte -> memory
    wire[3:0] store_out; 
    wire[7:0] data_out[3:0];
    wire[7:0] mem_out[3:0]; //4 8-bit signals
    
    
    lab10_demux_2bit  store_demux(
        .data(store),
        .sel(addr),
        .A(store_out[0]),
        .B(store_out[1]),
        .C(store_out[2]),
        .D(store_out[3])
    );
    
    lab10_demux data_demux(
        .data(data),
        .sel(addr),
        .A(data_out[0]),
        .B(data_out[1]),
        .C(data_out[2]),
        .D(data_out[3])
    );
    
    byte_memory mem0(
        .data(data_out[0]),
        .store(store_out[0]),
        .memory(mem_out[0])
    );
    
    byte_memory mem1(
        .data(data_out[1]),
        .store(store_out[1]),
        .memory(mem_out[1])
    );
    
    byte_memory mem2(
        .data(data_out[2]),
        .store(store_out[2]),
        .memory(mem_out[2])
    );
    
    byte_memory mem3(
        .data(data_out[3]),
        .store(store_out[3]),
        .memory(mem_out[3])
    );


    eight_bit_mux m(
        .A(mem_out[0]),
        .B(mem_out[1]),
        .C(mem_out[2]),
        .D(mem_out[3]),
        .sel(addr),
        .Y(memory)
    );
        
        
        
endmodule