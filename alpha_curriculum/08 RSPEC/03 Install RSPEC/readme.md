How to Install RSpec
When you download each set of exercises, you'll find that they come packaged in a particular folder structure. In your file system, it should look something like this:

rspec-1/
 |- lib/
 |- spec/
 |- Gemfile
 |- Gemfile.lock
The lib/ directory contains your actual code and the spec/ directory holds all the test files. Structuring the directories in this way makes it simple to run all the tests in the spec/ directory with one command (which you'll learn at the end of this reading).

Before we run the tests, we'll have to make sure we have the right gems installed. Gems are just Ruby code bundled in a self-contained format (this is commonly referred to as a library). After downloading the exercises, navigate into the directory and run the following commands (see the Introduction's Command Line & Atom task if you need a refresher on using the command line).

~$ gem install bundler
~$ bundle install
Here's what's happening:

gem install bundler will do what it says: install the Bundler gem. Bundler is a tool for managing the development environment for a project; essentially, it "locks" you into using a particular version of each gem in the Gemfile. This makes it easy for someone to download our project and get exactly the same results when running it. We only need to run this once to install bundler. To learn more about Bundler, check out their documentation

bundle install will download and install the gems from the Gemfile, including rspec. We will have to run this command every time we start on a new project. After this step, we're ready to run the tests locally.

After you've gone through this setup process, you're ready to test some exercises!

Running your first RSpec tests
Before we complete our first Ruby project with rspec tests, let's be sure that we have our development environment setup correctly.

Before we continue, quickly hop over and download the RSpec Practice 1 project.

In terminal, head to the root directory of the project directory. If you are not sure you are in the right directory, type into terminal pwd, short for print working directory. It should be the directory with the README, the lib folder, and the spec.

Then, run the following commands:

bundle install

bundle exec rspec --color: bundle exec will run the rspec version specified on the Gemfile instead of the rspec version installed globally on your computer. This command will only run correctly if you are in the project root directory. If you are executing this command while in the spec or lib directory, this will not work. The --color flag will color the statements red if failing and green if passing.

If you can successfully download the project task and run these two commands, please feel free to mark this task as complete. In the next reading, you'll be reading about other important configuration flags that make RSpec easier to read, similar to --color.

If you run into trouble, this is a quick screencast with some of the most common bugs we have seen in ruby/rbenv environment setup. If you are still having trouble running the bundle commands after watching this video please contact App Academy for assistance through the forum or the Discuss tab at the top of the page.