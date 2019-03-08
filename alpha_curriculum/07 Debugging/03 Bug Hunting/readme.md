# Don't read the source
We haven't found out what's wrong yet. You might be tempted to first look carefully at prime? and primes, try to reason through them, and spot the bug. You may be able to do this successfully with our simple example.

Do not spend more than 1min doing this in real life. Yes, many silly bugs can be spotted if you stare at the code, but many other silly bugs are difficult to spot because our eyes play tricks on us. You know how you can still read a paragraph with the spaces taken out? For this same reason, it's hard to spot silly bugs, because you know what the code is supposed to do.

Your bug may not be a simple bug. If it's at all non-trivial, it will be very hard to spot. The best way to find a bug like this is to take your code step-by-step. We'll see how to do that soon.

Yes, when debugging you should look at the source to familiarize yourself with the code. The bug may jump out at you. If not, don't worry. We're about to learn better techniques.

# Use a REPL to isolate the problem
Now that we've broken the code up into testable bits, we'll want to actually test those parts. That lets us quickly isolate the problem to a few lines. First, though, we'll need an introduction to the REPL.

In computing, a Shell is a user interface for access to an operating system's services. When we use the Terminal application on Mac OSX the default shell is Bash. This means that when we are working with the CLI (Command Line Interface) of Terminal, we are running bash commands.

Learning the Bash language is outside the scope of this curriculum but can be helpful for writing scripts like the .dotfiles used in the environment setup.

IRB comes installed with Ruby and it stands for Interactive Ruby Shell. It is similar to the Bash shell in terminal but instead allows you to run Ruby commands and has some supporting features. Another name commonly used to describe Shells like IRB is a REPL (read-eval-print-loop). As the name suggests, this shell is designed to simply read user inputs, evaluate them and return the result.

A typical IRB session might look like this:

irb(main):001:0> 5.times { puts "Hi there" }
Hi there
Hi there
Hi there
Hi there
Hi there
=> 5
irb(main):001:0> 2 + 5
=> 7
As you can see, we enter ruby commands (the Read step in REPL). Then IRB Evaluates those commands and Prints the results. To start IRB open the terminal and run irb.

Pry is an open source project developed as an alternative to the standard IRB in Ruby. Pry has become so much more powerful of a tool that we insist on using it throughout your time at App Academy to allow for more efficient and effective debugging. IRB works as a basic REPL, but there are many advanced features in Pry that make coding and debugging much easier.

To install, run gem install pry. Then start Pry by running pry.

It is possible to work with code you have already written using Pry.

For example, suppose we create a file called dog.rb.

# don't worry about what this does yet; it's just Ruby code!
class Dog
  def bark
    puts "Woof woof!"
  end
end
Then we can load dog.rb into Pry using the load command. For example

# again, don't worry about this if you haven't learned about classes yet!
# just see that we can run Ruby code in Pry!
[1] pry(main)> load "dog.rb"
=> true
[2] pry(main)> d = Dog.new
=> #<Dog:0x007f8896c30c78>
[3] pry(main)> d.bark
Woof woof!
=> nil
Pry has many other useful commands.

Here are some of the most helpful.

cd cd sets the working context. For example

[1] pry(main)> s = "Hi there"
=> "Hi there"
[2] pry(main)> cd s
[3] pry("Hi there"):1> length
=> 8
[4] pry("Hi there"):1> chars
=> ["H", "i", " ", "t", "h", "e", "r", "e"]
[5] pry("Hi there"):1>
As you can see, once we cd into s we can run instance methods on s without specifying s as the receiver. We can also cd into classes (which, after all, are just a kind of object.

ls ls lists all the methods on a class or object. For example

[8] pry(main)> ls
Comparable#methods: <  <=  >  >=  between?
String#methods:
  %            chop!           gsub       rjust        swapcase           
  *            chr             gsub!      rpartition   swapcase!          
  +            clear           hash       rstrip       to_c               
  +@           codepoints      hex        rstrip!      to_f               
  -@           concat          include?   scan         to_i               
  <<           count           index      scrub        to_r               
  <=>          crypt           insert     scrub!       to_s               
  ==           delete          inspect    setbyte      to_str             
  ===          delete!         intern     shell_split  to_sym             
  =~           downcase        length     shellescape  tr                 
  []           downcase!       lines      shellsplit   tr!                
  []=          dump            ljust      size         tr_s               
  ascii_only?  each_byte       lstrip     slice        tr_s!              
  b            each_char       lstrip!    slice!       unicode_normalize  
  bytes        each_codepoint  match      split        unicode_normalize!
  bytesize     each_line       next       squeeze      unicode_normalized?
  byteslice    empty?          next!      squeeze!     unpack             
  capitalize   encode          oct        start_with?  upcase             
  capitalize!  encode!         ord        strip        upcase!            
  casecmp      encoding        partition  strip!       upto               
  center       end_with?       prepend    sub          valid_encoding?    
  chars        eql?            replace    sub!       
  chomp        force_encoding  reverse    succ       
  chomp!       freeze          reverse!   succ!      
  chop         getbyte         rindex     sum  
 As you can see, not only does ls list String methods, it identifies which come from the String class and which come from modules. This can be quite useful.

show-source show-source shows us the source code for a method or class. For example
[10] pry(main)> show-source String#chomp

From: string.c (C Method):
Owner: String
Visibility: public
Number of lines: 7

static VALUE
rb_str_chomp(int argc, VALUE *argv, VALUE str)
{
    VALUE rs = chomp_rs(argc, argv);
    if (NIL_P(rs)) return rb_str_dup(str);
    return rb_str_subseq(str, 0, chompped_length(str, rs));
}
This can be very useful when you are working on a large project and it becomes cumbersome to navigate through the source code.


$ pry
Back to our previous problem. Load your 'primes' file and start testing.

[1] pry(main)> load 'primes.rb'
=> true
[2] pry(main)> prime?(2)
=> false
Awesome. We've already found a regression; an input which produces the wrong output. There might also be problems with primes, but it would have been a real PITA to try to fix those when the underlying prime? method is broken.

Decomposition for the win.

Now we need to take a more fine-grained look at exactly what is wrong with our prime? method.

