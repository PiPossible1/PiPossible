# Software Architecture Document

#### Table of Contents
- 1.	Introduction	
- 1.1	Purpose	
- 1.2	Scope
- 1.3	Definitions, Acronyms, and Abbreviations	
- 1.4	References	
- 1.5	Overview	
- 2.	Architectural Representation	
- 3.	Architectural Goals and Constraints	
- 4.	Use-Case View	
- 4.1	Use-Case Realizations	
- 5.	Logical View	
- 5.1	Overview	
- 5.2	Architecturally Significant Design Packages	
- 6.	Process View	
- 7.	Deployment View	
- 8.	Implementation View	
- 8.1	Overview	
- 8.2	Layers	
- 9.	Data View (optional)	
- 10.	Size and Performance	
- 11.	Quality	


### Software Architecture Document

##### 1.	Introduction
###### 1.1	Purpose
This document provides a comprehensive architectural overview of the system, using a number of different architectural views to depict different aspects of the system. It is intended to capture and convey the significant architectural decisions which have been made on the system.
REMINDER: (Hyper)Links will follow soon.
###### 1.2	Scope
The Document should apply to the structure of our Users Application on Android and our main code on the Raspberry Pi.
###### 1.3	Definitions, Acronyms, and Abbreviations
| Abbrevation | Description                         |
| ----------- | ----------------------------------- |
| MVC         | Model View Controller               |
| SDK         | Software development kit            |
| SRS         | Software Requirements Specification |
| UC          | Use Case                            |
| n/a         | not applicable                      |
###### 1.4	References /tbd)
-	Our Use Diagram, on our Github
-	Our Average Use Diagram, on our Github
-	Our Class Diagram, on our Github and on blog week 8

###### 1.5	Overview
The Document shows how we organized our software architecture. For that we broke the different parts of the architectural design in different subjects. This Document also shows our goals. 
##### 2.	Architectural Representation 
The app and the raspberry pi are completely coded in Visual Studio Code, for the app we use flutter, for the raspberry we habvent finaly decided yet.  

With Dart all Views are created and controlled by their belonging Activity.


##### 3.	Architectural Goals and Constraints 

Our Goal is it to follow the MVC pattern in our application. Luckily Android provides this nearly automatically and we don't need to account or force this.

Another goal is to follow Androids design guidelines, because we want our users to comfortably navigate through our app and have an easy to read and good to maintain code.

##### 4.	Use-Case View 

![UCD][logo]

[logo]: https://github.com/PiPossible1/PiPossible/blob/master/OverallUseCaseDiagramm.png "OUD"

###### 4.1	Use-Case Realizations
n/a
##### 5.	Logical View 

At the moment our classes look like this:

![CD][classd]

[classd]: https://github.com/PiPossible1/PiPossible/blob/master/generatedclassdiagram.png "CD"

The project plays around the following classes:
Control and Steer.
Steer gives the user the possibility to control the robot.
Control is the class for the music capability of the robot, the user can use it to send his favorite music to the robot.

All other classes are used for small features that are parts of the main features, for example the ambiant light. 

###### 5.1	Overview (tbd)

##### 6.	Process View 
n/a
##### 7.	Deployment View 
The app runs on the users devices. It doesnt play music already but it can show all the different music titles on the phone.
##### 8.	Implementation View 
n/a
###### 8.1	Overview
n/a
###### 8.2	Layers
n/a
##### 9.	Data View (optional)
We dont have a Database and will not use on in the future.
##### 10.	Size and Performance 
n/a
##### 11.	Quality (tbd)
Our main point in the quality of our software is entertainment and therefore we don’t use personal information so we need no information safety features in there. So we focus on user experience, the handling of our software should be intuitive as possible.
