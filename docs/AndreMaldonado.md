## Andre Maldonado Contributions Log
11/7/21 - 3 hrs
Tested the build script on my home machine to try and make the build script pass the check. 
There were some errors and alterations that needed to be made to make it pass. 


11/10/21 - 4hrs
Met with Andre at the ERB lab to gather a procedure to present to the sponsor. We decided to 
uninstall every dependency and piece of software we had added related to the project. The goal was to 
create a list of steps to make sure we can build the whole project in one script. This involved following 
the steps provided in the README's of the repositories we are using and then also keeping track of which 
packages needed to be installed on the Ubuntu subsystem. We got the same result as the day before where
the object detection was running, but not showing up in RVIZ. After some troubleshooting with the frame, 
we were able to get the object detection frame to appear in RVIZ, but its performance was poor. 

11/14/21 - 2hrs
I added the collected procedures and put them in our README. I had to make sure everything was formatted correctly. 
I also worked on modifying the build script since our project changed part of the way through the semester. For now 
I left the script with just the package installs, none of the repository creating is in it right now. Eventually we will 
modify it to automate everything into single command. 

11/17/21 -4hrs
I decided to try and run the project on my home computer since I had recently upgraded my hardware and
wanted to see if I got better performance than the laptop in the lab. I ran into some issues since I had 
previously enabled virtualization on my last motherboard, but then switched it out for a new one with different
settings. It took some troubleshooting to figure out why I could not get the Ubuntu subsystem to work on my computer. 
I am not sure if the new motherboard has additional settings that need to be altered to enable virtualization. 

I also spent some time finalizing the format of the README to be easier to look at and differentiate between steps. 

