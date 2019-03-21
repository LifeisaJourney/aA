# Introduction to RSpec
# What is RSpec?
RSpec is a language written in Ruby to test Ruby.

We will be using RSpec regularly for the rest of this curriculum, both to guide your coding on projects and to test your knowledge on assessments.

# Why do we use RSpec?
RSpec is the most frequently used testing tool for Ruby. RSpec is very easy to read and intrepret.

We use RSpec to help make sure that our code does what we want it to. RSpec is made up of statements describing the expected functionality of a piece of code.

# RSpec Example
We will now look into the anatomy of a piece of code that uses RSpec tests. You do not need to know how to run these files yet because you will learn that in the next section. The goal of this section is to introduce you to how RSpec files are broken down and their output.

# File Structure
When using RSpec, all of the code you are writing will be located in the project directory's lib directory. Meanwhile, all of the testing code will be located in the project directory's spec directory. This follows RSpec convention.

For future a/A projects, you will be given specification tests listed in the spec directory while the files in the lib directory will be empty. Instructions and hints will be written in the spec directory to help you write the code in lib directory.
```script.js
project_directory
    |__ lib
    |    |__ 00_hello.rb
    |__ spec
        |__ 00_hello_spec.rb
Code Snippets
```
```script.js
# lib/00_hello.rb
# This is an example file you will be coding

def hello
  # These methods will be empty so you can code them out
end
Here's what a simple hello spec might look like.

# spec/00_hello_spec.rb
# This will be provided for you.
# There is no need to change these specs.

require "00_hello" # This will include code from the previous code snippet.

# the `describe` statement names the function that is tested
describe "the hello function" do

  # the `it` statement names the piece of functionality being tested
  it "says hello" do

      # the `expect` statement below provides an equality check between the
      # return value of hello function and its expected output "Hello!"

      # We can interpret the following code as 'We expect the return value
      # of hello to be equal to the string "Hello!"'
      expect(hello).to eq("Hello!")
  end
end
```
# Terminal Output
When we run the test suite in terminal, we will see a screen that looks like the following:

hello_spec_fail

So, what can we tell from this error message?

We wanted the hello function to say hello.
Specifically, we expected hello to return the string "Hello!".
It actually returned nil, giving us a failure.
The test itself can be found in the 00_hello_spec.rb file on line 5.
Make sure you are able to find all of this information in the screenshot above before moving on.

# Passing the spec
Currently, the hello function returns nil because we do not have any code in the method. In order to pass this spec, we need to return "Hello!" in the hello method.

# lib/00_hello.rb

def hello
  "Hello!"
end
Now, when we run the specs in terminal, we will see the following image:

hello_spec_pass

Yay! Now you have passed all of the tests! Now that you have seen an example of the output of RSpec tests, let's install RSpec on your machine.

