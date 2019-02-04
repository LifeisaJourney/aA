# Command Line Exercises and Shortcuts
Today, we're going to become comfortable using the command line. The more you can do without leaving the terminal, the more efficient you will be as a developer. Seconds saved during common operations may seem trivial at the moment, but summed over the course of your career they will be invaluable. Furthermore, the less you need to worry about coding "logistics," the more you can focus on coding itself!

A quick note before we start: whenever you are learning a new concept in development, never copy and paste code. You will remember it much better if you type it out. Take the extra few seconds, or even minutes if necessary.

Let us begin!

# Commands to Master
1. ls
1. pwd
1. cd
1. mkdir
1. touch
1. atom
1. cp
1. mv
1. rm
1. man
1. zip
1. unzip
1. clear
1. open

# Spotlight Search
Start by pressing ⌘-SPACE to open Spotlight Search.

Type in terminal and press enter to open the Terminal app.

Terminal will start in what is called the HOME directory, denoted by ~.

ls
List out all the contents in your home directory with ls.

ls
You should see a number of directories here, such as:

Applications Documents    Library      Music        Public
Desktop      Downloads    Movies       Pictures
If you don't, try using this command before using ls. We will cover it soon.

cd
pwd
To see what directory you are currently in, use pwd.

pwd
This should print out something like this:

/Users/username/
This is the path to our home directory, denoted by ~. Most of the files and directories we work with will be contained inside this directory. Levels above our home directory, for instance at /Users/ or just /, contain information that our operating system uses to run. Feel free to poke around, but don't change anything.

cd
Our current working directory (CWD) is the directory that is currently being looked at by the terminal. Right now, that is the home directory (~).

cd stands for "change directory".

Change your current working directory to the Desktop by using the cd command.

cd Desktop
Note: You can avoid typing out the entire name of any file or folder by using the 'tab' key to autocomplete.

List out all the content in this directory. These are the contents of your Desktop.

The pwd command we used earlier prints our CWD (current working directory). Use it to see our new current working directory. It should now look something like this:

~/Desktop$
Earlier, we used the cd command without a directory. The cd command will default to ~, the HOME directory.

mkdir
Make your own directory called my_directory by using the mkdir command.

mkdir my_directory
List out the contents to see this new directory.

Change your current working directory to be your new directory and make another called my_subdirectory inside of my_directory

touch
Go into your sub directory and create a new file called my_file.txt with the touch command.

touch my_file.txt
atom
Open up your newly created file in the Atom text editor by using the atom command.

atom .
The . denotes the CWD.

Add some text to your file and save it!

cp
It would be a shame to lose your hard work. Create a copy of your file my_copied_file.txt with the cp command.

cp my_file.txt my_copied_file.txt
List out all the contents here to see it.

Move up to the parent directory with:

cd ..
As . denotes our current directory, .. denotes the directory above our current directory, or in other words, the parent of our current directory.

What if we want to copy an entire directory, including all of its contents? We can provide the cp command a -r flag, or option, to tell cp to recursively copy my_subdirectory as my_copied_subdirectory. By recursively copying, it will continue to copy any nested subdirectories until it copies all subdirectories and files inside of them. We will learn more about recursion in the main curriculum.

cp -r my_subdirectory my_copied_subdirectory
List out the contents of your CWD to see it.

List out the contents of your newly copied subdirectory:

ls my_copied_subdirectory
Note: The default for ls is to list the contents of ., the CWD.

mv
Moving and renaming both happen with the same command, mv. Rename my_copied_subdirectory as my_moved_subdirectory by moving it with the mv command.

mv my_copied_subdirectory my_moved_subdirectory
List contents.

If we move a file or directory to a name of an existing directory, it will move it inside of that directory. Move my_moved_subdirectory into my_subdirectory.

mv my_moved_subdirectory my_subdirectory
List contents to check that it moved.

Be careful with mv and files! If we mv a file be the same name of another file in that directory, it will overwrite that file without warning.

When using commands that reference directories, we can chain them together until we get where we want. Let's cd into my_moved subdirectory, which is inside of my_subdirectory.

cd my_subdirectory/my_moved_subdirectory
See what's in here.

