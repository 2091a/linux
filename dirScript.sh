echo "The current directory is " 
pwd
echo "lets create new directory Give directory name "
read dirName
mkdir $dirName
echo "navigateing to new directory "
cd $dirName
echo "lets create a file inside new directory"
echo "Give file name "
read newFile
touch $newFile
echo "file created lets see the content of the directory"
ls -lt $dirName
echo "do you want to delete the directory"
rm -ri $dirName


