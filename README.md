# StringParser

This program receives input of my past writing assignments and commutes/outputs different information about them. The computed/outputted data includes the number of words, vowels, syllables, and sentences. It also outputs the Flesch–Kincaid readability score and grade level. 

For each grade level, I used a scanner to read through the file and compute different data values in order to determine the Flesch–Kincaid readability score and grade level of each piece of writing. For each grade, a seperate StringParser object was made. Below is the code used to scan in an essay I wrote in sixth grade:
	
	try {
	
    six = new Scanner(new File("Desktop/StringParser5/Data/Syd6thGrade.txt"));    //reading in a file
		
    while (six.hasNext()) {
      output6+=six.next()+ " ";   
			 }	
		}
		
	catch(Exception e) 
		{
    e.printStackTrace();
		}
		  
		String six6 = output6;
		StringParser sixth= new StringParser(six6);   //creating a StringParser object for 6th grade essay
		sixnum = sixth.FleschReadingEase();           // storing reading ease number to be used in interface
		sixG = sixth.FleschGrade();                   // storing grade level to be used later in interface

For the user interface, I created a screen that displays four boxes with different grades on them. The user can click on one of the boxes to see the Flesch-Kincaid reading ease number and grade level for the respective grade's piece of writing. In order to make this function work, I had to use the X and Y positions of the mouse and boolean mousePressed. Because writing out the if statements for the domain and range of the positions of mouseX and mouseY seemed like it would be a bit tedious, I used a method I made called isBetween that determines if the postion of mouseX or mouseY is within a minumum and maximum value. Below is the code I used for getting the interface to display the Flesch–Kincaid readability score and grade level when the 6th grade button is pressed:
  
	//in void draw() method
	if (mousePressed && isBetween(mouseX, 100, 205) && isBetween(mouseY, 100, 205))
	{
      text("Sixth Grade Informative Essay About Seatbelts", 80, 400);
      text("Reading Ease: " + sixnum + "  " + sixG, 57, 420);
	}

Here is the independent isBetween method that is utilized in this project:

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
	
The most challenging parts of this project for were figuring out how to read in multiple files and getting the interface to display the desired information when the buttons are pressed. In order to read in multiple files, I went through the string parser class and altered it to be a class that takes in a string. That was somewhat painless, but the part that caused me the most struggling was getting four different files into the class. Although it may not be the most efficent way, I finally figured out I could use four separate StringParser objects and have four sets of everything (one for each of the grades I used). The other challenging part of this project was getting the interface to display the readability score and grade level when the buttons were clicked. To overcome this, I stored the desired values in variables rather than calling the FleschReadingEase() and FleschGrade() methods when giving the string I wanted displayed when the buttons were clicked.


  
  
  
  
