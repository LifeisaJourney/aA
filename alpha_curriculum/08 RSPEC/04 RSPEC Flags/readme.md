# Useful RSpec Flags
The follow table contains the 3 rspec flags we use as we run our testing suites.

# Flag	Description
--color	Failing tests will be colored red while passing tests will be colored green.
--order=default	Tests will run in-order, from top to bottom
--format documentation	Will print the full descriptions for each spec in a hierarchical format
If we want to run all of these flags in the project root directory, we can run bundle exec rspec --color --order=default --format documentation

Now, thats a long command to execute every time we want to run our testing suite. The good news is, we can actually modify a rspec file so that the flags will be added automatically!

Adding RSpec default flags
In terminal, run atom ~/.rspec. This will open the .rspec file in your root directory.

Paste and save the following code to the .rspec file.
```script.js
--color
--format documentation
--order=default
```
Now, any time you run bundle exec rspec in your future projects, it will run bundle exec rspec --color --order=default --format documentation under the hood.

--format documentation vs. --format progress
The default --format flag is progress, which is not as helpful. The output looks like this:

....F.....*.....

. represents a passing example
F is failing example
* is pending example.
If you see the above output from any future rspec tests, it is because you are missing the --format documentation flag.

More about flags can be found in the RSpec command line docs