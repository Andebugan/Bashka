# Bashka
Bashka is a system of simple bash scripts. Its purpose is to prevent you from wasting your time on manual test generation. For now it only works for Linux and 
msys users, tough I have plans to add Windows scripts of similar character.

Basicly this system will create tests from text file and then test your programm on this data.

For its work **makefile for your app is required** for automatic app update. Now **name of app and several folders and files are set to
default values, but in future configuration file will be added fot that**.

To begin your test generation **you must create two file for positive and negative test results. Names are pos.txt and neg.txt correspondingly.**
This files must be located at the same folder as build_test.sh and func_test.sh, otherwise it will just die and never word again. Then **you must
create folder named "func_tests"**, this is the place, where all of your test files will be stored and processed. **func_tests, pos.txt, neg.txt must be
located at the same directory where makefile is located.**

When all folder are organized in previously discussed order, we can finally begin doing stuff.
1. Launch build_tests.sh ***NOTE: your app name must be app.exe***
2. Launch func_tests.sh
3. Look how all your hopes and dreams falls after your programm failes all tests
