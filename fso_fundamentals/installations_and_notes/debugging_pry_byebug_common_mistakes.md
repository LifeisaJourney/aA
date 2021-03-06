# Debugging Using PRY
As you develop and debug your programs, often times you'll find it useful to test ideas in a "sandbox" environment where you can get quick feedback on the state of your code. We'll use a Ruby REPL to this end. To review, REPL stands for Read, Evaluate, Print, Loop.

At App Academy, our Ruby REPL of choice is Pry. Pry is an open source project developed as an alternative to IRB, the standard Ruby REPL. Pry is a much more powerful tool that allows for more efficient and effective debugging. Because of this, we'll prefer Pry over the standard REPL.

## Installing Pry
If you haven't installed Pry already, you can run the following commands in your command line to get set up:
```
gem install pry - this will install the main pry gem
gem install pry-doc - this will allow us to view ruby 
```
documentation in Pry, a nice bonus!
## Using Pry
You can begin a pry session by simply using the command pry in your command line. You'll be greeted by a seemingly unassuming REPL:
```
$ pry
[1] pry(main)>
Like any REPL, you can type Ruby code line by line to test ideas on the fly. Every line you write will have it's evaluation displayed with =>:

[1] pry(main)> greens = ["kale", "spinach", "arugula"]
=> ["kale", "spinach", "arugula"]
[2] pry(main)> greens << "broccoli"
=> ["kale", "spinach", "arugula", "broccoli"]
[3] pry(main)> greens.length
=> 4
```
You could even copy and paste multiple lines of code into a pry session. That's nothing groundbreaking, but what advanced tools does pry offer us?

## ls
We can use ls to list methods that we can use in a given context. For example let's say we wanted to know what methods we have available to use on strings by entering ls String in Pry:
```
[1] pry(main)> ls String
String.methods: try_convert
String#methods:
  %            capitalize   delete!                end_with?          ljust         rpartition   strip      tr!                
  *            capitalize!  delete_prefix          eql?               lstrip        rstrip       strip!     tr_s               
  +            casecmp      delete_prefix!         force_encoding     lstrip!       rstrip!      sub        tr_s!              
  +@           casecmp?     delete_suffix          freeze             match         scan         sub!       undump             
  -@           center       delete_suffix!         getbyte            match?        scrub        succ       unicode_normalize  
  <<           chars        downcase               grapheme_clusters  next          scrub!       succ!      unicode_normalize!
  <=>          chomp        downcase!              gsub               next!         setbyte      sum        unicode_normalized?
  ==           chomp!       dump                   gsub!              oct           shell_split  swapcase   unpack             
  ===          chop         each_byte              hash               ord           shellescape  swapcase!  unpack1            
  =~           chop!        each_char              hex                partition     shellsplit   to_c       upcase             
  []           chr          each_codepoint         include?           prepend       size         to_f       upcase!            
  []=          clear        each_grapheme_cluster  index              pretty_print  slice        to_i       upto               
  ascii_only?  codepoints   each_line              insert             replace       slice!       to_r       valid_encoding?    
  b            concat       empty?                 inspect            reverse       split        to_s     
  bytes        count        encode                 intern             reverse!      squeeze      to_str   
  bytesize     crypt        encode!                length             rindex        squeeze!     to_sym   
  byteslice    delete       encoding               lines              rjust         start_with?  tr   
  ```   
Whoa! There are tons of methods that we haven't even learned. Don't be intimidated, documentation is your friend. From this point you can search the Ruby Docs in your web browser to gain more insight into the functionality of a method you are unfamiliar with. You can even use Pry to get a summary of a method's documentation. Let's see that next.

## show-doc
We can use show-doc to show a documentation summary for a given method. For example, if we want to learn more about the end_with? method from the example above, we can use the pry command show-doc String#end_with?. We'll need to follow this # notation closely as the output from ls suggests.
```
[2] pry(main)> show-doc String#end_with?

From: string.c (C Method):
Owner: String
Visibility: public
Signature: end_with?(*arg1)
Number of lines: 7

Returns true if str ends with one of the suffixes given.

  "hello".end_with?("ello")               #=> true

  # returns true if one of the suffixes matches.
  "hello".end_with?("heaven", "ello")     #=> true
  "hello".end_with?("heaven", "paradise") #=> false
```
Some of the initial verbiage won't be particularly useful to us at this point, but looking at the latter synopsis and examples provided, we can get a really good idea of how one could use this method. If you still can't gather the usage of a method, then you should view the full documentation article in the Ruby Docs in your web browser.

