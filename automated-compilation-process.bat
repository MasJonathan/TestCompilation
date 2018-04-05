git-bash rebase
:projucer.exe --get-version TestCompilation.jucer 
:projucer.exe --set-version 1.0.0 TestCompilation.jucer 
projucer.exe --resave TestCompilation.jucer 
devenv.exe Builds/VisualStudio2017/TestCompilation.sln /Clean Release
devenv.exe Builds/VisualStudio2017/TestCompilation.sln /Build Release

pause