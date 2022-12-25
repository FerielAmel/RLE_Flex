# Run-length encoding data compression and decoding



This is a little desktop application for Windows that allows to code and econde files with the RLE algorithm, where the functions are built with a lexical analyser (Flex) and compiled with it to give C functions. The latter are compiled with GCC and the exec resulting files are used in the python application. 

## Contents of this repository
	1- "LEXcode.l" : lex file that contains the coding function.
	2- "LEXdecode.l" : lex file that contains the decoding function.
	3- "main.py" : Python script that contains a GUI built with tkinter module, shell commands to compile the LEX files besides the compilation of the C files (with GCC) generated from the first compiltion 
	the latter generates the executable programms "Code.exe" and "Decode.exe".



## Steps to the execution:

  	1-Download win_flex_bison zip file available in this repo 
  	2-Unzip the file 
  	3-Copy the directory of the folder then go to environment variables->system variables->path->edit->new and paste it there. (Note that you will need to restart the computer for it to work)
 	4-Execute the python script, click on "Encode" for example, choose your file and the resulting file will appear in the same folder of your origin file named "encodedFile.txt".
![image](https://user-images.githubusercontent.com/107730108/209480023-c6f2843b-d21e-4e4b-94d2-fec1ea5d0cc7.png)

## Note
The following files will appear after the execution
  	1- "code.c" : the resulting C file obtained after compiling the "LEXcode.l" file with flex
	2- "decode.c" : the resulting C file obtained after compiling the "LEXdecode.l" file with flex
  	3- "code.exe"
  	4- "decode.exe"
