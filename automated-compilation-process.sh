
#git rebase
#projucer --get-version TestCompilation.jucer 
#projucer --set-version 1.0.0 TestCompilation.jucer 
rmdir "TestCompilation"
git clone https://github.com/MasJonathan/TestCompilation.git
projucer --resave TestCompilation.jucer 
devenv "TestCompilation/Builds/VisualStudio2017/TestCompilation.sln" /Clean Release
devenv "TestCompilation/Builds/VisualStudio2017/TestCompilation.sln" /Build Release

pause