## load
This is not a Pry specific command, but you'll find it useful nonetheless when you want to bring an entire files worth of Ruby code into your Pry session. If we begin a Pry session in the same folder where we have a .rb file. We can load the entire file into Pry and begin playing with it.

Let's say our command line is located in my_ruby_code/ and there is a code.rb file within that we want to load into pry. Our folder structure is set up like so:
```
my_ruby_code/
└── code.rb
```
Then we can load the file into pry:
```
~/Desktop/my_ruby_code$ ls
code.rb

~/Desktop/my_ruby_code$ cat code.rb
def is_prime?(num)
  (2...num).each do |factor|
    return false if num % factor == 0
  end

  num > 1
end

~/Desktop/my_ruby_code$ pry
[1] pry(main)> load "code.rb"
=> true
[2] pry(main)> is_prime?(16)
=> false
[3] pry(main)> is_prime?(7)
=> true
[4] pry(main)>
```
## show-source
If we want to see the code that implements a method, we call this the source code, we can use the show-source method. Let's say we previously copy and pasted a definition for is_prime? into our Pry session, then we could view the original source using show-source is_prime?:
```
[5] pry(main)> show-source is_prime?

From: (pry) @ line 1:
Owner: Object
Visibility: public
Number of lines: 7

def is_prime?(num)
  (2...num).each do |factor|
    return false if num % factor == 0
  end

  num > 1
end
```
You'll find the few commands above the most useful as you code, so you should focus on this handful of commands for now. However, there is much more we can do with Pry; feel free to read about it in the Pry GitHub.



# Using Byebug
```
"Debugging is twice as hard as writing the code in the first place.
Therefore, if you write the code as cleverly as possible,
you are, by definition, not smart enough to debug it."

- Brian W. Kernighan

```
In Ruby versions 2.0 and greater, we can use Byebug as a debugging tool. Byebug lets us do many cool things. We can pause execution, step through our code one line at a time, take a look inside key variables and methods. To install it you can run the following command in your terminal:
```
gem install byebug
```
# Byebug Cheatsheet
before running your file
```
require "byebug" - add to the top of your file to gain access to the gem
debugger - place this line at a point in your file where you want to begin debugger mode
```
while in debugger mode
```
l <start line>-<end line> - list the line numbers in the specified range
example: l 3-20
step or s - step into the method call on the current line, if possible
next or n - move to the next line of executed code
break <line num> or b <line num> - place a breakpoint at the specified line number, this will pause execution again
continue or c - resume normal execution of the code until a breakpoint
display <variable> - automatically show the current value of a variable
```
# Running Byebug
After installing byebug, you'll have to add a few lines of code to your .rb file to begin using it. We'll first need to require "byebug" to gain access to the gem. Then, we can add a debugger line to pause execution of our code and hop into debugging mode. Let's set up some first_n_primes code to use the debugger. There are no bugs in the following code to be found, instead we'll focus on learning the mechanics of byebug. We'll also number the lines as byebug would:
```
# code.rb
1:  require "byebug"   #
2:   
3:  def is_prime?(number)
4:    (2...number).each do |factor|
5:      return false if number % factor == 0
6:    end
7:
8:    number > 1
9:  end
10:
11: def first_n_primes(num_primes)
12:   primes = []
13:   num = 2
14:   debugger        #
15:   while primes.length < num_primes
16:     primes << num if is_prime?(num)
17:     num += 1
18:   end
19:   primes
20: end
21:
22: p first_n_primes(11)
```
You'll want to reference this initial numbering if ever you get lost in the big picture as you follow this reading.