rm
We can delete, or remove, directories and files from the command line using the rm command. When using rm, we have to handle files and directories differently. We can delete files easily, let's delete our text file in our CWD.

ls
rm my_file.txt
Check that it's gone.

Directories are different in that they could have contents inside of them. Because of this, we must first recursively delete all of the contents inside the directory before deleting the directory itself. To achieve this, we use the -r flag, similar to cp -r. If we try to delete a directory without the -r flag, we will get an error. Let's move up one directory, and then delete my_moved_subdirectory.

cd ..
ls
rm -r my_moved_subdirectory
Make sure it's gone.

When we say the rm command deletes something, the item removed doesn't get put it in the Trash. It's gone... forever. This command is incredibly powerful, and with great power comes great responsibility: be absolutely sure you want to delete a file or directory with all its sub-directories before running this command. There's no going back.

man
That was warm up! We'll find that there are a lot of useful tips and documentation right in our terminal and tools. Let's get serious by opening up the manual for the zip command using man.

man zip
We are viewing the manual for the zip command in a program called less. We have to navigate it using our keyboard. Spend a minute or two trying out the following sets of commands:

There are a few layouts to move up and down one line:
e and y
j and k
up-arrow and down-arrow
Take your pick!

Move up u and down d half of a page

Move to the top g and bottom G of the whole document.

Search for a word or phrase with / followed by the word. This will appear in the bottom line of your terminal. Press enter to search.

/archive
Skim the manual and figure out how to zip directories with zip. The USE section will be useful here. Feel free to search for it!

When you're done, press q to exit the doc. We can use man to explore the uses of any command line function. Who needs Google? The answers lie within.

zip
Use your new found knowledge to create a zip of my_directory.

zip -r my_directory.zip my_directory
Check that it's there.

Now that you've compressed your files, you can delete the originals by using rm -r.

Don't forget to check that it's gone.

unzip
Fear not. Whenever you need your files, just use the unzip command with your zip file.

unzip my_directory.zip
ls
clear
Clean up your terminal window. Use clear to clear your scrollable history.

clear
You can also do this by pressing ⌘-k.

open
The open command will open a file or folder with the default application. The default application for a folder is Finder. While you may be more comfortable using a GUI right now, using the terminal is markedly more efficient for most common tasks. So try to use it as much as possible! Stay a while and you'll learn to love it.

Open your CWD in Finder:

open .
say
Lastly, have countless hours of fun talking to your computer with the say [text] command.

say hello world


# Keyboard Shortcuts
Just like using the terminal, these keyboard shortcuts will make development much faster. Use them often and they will become second nature in no time. When someone is cruising around their code with shortcuts on the job or in an interview, it demonstrates experience and dedication towards making their development workflow more efficient.

NB Many of these also work in the browser and other OSX apps.

# Terminal
Shortcut	Command
⌘ + shift + ] / [	Switch tab right/left
ctrl + A / E	Move cursor to beginning / end of line
ctrl + U / K	Delete to beginning / end of line
ctrl + W	Delete to start of word
ctrl + C	Terminate command
option + ← →	Move cursor one word left / right
↑ ↓	Navigate command history
⌘ + K	Clear command history

# Atom
Shortcut	Command
⌘ + /	Toggle comment for line/selection
⌘ + ← →	Move cursor to beginning/end of line
⌘ + ↑ ↓	Move cursor to beginning/end of document
⌘ + enter	Create new line below cursor
⌘ + shift + enter	Create new line above cursor
⌘ + L	Select the current line
⌘ + shift + D	Duplicate the current line
ctrl + shift + K	Delete the current line
⌘ + ] / [	Indent/Outdent current line
⌘ + T	Open fuzzy file finder
⌘ + F	Find in document
⌘ + \	Toggle sidebar
⌘ + shift + F	Find in project
⌘ + shift + P	The command palette
⌘ + ctrl + ↓ ↑	Move current line up/down

# Multi-line Selecting
A powerful feature of many modern text editors like Atom

Shortcut	Command
⌘ + click	Place multiple cursors
⌥ + ← →	Intelligently move cursor by word
⌥ + shift + ← →	Intelligently move and select by word
⌘ + shift + L	Place a cursor at the end of each line in selection
ctrl + ⌘ + G	Select all instances of selection
