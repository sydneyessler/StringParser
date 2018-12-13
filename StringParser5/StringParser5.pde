import java.util.Scanner;
import static java.lang.System.*;

String vowels="aeiouy";


String output6;
String output8;      //Strings to hold writing 
String output10;
String output12;

Scanner six;
Scanner eight;
Scanner ten;      //scanners for each text file
Scanner twelve;

double sixnum;
double eightnum;
double tennum;    //variables for storing reading score #
double twelvenum;

String sixG;
String eightG;
String tenG;        //variables for storing grade level
String twelveG;

void setup() {


  ///////////66666666666666666666666///////////////

  try {
    six = new Scanner(new File("Desktop/StringParser5/Data/Syd6thGrade.txt"));
    while (six.hasNext()) {
      output6+=six.next()+ " ";
    }
  }
  catch(Exception e) {
    e.printStackTrace();
  }
  
  String six6 = output6;
  StringParser sixth= new StringParser(six6);
  sixnum = sixth.FleschReadingEase();
  sixG = sixth.FleschGrade();

  ///////8888888888888888888888888888////////////////
  try {
    eight = new Scanner(new File("Desktop/StringParser5/Data/Syd8thGrade.txt"));
    while (eight.hasNext()) {
      output8+=eight.next()+ " ";
    }
  }
  catch(Exception e) {
    e.printStackTrace();
  }

  String eight8 = output8;
  StringParser eight= new StringParser(eight8);
  eightnum= eight.FleschReadingEase();
  eightG = eight.FleschGrade();

  ///////10101010101101010101010101/////////

  try {
    ten = new Scanner(new File("Desktop/StringParser5/Data/Syd10thGrade.txt"));
    while (ten.hasNext()) {
      output10+=ten.next()+ " ";
    }
  }
  catch(Exception e) {
    e.printStackTrace();
  }
 
  String ten10 = output10;
  StringParser ten= new StringParser(ten10);
  tennum = ten.FleschReadingEase();
  tenG= ten.FleschGrade();

  //////121212121212112212//////

  try {
    twelve = new Scanner(new File("Desktop/StringParser5/Data/Syd12thGrade.txt"));
    while (twelve.hasNext()) {
      output12+=twelve.next()+ " ";
    }
  }
  catch(Exception e) {
    e.printStackTrace();
  }
  

  String twelve12 = output12;
  StringParser twelve= new StringParser(twelve12);
  twelvenum = twelve.FleschReadingEase();
  twelveG = twelve.FleschGrade();

  ///////////basic setup
  size(500, 600);//sets up the screen, background is white
  background(0);
  textSize(20);
  fill(255);
  text("6th-12th Grade Essays: Flesch-Kincaid Readability", 10, 40);

  //Squares/Text:
  fill(255, 0, 0);
  rect(100, 100, 105, 105, 7);
  fill(0, 255, 0);
  rect(290, 100, 105, 105, 7);
  fill(0, 0, 255);
  rect(100, 250, 105, 105, 7);
  fill(255, 255, 0);
  rect(290, 250, 105, 105, 7);
  fill(0);
  textSize(45);
  text("6th", 115, 170);
  text("8th", 310, 170);
  text("10th", 100, 320);
  text("12th", 290, 320);
  
}

//mouse interaction//
void draw(){
  
  fill(255);
  textSize(15);
      
  if (mousePressed && isBetween(mouseX, 100, 205) && isBetween(mouseY, 100, 205))
  {
      text("Sixth Grade Informative Essay About Seatbelts", 80, 400);
      text("Reading Ease: " + sixnum + "  " + sixG, 57, 420);
      fill(0);
      rect(0, 425, 500, 150);
  }
  
  if (mousePressed && isBetween(mouseX, 290, 395) && isBetween(mouseY, 100, 205))
  {     
      text("Eighth Grade Short Story Summary", 110, 450);
      text("Reading Ease: " + eightnum + " " + eightG, 50, 470);
      fill(0);
      rect(0, 380, 500, 50);
      rect(0, 475, 520, 150);
  }

  if (mousePressed && isBetween(mouseX, 100, 205) && isBetween(mouseY, 250, 355))
  {
      text("Tenth Grade APUSH DBQ", 150, 500);
      text("Reading Ease: " + tennum + " " + tenG, 40, 520);
      fill(0);
      rect(0, 390, 500, 90);
      rect(0, 525, 520, 150);
  }
  
  
  if (mousePressed && isBetween(mouseX, 290, 395) && isBetween(mouseY, 250, 355))
  {
      text("Twelfth Grade Persuasive Essay", 130, 550);
      text("Reading Ease: " + twelvenum + " " + twelveG, 40, 570);
      fill(0);
      rect(0,400,500,125);
  }
  
}
