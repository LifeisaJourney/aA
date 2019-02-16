# Loops

Loops are the second fundamental control structure in Ruby. Loops instruct the interpreter to repeatedly execute a section of code while a condition is true. 

Loops are tremendously powerful: they can potentially execute an infinite number of operations using only a few lines of code.

## Goals

Know what an index variable is.
Know that index variables conventionally start at zero.
Know how to write a while loop.
Know how to break out of a loop.
Be comfortable nesting loops when necessary.
Know not to nest too deeply.
While Loops
The simplest loop is the while loop. If you run the following snippet in Repl.it, you'll have to refresh the page. Can you guess why?

while 2 < 3 # Conditional expression
  2 + 3 # body
end

Like if statements, while loops begin with a keyword (while), follow with a conditional expression, and finish with the keyword end. If the conditional expression evaluates to a truthy value, then the interpreter executes the body. The interpreter then rechecks the condition and executes the body again if condition is still truthy. The while loop will continue until the condition is false.

The above code is an example of an infinite loop, a sequence of instructions that loops endlessly. An infinite loop is almost always a mistake.

Most loops eventually stop, however:

i = 0
while i < 5
  puts "Repeat 5 times!"
  puts "This is time #: #{i}"

  i += 1
end

puts "Hooray! The loop is over!"

This is a very traditional example of a while loop. i is called the index, and it keeps track of how many times we've gone through the loop.

i starts at zero, because we've gone through the loop zero times. The loop will keep running so long as i < 5; that is, we'll keep looping until we've executed the code block (the stuff between the while and the end lines) five times. Each time around, at the end of the loop block, one is added to i. After the first time through the block, i is set to one, and the program jumps back to the top of the while. Since one is still less than five, the loop repeats.

i takes on, or iterates through the values 0,1,2,3,4,5. After the fifth time around the loop, i is set to five (not four, not six; convince yourself of this).

The loop finally comes back around for the sixth time to the while test. Remember, i has just been set to five. i < 5 is no longer true. So the code block is not executed and the loop exits, so that the code following the loop's end is run.

This is the most basic loop. If all else fails, you can always fall back on this. All the other loop forms are just more convenient forms of this basic loop style.

A note on terminology: An iteration is the act of repeating a procedure, hence looping is an iterative technique. Each repetition itself is also called an "iteration."

Indices start at zero
We could have changed this loop ever so slightly:

i = 1
while i <= 5
  puts "Repeat 5 times!"
  puts "This is time #: #{i}"

  i += 1
end

This would do the almost the same thing as our previous loop; test this for yourself.

Don't write loops with indices starting at one; you'll confuse other programmers. Indices have started at zero for a long time, and it's what other programmers are used to. It's also the range of array indices you'd want (the indices into an array of ten items is 0-9).

This is called an idiom; idioms are coding conventions that are commonly used. They are a good thing, because conventions we've seen before are easier to understand when we see them again.

# Until
The until keyword is the opposite of while. It directs the interpreter to loop until a truthy condition is met:

counter = 0

until counter == 10
  puts "This is iteration number #{counter.to_s}!"
  counter += 1 # the syntactic-sugar equivalent to counter = counter + 1
end

Using return in a loop
Although a while loop is technically an expression in that it evaluates to a single value, that value is always nil. If the while loop is within the body of a method definition, one can explicitly return a value from the loop (and the method) using the return keyword:

def first_num_greater_than_ten(arr)
  index = 0
  while index < arr.length
    # is_a? checks whether an object belongs to a data type. Numeric is one of many types available.
    if arr[index].is_a?(Numeric) && arr[index] > 10
      return arr[index]
    end
    index += 1
  end
  // if no number meeting the criteria is found, the method implicitly returns nil
end

# While without an index

So far we've only seen while loops that loop through index values. In fact, we'll see there are better ways to do this, so we shouldn't use a while loop for this purpose. In more practical scenarios, a while loop is usually used when we want to keep looping until something happens, but don't know exactly how many times around that may be. An example is repeatedly getting user input until they type the keyword quit:

Example:

def process_user_input
  command = get_user_input
  while command != "quit"
    perform_command(command)

    command = get_user_input
  end

  puts "Good bye!"
end

This will loop through as many commands as the user enters, up until he or she types the appropriate command telling the program to stop.

Notice that the "update" of command happens at the end of the while loop. This is a typical pattern; we check the condition, perform the relevant code, then update a loop variable. Wash, rinse, repeat...

# Break
A loop can be terminated without returning from the method using the break keyword. break occasionally takes an optional argument that designates the loop's value upon termination.

def to_uninfinity_and_beyond
  while true
    "I'd be an infinite loop without break"
    break
  end
  "reachable code"
end

counter = 0

# while true

  puts "This is iteration number #{counter.to_s}!"
  counter += 1
  break counter if counter > 10 # the loop's value is the last value of counter
end

# Next
The next keyword skips the loop ahead to its next iteration:

counter = 0

while counter < 11
  counter += 1
  next if counter.odd?
  puts "I only print the even numbers between 1 and 10, including #{counter.to_s}."
end
# Nesting loops

Loops can be placed inside each other, or nested. Here are some nested loops that print out a times table:

i = 1
while i <= 10
  j = 1
  while j <= 10
    multiples << i * j
    j += 1
  end

  i += 1
  p multiples
end

Note: when you have two indices, i and j are conventional names. However, they are often the lazy way out: vague, abstract index names are a major source of confusion when reading code. Here, using names like num1 and num2 would make things clearer.

Avoid deep nesting. Nested code should be split out into methods. Two levels deep is usually okay, more is almost always bad. For instance, we could change our times table code like this:

def multiples(i)
  ms = []
  j = 1
  while j <= 10
    ms << i * j
    j += 1
  end

  ms
end

i = 1
while i <= 10
  p multiples(i)
  i += 1
end