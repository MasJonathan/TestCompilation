:sed -i -e 's/#define OC_VERSION "1.0.0"/#define OC_VERSION "1.0.1"' afile.txt

:while read a ; do echo ${a//#define OC_VERSION "1.0.0"/#define OC_VERSION "1.0.1"} ; done < /afile.txt > /afile.txt.t ; mv /afile.txt{.t,}

file_contents=$(<./afile.txt)
src='#define OC_VERSION "1.0.0"'
dest='#define OC_VERSION "1.0.1"'
echo "${file_contents//src/dest}" > afile.txt
pause