Now that we have those two byebug lines in the file we want to debug, we can execute this file with the usual ruby code.rb. Execution of the code will take place as normal, until we run the debugger line, at which point we pause the runtime at that line:
```
# [10, 19] in /Users/appacademy/Desktop/lecture/code.rb
   10:
   11: def first_n_primes(num_primes)
   12:   primes = []
   13:   num = 2
   14:   debugger
=> 15:   while primes.length < num_primes
   16:     primes << num if is_prime?(num)
   17:     num += 1
   18:   end
   19:   primes
(byebug)
```
From here we can check the current value of a variable by simply referencing it's name
```
# ...
(byebug) primes
[]
(byebug) num
2
```
# display
We can use the display command to automatically set up tracking for variables:
```
# [10, 19] in /Users/appacademy/Desktop/lecture/code.rb
   10:
   11: def first_n_primes(num_primes)
   12:   primes = []
   13:   num = 2
   14:   debugger
=> 15:   while primes.length < num_primes
   16:     primes << num if is_prime?(num)
   17:     num += 1
   18:   end
   19:   primes
(byebug) display primes
1: primes = []
(byebug) display num
2: num = 2
```
## next
We can execute subsequent code using the next command. Be aware that using next doesn't always mean advancing to the next sequential line number. In other words if we are on line 17, the next executed line may not be line 18. Instead we move to the next line according to normal control flow; so we obey all of the behavior of loop iterations, conditional branches, etc.., except we won't step into any other method calls. Let's use next a few times:
```
(byebug) next
1: primes = []
2: num = 2

# [15, 18] in /Users/appacademy/Desktop/lecture/code.rb
   15:   while primes.length < num_primes
=> 16:     primes << num if is_prime?(num)
   17:     num += 1
   18:   end
   ```
   ```
(byebug) next
1: primes = [2]
2: num = 2

# [15, 18] in /Users/appacademy/Desktop/lecture/code.rb
   15:   while primes.length < num_primes
   16:     primes << num if is_prime?(num)
=> 17:     num += 1
   18:   end
   ```
   ```
(byebug) next
1: primes = [2]
2: num = 3

# [15, 18] in /Users/appacademy/Desktop/lecture/code.rb
   15:   while primes.length < num_primes
=> 16:     primes << num if is_prime?(num)
   17:     num += 1
   18:   end
   ```
   ```
(byebug) next
1: primes = [2, 3]
2: num = 3

# [15, 18] in /Users/appacademy/Desktop/lecture/code.rb
   15:   while primes.length < num_primes
   16:     primes << num if is_prime?(num)
=> 17:     num += 1
   18:   end
   ```
   ```
(byebug) next
1: primes = [2, 3]
2: num = 4

# [15, 18] in /Users/appacademy/Desktop/lecture/code.rb
   15:   while primes.length < num_primes
=> 16:     primes << num if is_prime?(num)
   17:     num += 1
   18:   end
   ```
## step
You may have noticed that using next will not bring us into the evaluation of is_prime?(num) (line 16). Once execution is paused on a line containing a method call, we can use the step command to step into that method. Picking up on the iteration where we left off, let's step into line 16's call.
```
(byebug) step
1: primes = (undefined)
2: num = (undefined)

# [1, 10] in /Users/appacademy/Desktop/lecture/code.rb
    1: require "byebug"
    2:
    3: def is_prime?(number)
=>  4:   (2...number).each do |factor|
    5:     return false if number % factor == 0
    6:   end
    7:
    8:   number > 1
    9: end
   10:
(byebug) display number
3: number = 4
(byebug) display factor
4: factor = (undefined)
```
Since we are stepping into a different method call, our previously tracked variables of primes and num are undefined in this new context. Because of this we set up tracking on new variables that are relevant as we debug is_prime?, mainly number and factor. From here, you can use next to walk through the code like before.

