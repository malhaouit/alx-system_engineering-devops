# Loops, Conditions and Parsing Project

## Introduction

This project covers three important concepts in world of scripting, parsing and processing files (***loops, conditions, and parsing***). To accomplish the tasks we will need some tools like ***while*** loop, ***for*** loop, ***if*** condition and other commands that are required to accomplish the tasks of this project. It includes **11** mandatory tasks and **4** advanced tasks. 

**Note**: For more information about the privacy of this project and other related projects see the README file of the repo.

## Project Structure

### Mandatory Tasks

- **Task 0:** `Create a SSH RSA key pair`  
In this task we are asked to create a SSH RSA key pair (public key and privte key) using the command **ssh-keygen**. For more information take a look at the manual (man: ssh-keygen).

- **Task 1:** `For Best School loop`  
Write a Bash script that displays Best School 10 times.

	Requirement:  
	> You must use the for loop (while and until are forbidden)

- **Task 2:** `While Best School loop`  
Write a Bash script that displays Best School 10 times.  

	Requirement:
	> You must use the while loop (for and until are forbidden)

- **Task 3:** `Until Best School loop`  
Write a Bash script that displays Best School 10 times.  

	Requirement:
	> You must use the until loop (for and while are forbidden)

- **Task 4:** `Until Best School loop`  
Write a Bash script that displays Best School 10 times.  

	Requirement:
	> You must use the until loop (for and while are forbidden)

- **Task 4:** `If 9, say Hi!`  
Write a Bash script that displays Best School 10 times, but for the 9th iteration, displays Best School and then Hi on a new line.  

	Requirements:
	> You must use the while loop (for and until are forbidden)  
	> You must use the if statement

- **Task 5:** `4 bad luck, 8 is your chance`  
Write a Bash script that loops from 1 to 10 and:  
	+ displays bad luck for the 4th loop iteration  
	+ displays good luck for the 8th loop iteration  
	+ displays Best School for the other iterations  

	Requirements:  
	> You must use the while loop (for and until are forbidden)  
	> You must use the if, elif and else statements  

- **Task 6:** `Superstitious numbers`  
Write a Bash script that displays numbers from 1 to 20 and:  
	+ displays 4 and then bad luck from China for the 4th loop iteration  
	+ displays 9 and then bad luck from Japan for the 9th loop iteration  
	+ displays 17 and then bad luck from Italy for the 17th loop iteration  

	Requirements:  
	> You must use the while loop (for and until are forbidden)  
	> You must use the case statement  

- **Task 7:** `Clock`  
Write a Bash script that displays the time for 12 hours and 59 minutes:  
	+ display hours from 0 to 12  
	+ display minutes from 1 to 59  

	Requirements:  
	> You must use the while loop (for and until are forbidden)  

- **Task 8:** `For ls`  
Write a Bash script that displays:  
	+ The content of the current directory  
	+ In a list format  
	+ Where only the part of the name after the first dash is displayed  

	Requirements:  
	> You must use the for loop (while and until are forbidden)  
	> Do not display hidden files  

- **Task 9:** `To file, or not to file`  
Write a Bash script that gives you information about the school file.  

	Requirements:  
	> You must use if and, else (case is forbidden)  
	> Your Bash script should check if the file exists and print:  
		+ if the file exists: "school file exists"  
		+ if the file does not exist: "school file does not exist"  
	> If the file exists, print:  
		+ if the file is empty: "school file is empty"   
		+ if the file is not empty: "school file is not empty"   
		+ if the file is a regular file: "school is a regular file"  
		+ if the file is not a regular file: (nothing)  

- **Task 10:** `FizzBuzz`  
Write a Bash script that displays numbers from 1 to 100.  

	Requirements:  
	> Displays FizzBuzz when the number is a multiple of 3 and 5  
	> Displays Fizz when the number is multiple of 3  
	> Displays Buzz when the number is a multiple of 5  
	> Otherwise, displays the number  
	> In a list format
	

### Advanced Tasks  

- **Task 11:** `Read and cut`  
Write a Bash script that displays the content of the file /etc/passwd.  

	Your script should only display:  
	+ username  
	+ user id  
	+ Home directory path for the user  

	Requirements:  	
	> You must use the while loop (for and until are forbidden)  

- **Task 12:** `Tell the story of passwd`  
Write a Bash script that displays the content of the file /etc/passwd, using the while loop + IFS.  

	Format: The user USERNAME is part of the GROUP_ID gang, lives in HOME_DIRECTORY and rides COMMAND/SHELL. USER ID's place is protected by the passcode PASSWORD, more info about the user here: USER ID INFO  

	Requirements:  
	> You must use the while loop (for and until are forbidden)  

- **Task 13:** `Let's parse Apache logs`   
Apache is among the most popular web servers in the world.  
As a Full-Stack Software Engineer, you have to master the art of parsing log files. Today we will do a simple parsing of Apache log access files (the link to download the Apache log file for processing: http://intranet-projects-files.s3.amazonaws.com/holbertonschool-sysadmin_devops/80/apache-access.log)  

	Requirement:  
	> Format: IP HTTP_CODE  
		+ in a list format  
	> You must use awk  
	> You are not allowed to use while, for, until and cut  
	> Download and commit the apache-access.log file along with your answers files  

- **Task 14:** `Dig the data`  
Now that we’ve parsed the Apache log file, let’s sort the data so we can get a better idea of what is going on.  

	Using what you did in the previous exercise, write a Bash script that groups visitors by IP and HTTP status code, and displays this data.  

	Requirements:  
	> The exact format must be:  
		+ OCCURENCE_NUMBER IP HTTP_CODE  
		+ In list format  
	> Ordered from the greatest to the lowest number of occurrences  
	> You must use awk  
	> You are not allowed to use while, for, until and cut
