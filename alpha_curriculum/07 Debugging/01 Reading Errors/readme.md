# Debugging
Any program of sufficient complexity is unlikely to work the first time. You will make mistakes. Skilled and unskilled developers write a similar number of bugs. The difference is that skilled developers are able to quickly identify and fix bugs.

A rule of thumb is that it takes 10x as long to debug code as to write it. Master debugging and you master programming.

First Things First: Read the error
Before you do anything else, READ THE ERROR.

Do NOT simply jump back to your program and start fiddling with things to see if you can get it to work. Always read the error. Oftentimes it tells you everything you need to know.

The error gives you valuable pieces of information. The first three parts are absolutely essential to read and understand whenever an error occurs.

# Error type
Error message
Line number on which the error occurred
Chain of methods that were called leading up to it (referred to as the stack trace)
If you encounter an error and you are unclear about what the error type and/or message is telling you, stop and ask an instructor to explain it to you. Learning to understand errors and error messages is critical to developing your abilities as a programmer.

# Perform a Mental Stack Trace
The stack trace below the error message can be extremely helpful, but it usually won't give you the exact information you need to fix your bug. What it does tell you is the path your program took to get to wherever the error happened.

Whenever you encounter a bug, your ability to track it down will be dependent on your ability to trace the logic of your own code.

Interrogate your code actively. Why did the bug happen? What are the values of the key variables at key points in your program? What did each line evaluate to leading up to the bug?

Do not passively stare at your code or simply assume that what you think happened is what actually happened (this is what got you in trouble in the first place!). Some strategies include:

Break your code down into more testable chunks and actively run each of those chunks to test if they're working.
Use p statements often; use them to check what the values of variables are, that methods are called as expected, etc.
Use the debugger.

The key with bugs and errors is to really get into the mind of the machine. You must understand what is happening in the code. To do so, you must seek out helpful feedback from the program, constantly testing your assumptions about what is happening.

You are a programmer. You hunt bugs. Hunt well.