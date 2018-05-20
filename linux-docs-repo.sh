#Setup a new repo then push it to an empty project on github
#make a new folder for the repo locally
mkdir BegginersLinuxDocs
cd LinuxCourseDocs
echo "# LinuxCourseDocs" >> README.md
git init
git add README.md
git commit -am "first commit"
git remote add origin https://github.com/ps459/LinuxCourseDocs.git
#then start adding material and pushing it in....
git push -u origin master
#if you change from elsehwere pull the repo
git pull origin master
#################################################################
#Pull and push to an existing project that has material in github
#Make a new directory for scripts or notes that aren't going  into git
mkdir BegginersLinuxDocs
cd BegginersLinuxDocs
#either clone the repo if it exists
git clone git@github.com:ps459/LinuxCourseDocs.git
git remote -v
#Or initiliaze the new folder as a repo
git init
#set the remote origin
git remote add origin https://github.com/ps459/LinuxCourseDocs.git
# Verify new remote
git remote -v
#pull repo
git pull origin master
#configure how we want push to behave 
git config --global push.default simple
###add some new files and content locally
#then mark the new files to be added to github
git add .
#commit them
git commit -am "first commit"
#push them to guthub
git push -u origin master
#if the origin is ahead of the master 
git push
