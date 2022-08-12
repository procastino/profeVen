# profeVen
## What is this?
A little Arduino indicator for computer science class management. It must be placed on a visible spot on the student's table. It has an RGB LED and two pushbuttons, start and reset. When you press button start, led lights, indicating that the student needs the teacher (profe) to come (ven) and help him/her. Every while (1 minute by default), if the teacher has not attended the student demand, light will change color according to the sequence purple - cyan - blue - yellow - red, so that the teacher knows who has been waiting the most. When the light gets red, it stays there. When teacher solves the student's problem, presses reset button to turn light off. If the student has finished his work and wants to let the teacher know that he is ready to go on, he can long press the start button and a green light will start to fade out and in.
## (Not so) technicals
This device is controlled by an atTiny85, and powered by an USB connection. It has a custom PCB designed in KiCad and it's enclosure is designed in the openSCad files. The "lid" part must be printed with transparent or translucid plastic.
Programming is written in Arduino, surely it's not great code, but it gets the job done.
## Disclaimer
It is a quite overengineered solution for managing classrooms, you can obviously find simpler ways of dealing with your students doubts. But I teach design and technology, so... what did you expect?
