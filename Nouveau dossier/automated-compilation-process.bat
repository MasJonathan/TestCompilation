
:git rebase
:projucer --get-version TestCompilation.jucer 
:projucer --set-version 1.0.0 TestCompilation.jucer 
rmdir /S /Q "TestCompilation"
git clone https://github.com/MasJonathan/TestCompilation.git
cd TestCompilation
projucer --resave TestCompilation.jucer 
devenv Builds/VisualStudio2017/TestCompilation.sln /Clean Release
devenv Builds/VisualStudio2017/TestCompilation.sln /Build Release

pause