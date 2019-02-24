# Write code that's testable
Let's consider a Ruby script that is supposed to print the first 100 primes:

# primes.rb

primes = []

num = 1
while primes.count < 100
  is_prime = true
  (1..num).each do |idx|
    if num % idx == 0
      is_prime = false
      break
    end
  end

  if is_prime
    primes << num
  end
end

puts primes

This program doesn't work; it doesn't look like it ever returns. Where's the bug (or bugs)?

The bugs could be anywhere, but we don't have the ability to isolate and test individual parts of the code. When we load up this file, it immediately starts running all the code.

Let's make this more testable: let's break the code into small, bite-sized methods. Small methods are easier to test, because you can test each part independently.

General hint: when you write a script, write all your code inside of methods. Only a very little bit of code should be written at the top level to kick things off.

# primes.rb
```script.js
def prime?(num)
  (1..num).each do |idx|
    if num % idx == 0
      return false
    end
  end
end

def primes(num_primes)
  ps = []
  num = 1
  while ps.count < num_primes
    primes << num if prime?(num)
  end
end

if $PROGRAM_NAME == __FILE__
  puts primes(100)
end
```
This code uses a common trick. We will want to be able to load our code without running it immediately. In particular, we'd like to directly call the methods and diagnose whether each is working. But before using this trick, we were blocked because the program immediately started executing the script and entering an infinite loop.

The solution is the trick if $PROGRAM_NAME == __FILE__. This checks to see if the currently running program ($PROGRAM_NAME) is the same as the current file (primes.rb). If so, then the current file is being invoked as a script, so we should kick things off. Otherwise, we're loading it as part of some other program (like irb or Pry - we'll get to these soon), and we shouldn't do more than load the method definitions so that someone else may use them.

Great. Now we can test the prime? and primes pieces individually. If one works and the other doesn't, we can focus on the single broken method. Even if both are broken, we can fix prime? first, and then try to debug primes knowing that prime? at least works.

Also, because prime? and primes each do one simple thing, we know what they're supposed to do: prime?(2) should be true. prime?(4) should be false. primes(3) should be [2, 3, 5].

This is better than a huge, black-box method which does a bunch of complicated stuff where it's hard to even know what the right answer should be.

Pay technical debt
If you encounter buggy code that is poorly decomposed into methods, fix the design immediately. You're going to want to fix the design eventually anyway; refactoring will probably create new bugs to fix, so you might as well deal with this bug at the same time.

More importantly, good code is the gift that keeps on giving. If this code is broken today, it's safe to assume that it will bite you again with another bug a few days from now, too. And every time you come back to this code, you'll be fighting its poor design as you try to deal with it. Try to fix it now once and for all.

In the rush to complete projects, bad design is sometimes a compromise made to finish a project on-time. This is called technical debt. It's okay to take out debt like this, just like it's okay to take out financial debt. But the more debt you take out, the higher the payments in the form of your time.

If you find yourself struggling with a tough bug in the midst of some poorly written code, admit that your debt has caught up with you, bite the bullet and refactor.