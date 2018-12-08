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
      return "Grade Level: 5";
    }
    if (FleschReadingEase() > 80 && FleschReadingEase() <= 90)
    { 
      return "Grade Level: 6";
    }
    if (FleschReadingEase() > 70 && FleschReadingEase() <= 80)
    { 
      return "Grade Level: 7";
    }
    if (FleschReadingEase() > 60 && FleschReadingEase() <= 70)
    { 
      return "Grade Level: 8-9";
    }
    if (FleschReadingEase() > 50 && FleschReadingEase() <= 60)
    { 
      return "Grade Level: 10-12";
    }
    if (FleschReadingEase() > 30 && FleschReadingEase() <= 50)
    { 
      return "Grade Level: College";
    }
    if (FleschReadingEase() > 0 && FleschReadingEase() <= 30)
    { 
      return "Grade Level: College Graduate";
    }
    if (FleschReadingEase() <=0)
    { 
      return "Grade Level: Before 5th";
    }
    if (FleschReadingEase() >100)
    { 
      return "Grade Level: Above College Graduate";
    } else return "Grade: Unavalible";
  }
}

boolean isBetween(int x, int low, int high){
  boolean between = false;

  for (int a = low; a<=high; a++){
    if (a==x)
      between = true;
  } 

  return between;
}
