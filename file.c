//Question 2:
#include<stdio.h> //standard input/output funtion
#include <stdio.h> //standard library functions
#include <fcntl.h> //file control ontion
#include <unistd.h> //operating system api
int main () {
int file descriptor; //file descriptor to refer to the opened file
//open the file with the name example with read and write permission and if the file does not exist it will be created
file _description = open("example.tx", O_CRETE | O_TRUNC, 0666);
//check if file is opened successfully
if(file_descriptor < 0){
perror("there is an error when opening the file");
exit(1); exit wuth error code 1
//write "hello world "to the file using desriptor
write(file_descriptor, "Hello world", 11);
//position the file to start of the file to start of the file for read
Iseek(file_descriptor, 0, SEEL_SET);
read(file_descriptor, buffer, 11);
//buffer to store the content read
buffer[11] = '\0';
//print the content read from the file
printf("content read from the file: %\n", buffer);
//close the file descriptor
close(file_descriptor);
}
return 0;
}