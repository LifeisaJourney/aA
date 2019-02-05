# Summary
Click download link to download archived project folder
Extract the contents by clicking in Chrome or double clicking in Finder
Open the Terminal application
Drag the newly extracted folder from Finder down to your dock and drop it onto the Terminal application (this is an easy way to change directory into that folder!)
Run the bundle install command to install the gems specified by the Gemfile
Run the bundle exec rspec --color command to run your tests
Run the atom . command to open up the current directory in the Atom
Open the lib folder and write the code to pass the specs
Return to the Terminal and run the specs again until everything is passing
# When you are finished
Open your project folder in Finder, right-click it and choose "Rename"
Name the folder #{firstname}_#{lastname}_#{projectname}
Right-click the renamed folder and choose "Compress..." (Linux users will have to use the command zip -r {zippedfoldername} {foldername} in the terminal).
Return to the task on AppAcademy Online and click the submit button to upload your finished project.
# Additional Tips
Make sure the Terminal application is pinned to your dock for easy access by right clicking it in your dock and selecting Options > “Keep In Dock”
If you do not have the atom command in Terminal, open up Atom and go to Atom > Install Shell Commands, then restart your Terminal application
Use the expected and got output from running rspec to help you pass the tests