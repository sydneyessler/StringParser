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
  println(output6);

  String six6 = output6;
  StringParser sixth= new StringParser(six6);
  println("words " + sixth.countWords());
  println("vowels " + sixth.countVowels());
  println("syllables " + sixth.countSyllablesHelper());
  println("sentences " + sixth.countSentences());
  println("Flesch Reading Ease " + sixth.FleschReadingEase());
  println("Flesch Grade " + sixth.FleschGrade());

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
  println(output8);

  String eight8 = output8;
  StringParser eight= new StringParser(eight8);
  println("words " + eight.countWords());
  println("vowels " + eight.countVowels());
  println("syllables " + eight.countSyllablesHelper());
  println("sentences " + eight.countSentences());
  println("Flesch Reading Ease " + eight.FleschReadingEase());
  println("Flesch Grade " + eight.FleschGrade());

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
  println(output10);

  String ten10 = output10;
  StringParser ten= new StringParser(ten10);
  println("words " + ten.countWords());
  println("vowels " + ten.countVowels());
  println("syllables " + ten.countSyllablesHelper());
  println("sentences " + ten.countSentences());
  println("Flesch Reading Ease " + ten.FleschReadingEase());
  println("Flesch Grade " + ten.FleschGrade());


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
  println(output12);

  String twelve12 = output12;
  StringParser twelve= new StringParser(twelve12);
  println("words " + twelve.countWords());
  println("vowels " + twelve.countVowels());
  println("syllables " + twelve.countSyllablesHelper());
  println("sentences " + twelve.countSentences());
  println("Flesch Reading Ease " + twelve.FleschReadingEase());
  println("Flesch Grade " + twelve.FleschGrade());

  //basic setup
  size(500, 500);//sets up the screen, background is white
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

  //mouse interaction


  if (mousePressed && isBetween(mouseX, 100, 205))
  {
    if (mousePressed && isBetween(mouseY, 100, 205))
    {
      fill(255);
      textSize(15);
      text("Sixth Grade Informative Essay About Seatbelts", 20, 200);
      text("Reading Ease: " + sixth.FleschReadingEase() + " Grade Level: " + sixth.FleschGrade(), 20, 210);
    }
  }
  
  
  
  
  
  if (mousePressed && isBetween(mouseX, 290, 395))
  {
    if (mousePressed && isBetween(mouseY, 100, 205))
    {
      fill(255);
      textSize(15);
      text("Eighth Grade Informative Essay About Seatbelts", 20, 200);
      text("Reading Ease: " + eight.FleschReadingEase() + " Grade Level: " + eight.FleschGrade(), 20, 210);
    }
  }




if (mousePressed && isBetween(mouseX, 100, 205))
  {
    if (mousePressed && isBetween(mouseY, 250, 355))
    {
      fill(255);
      textSize(15);
      text("Tenth Grade Informative Essay About Seatbelts", 20, 200);
      text("Reading Ease: " + ten.FleschReadingEase() + " Grade Level: " + ten.FleschGrade(), 20, 210);
    }
  }
  
  
  if (mousePressed && isBetween(mouseX, 290, 395))
  {
    if (mousePressed && isBetween(mouseY, 250, 355))
    {
      fill(255);
      textSize(15);
      text("Twelfth Grade Informative Essay About Seatbelts", 20, 200);
      text("Reading Ease: " + twelve.FleschReadingEase() + " Grade Level: " + twelve.FleschGrade(), 20, 210);
    }
  }

}

public class StringParser {
  String s;
  String [] words;
  String [] sentence;
  char[] cArray2;

  //public StringParser() {
  //  s = "";
  //  //text= s.toLowerCase();
  //  String [] words=text.split("[\\,!\\s]+");
  //  String [] sentence=text.split("[\\!.]");
  //  char[] cArray2 = text.toCharArray();
  //}

  public StringParser(String t)
  {
    s = t;
    //text= t.toLowerCase();
  }

  /**
   *countWords();
   * A "word" is defined as a contiguous string of alphabetic characters
   * i.e. any upper or lower case characters a-z or A-Z.  This method completely 
   * ignores numbers when you count words, and assumes that the document/paragraph does not have 
   * any strings that combine numbers and letters. 
   */