## break and continue
Let's say we are done with the bulk of our debugging and we want to fast forward to a much later point of the execution. Instead of mashing the next command barbarically (bugs test the best of us), you can use break <line num> to set a future breakpoint in the code. Setting a breakpoint in the code will mark a line that we want to pause and reenter debugging mode on. We can then use the continue to resume normal execution until we hit the breakpoint! Let's set up a breakpoint on the return statement for first_n_primes (line 19) and then continue:
```
(byebug) break 19
# Created breakpoint 1 at /Users/appacademy/Desktop/lecture/code.rb:19
(byebug) continue
# Stopped by breakpoint 1 at /Users/appacademy/Desktop/lecture/code.rb:19
1: primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31]
2: num = 32
3: number = (undefined)
4: factor = (undefined)

# [13, 22] in /Users/appacademy/Desktop/lecture/code.rb
   13:   num = 2
   14:   debugger
   15:   while primes.length < num_primes
   16:     primes << num if is_prime?(num)
   17:     num += 1
   18:   end
=> 19:   primes
   20: end
   21:
   22: p first_n_primes(11)
```
Amazing! We are now at the point of execution where we finished the while loop, and our primes array contains the first 11 prime numbers. Just as intended.

##  Wrapping Up
When you use byebug out in the wild, you'll want to really analyze how your variables are changing over time and what logic is executed. Bugs are always a product of a disconnect between what we want to happen in the code and what is actually happening in the code. Because of this, don't make assumptions based how you want the code to run, use byebug to truly witness how it runs.




# Common Error Types
As you've been progressing through this course, you've likely run into few different error types by mistake. Let's take a look at these different errors and understand what caused them. If we are able to identify what exactly is causing an issue, we can act accordingly and ensure bug-free code. In this reading, the errors we refer to are those that prevent our code from completing execution. That is, Ruby will terminate execution of the program immediately when any of these errors are hit.

## Reading an Error Message
Let's say we had this broken ruby code in a code.rb file:
```
def say_hello
  puts "hi!"
```
The code above is obviously incorrect because of a missing end. When we execute this code we'll receive an error message:
```
$ ruby code.rb
code.rb:2: syntax error, unexpected end-of-input, expecting keyword_end
  puts "hi!"
```
A ruby error message begins with the file name that we tried to execute (code.rb) as well as a line-number (2) for the error. Given this information, we ought to verify that we ran the correct file (it happens to the best of us :)) and scan line 2 for any obvious errors. It may be the case that the suggested error line is nowhere near the actual cause of the error, especially when we are dealing with a SyntaxError, so don't tunnel vision into checking that single line.

For example, let's say we had a different kind of typo in the code:
```
def check_num(num)  # 1
  if num > 0        # 2
    p "positive"    # 3
  else if num < 0   # 4
    p "negative"    # 5
  else              # 6
    p "zero"        # 7
  end               # 8
end                 # 9
```
The Ruby syntax coloring above makes this mistake obvious, but peek at the error message we would get when executing this code:
```
$ ruby code.rb
code.rb:9: syntax error, unexpected end-of-input, expecting keyword_end
```
Ruby is complaining about the line 9, but the real mistake is on line 4. The suggested line number isn't useful here, but the type of error, syntax error, will give us an idea of what kind of mistake we are looking for.

Let's break down common error types next. The following list is by no means comprehensive, but you will run into these errors most often.

## SyntaxError
A SyntaxError results from incorrectly structuring our code. In proper English we must follow certain grammar rules. In the same way proper Ruby must follow particular syntax rules. Because we can violate the "grammar" of Ruby in many different ways, there is no hard and fast rule to spot a SyntaxError. In general, you should be scanning your code for structural mistakes:
```
# SyntaxError because we need to have a value to assign
my_variable =     
```  
## NameError
A NameError results from referring to a variable or method name that has not been defined:
```
my_variable = 42
p my_variabel # NameError because this name has not been defined previously
```
## NoMethodError
A NoMethodError results from referring to an undefined method. It is considered a special instance of a NameError:
```
def say_hello(name)
  p "hi " + name
end

hello("world")  # NoMethodError because `hello` is not a defined method
```
## ArgumentError
A ArgumentError results from incorrectly specifying arguments for a method call. Typically this means passing too little or too many arguments:
```
def say_hello(first_name, last_name)
p "hi " + first_name + " " + last_name
end

say_hello("world")  # ArgumentError because we gave 1 arg, but `say_hello` expects 2 args
```
## TypeError
A TypeError results from performing an operation with incompatible data types:
```
5 + "spaghetti" # TypeError because we cannot add a Integer and a String together
```