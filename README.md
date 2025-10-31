# Sequential Circuits: Latches

##Names: Kyle Wold, Brenen Elliott


In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Summary

In this lab we worked on a memory system with demultiplexers, multiplexers, and D-latches. This activity is introduced to use the always block, which essentially runs a statement whenever its own arguments are changed. This lab also had us think about the different types of circuits we were using and how to utilize them to accomplish the goal of storing data within a memory system. We also found ourselves taking into consideration the bits of the inputs that we are using, adding a little more complexity to our designs. 

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?

As is written in the lab guide, the functionality of structural verilog for implementing latches depends on the end goal (for instance running the code on a board). If one wants to run the code on the board, behavioral verilog is necessary. Behavioral verilog has multiple features that help us achieve these aforementioned goals: sensitivity blocks and the reg keyword. 

Other than the necessity of using behavioral verilog in some cases, we found that implementing the logic for byte memory using behavioral verilog was generally simpler than implementing the logic using structural verilog. 

### What is the meaning of always @(*) in a sensitivity block?

The always block means that whenever the argument for that block changes, the statements within the block will run. This allows us to make changes to the values within our circuit when a signal changes. This also provides a good way to avoid manually having to write out multiple modules within a circuit. 

### What importance is memory to digital circuits?

Memory allows a circuit to remember and access data which may have not been used for a while. This allows us to make more complex circuits which can react to data which was acquired from previous operations. Because of memory's ability to store data, it also allows us to store variables which can be used in later circuits.

