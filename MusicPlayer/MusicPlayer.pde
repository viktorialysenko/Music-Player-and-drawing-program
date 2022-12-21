import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Libraty: use Sketch/ Import Library/ Add Library/ Minim
//
//Global Variables
Minim minim;//creates object to access all functions
AudioPlayer  song1; //creates "Play List" variable holding  extensions WAV, AIFF, AU 
//
void setup () {
  //size (500, 600);//Remind you of Display Geometry
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
  song1 = minim.loadFile("../MusicDownload/bohemianRapsody.mp3");//able to pass absolute path, file name & extension, and URL
 
}//End Setup
//
void draw () {
}//End draw
//
void keyPressed () { 
  if (key=='p'|| key=='P') song1.play(16000); 
  if (key=='l'|| key=='L') song1.loop(1); //Parameter is milli-seconds from start of audio file to start playing (illustrate with examples)
}//End KeyPressed
//
void mousePressed () {
  
}//End mousePressed
//
//END Main Program