  public int countWords() {
    String text= s.toLowerCase();
    String [] word = text.split("[\\,!\\s]+");
    return word.length;
  }

  public int countVowels() {
    String text= s.toLowerCase();
    int vowels = 0;
    char[] cArray2 = text.toCharArray();

    for (int i=0; i<cArray2.length; i++ )
    {
      if (cArray2[i] == 'a' || cArray2[i] == 'e' || cArray2[i]== 'i' ||cArray2[i] == 'o' || cArray2[i] == 'u' || cArray2[i] == 'y')
      {
        vowels++;
      }
    }
    return vowels;
  }

  /**
   * Get the total number of syllables in the document (the paragraph). 
   * To count the number of syllables in a word, use the following rules:
   *       Each contiguous sequence of one or more vowels is a syllable, 
   *       with the following exception: a lone "e" at the end of a word 
   *       is not considered a syllable unless the word has no other syllables. 
   *       You should consider y a vowel.
   */
  public int countSyllablesHelper() {
    String text= s.toLowerCase();
    int countSyll=0;
    String [] words = text.split("[\\,!\\s]+");
    for (String s : words) {
      countSyll+=countSyllables(s);
    }
    return countSyll;
  }


  public int countSyllables(String word) {
    String text= s.toLowerCase();
    int numSyll=0;
    boolean newSyll = true;
    char[] wordArray = word.toCharArray();

    for (int i = 0; i < wordArray.length; i++) {
      if (i == wordArray.length-1 && wordArray[i] == 'e' && newSyll && numSyll > 0) {
        numSyll--;
      } 

      if (newSyll && vowels.indexOf(wordArray[i]) >= 0) {
        newSyll = false;
        numSyll++;
      } else if (vowels.indexOf(wordArray[i]) < 0) {
        newSyll = true;
      }
    }
    return numSyll;
  }



  /**
   * Eventually write this one too. Get the number of sentences in the document/paragraph.
   * Sentences are defined as contiguous strings of characters ending in an 
   * end of sentence punctuation (. ! or ?) or the last contiguous set of 
   * characters in the document, even if they don't end with a punctuation mark.
   */

  public int countSentences() {
    String text= s.toLowerCase();
    String [] sentence=text.split("[\\!.]");

    return sentence.length;
  }

  public double FleschReadingEase() {
    double fre = 0;
    double tw = (double)countWords();
    double tsen = (double)countSentences();
    double tsyl = (double)countSyllablesHelper();

    fre = 206.835 - ((1.015)*(tw/tsen)) - ((84.6)*(tsyl/tw));

    return fre;
  }

  public String FleschGrade() {

    if (FleschReadingEase() > 90 && FleschReadingEase() <= 100)
    { 
      return "Grade 5";
    }
    if (FleschReadingEase() > 80 && FleschReadingEase() <= 90)
    { 
      return "Grade: 6";
    }
    if (FleschReadingEase() > 70 && FleschReadingEase() <= 80)
    { 
      return "Grade: 7";
    }
    if (FleschReadingEase() > 60 && FleschReadingEase() <= 70)
    { 
      return "Grade: 8-9";
    }
    if (FleschReadingEase() > 50 && FleschReadingEase() <= 60)
    { 
      return "Grade: 10-12";
    }
    if (FleschReadingEase() > 30 && FleschReadingEase() <= 50)
    { 
      return "Grade: College";
    }
    if (FleschReadingEase() > 0 && FleschReadingEase() <= 30)
    { 
      return "Grade: College Graduate";
    }
    if (FleschReadingEase() <=0)
    { 
      return "Grade: Before 5th";
    }
    if (FleschReadingEase() >100)
    { 
      return "Grade: Above College Graduate";
    } else return "Grade: Unavalible";
  }
}

boolean isBetween(int x, int low, int high)
{
  boolean between = false;

  for (int a = low; a<=high; a++)
  {
    if (a==x)
      between = true;
  } 

  return between;
}
