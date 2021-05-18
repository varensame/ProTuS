
GO
SET IDENTITY_INSERT [dbo].[CodingExercises] ON 
GO
INSERT [dbo].[CodingExercises] ([Id], [Title], [Description], [Code], [TopicId]) VALUES (1, N'Calculating the Percentage of the Correctly Answered', N'Complete the following code in order to calculate the percentage of the correctly answered questions on a student’s test, given the total number of questions on the test and the number of questions the student got right.

The total number of questions on the test and the number of questions the student got right are stored in the variables totalQuestions and numRight, respectively. Assume that the initial value of variable totalQuestions is already set to a positive integer greater than 0 and the initial value of variable numRight is already set to a positive integer greater than or equal to 0. Also, note that the percentage should include the fractional part.

E.g. 1: if the value of numRight is 4 and the value of totalQuestions is 10, the code prints 0.4.
E.g. 2: if the value of numRight is 9 and the value of totalQuestions is 15, the code prints 0.6.', N'    double percent;
    // TODO: add your code here
        
    
    System.out.println(percent);', 1)
GO
INSERT [dbo].[CodingExercises] ([Id], [Title], [Description], [Code], [TopicId]) VALUES (2, N'Calculating the average of three given numbers', N'Complete the following code in order to calculate the average of three integers that are stored in variables num1, num2, and num3.

Assume that the initial value of each of these variables is already set to an integer number. Also, note that the average should include the fractional part.

E.g. 1: if the value of num1 is 3, the value of num2 is 4, and the value of num3 is 5, the code prints 4.0.
E.g. 2: if the value of num1 is 2, the value of num2 is 3, and the value of num3 is 1, the code prints 2.0.
', N'    double average;
    // TODO: add your code here
        
    
    System.out.println(average);', 1)
GO
INSERT [dbo].[CodingExercises] ([Id], [Title], [Description], [Code], [TopicId]) VALUES (3, N'Calculating the perimeter of a rectangle', N'Complete the following code in order to calculate the perimeter of a rectangle, given its height and width. The height and width of the rectangle are stored in the variables height and width, respectively. The initial value of both variables is already set to a positive number.

E.g. 1: if the value of height is 3 and the value of width is 4, the code prints 14.
E.g. 2: if the value of height is 6 and the value of width is 7, the code prints 26.
', N'    int perimeter;
    // TODO: add your code here
        
    
    System.out.println(perimeter);', 1)
GO
INSERT [dbo].[CodingExercises] ([Id], [Title], [Description], [Code], [TopicId]) VALUES (4, N'Repeating the Last Character of a String', N'Given a string variable str, complete the following code in order to create a string that has the last character of the string str repeated 2 times. Store the resulting string in a variable called output.

Assume that the initial value of variable str is already set to a string with zero or more characters.

E.g. 1: if the value of str is "Hello", the code prints oo.
E.g. 2: if the value of str is "HiH", the code prints HH.', N'    String output;
    // TODO: add your code here
    
    
    System.out.println(output);', 2)
GO
INSERT [dbo].[CodingExercises] ([Id], [Title], [Description], [Code], [TopicId]) VALUES (5, N'Swapping the first and last characters of a string', N'Given a string variable str, complete the following code in order to swap the first and last character of the string str. Assume that the initial value of variable str is already set to a string with at least two characters.

E.g. 1: if the initial value of str is "Hello", the updated value of str will be oellH .
E.g. 2: if the value of str is "Yummy", the updated value of str will be yummY.', N'    // TODO: add your code here
    

        ', 2)
GO
INSERT [dbo].[CodingExercises] ([Id], [Title], [Description], [Code], [TopicId]) VALUES (6, N'MakeOutWord', N'Given two string variables out and word, complete the following code in order to create a new string where the string word is in the middle of the string out. Store the resulting string in a variable called str. Assume that the initial value of variables out and word is already set to a string and variable out has exactly 4 characters.

E.g. 1: if the value of out is "(())" and the value of word is "Yay", the code prints ((Yay)).
E.g. 2: if the value of out is "----" and the value of word is "WooHoo", the code prints --WooHoo--.
E.g. 3: if the value of out is "[[]]" and the value of word is "word", the code prints [[word]].
', N'    String str;
    // TODO: add your code here
    
    
    System.out.println(str);', 2)
GO
INSERT [dbo].[CodingExercises] ([Id], [Title], [Description], [Code], [TopicId]) VALUES (7, N'Determining when the squirrels in Palo Alto play', N'The squirrels in Palo Alto spend most of the day playing. In particular, they play if the temperature is between 60 and 90 (inclusive). Unless it is summer, then the upper limit is 100 instead of 90. Given an integer variable temp and a boolean variable isSummer, write a boolean expression to determine if the squirrels play. Store the result of this expression in a variable called result. Assume that the initial value of the variables temp and isSummer is already set to an integer and a boolean value, respectively.

E.g. 1: if the value of temp is 70 and the value of isSummer is false, the value of result will be true.
E.g. 2: if the value of temp is 95 and the value of isSummer is false, the value of result will be false.
', N'    boolean result;
    // TODO: add your code here
    
    ', 3)
GO
INSERT [dbo].[CodingExercises] ([Id], [Title], [Description], [Code], [TopicId]) VALUES (8, N'Determining When a Number is Special', N'Given an integer variable, n, write a boolean expression to determine if this integer is a special number. We''ll say a number is special if it is a multiple of 11 or if it is one more than a multiple of 11. Store the result of this expression in a variable called result. Assume that the initial value of the variable n is already set to a non-negative integer.

E.g. 1: if the value of n is 22, the value of result will be true.
E.g. 2: if the value of n is 23, the value of result will be true.
E.g. 3: if the value of n is 24, the value of result will be false.', N'    boolean result;
    // TODO: add your code here
    
    ', 3)
GO
INSERT [dbo].[CodingExercises] ([Id], [Title], [Description], [Code], [TopicId]) VALUES (9, N'Conditional statements 4', N'Given a string str, complete the following code in order to determine the value of the string variable result. If the same 2-character substring appears at both beginning and end of the string str, the result is the contents of the string str without the 2-character substring at the beginning. If the two characters at the start and end of the string do not match each other, the result is the same as the string str.
Assume that the initial value of the variable str is already set to a string.

E.g. 1: if the value of str is "HelloHe", the value of result will be "lloHe".
E.g. 2: if the value of str is "Hi", the value of result will be "".
E.g. 3: if the value of str is "HelloHi", the value of result will be "HelloHi".', N'    String result;
    // TODO: add your code here
        
       ', 4)
GO
INSERT [dbo].[CodingExercises] ([Id], [Title], [Description], [Code], [TopicId]) VALUES (10, N'Conditional statements 3', N'You have a green lottery ticket, with integers a, b, and c on it. Complete the following code in order to determine the value of variable result based on the three integers on your lottery ticket. If the integers are all different from each other, the result is 0. If all of the integers are the same, the result is 20. If two of the integers are the same, the result is 10.
Assume that the initial value of the variables a, b, and c is already set to an integer.

E.g. 1: if the value of a is 1, the value of b is 2, and the value of c is 3, the value of result will be 0.
E.g. 2: if the value of a is 2, the value of b is 2, and the value of c is 2, the value of result will be 20.
E.g. 3: if the value of a is 1, the value of b is 1, and the value of c is 2, the value of result will be 10.
', N'    int result;
    // TODO: add your code here
        
       ', 4)
GO
INSERT [dbo].[CodingExercises] ([Id], [Title], [Description], [Code], [TopicId]) VALUES (11, N'While Loop 5', N'Given a string variable str, complete the following code in order to determine whether the string str is a palindrome. A palindrome is a string of characters that reads the same forward or backward. Store the result in a boolean variable called isPalindrome.
Assume that the initial value of variable str is already set to a string with at least one character.

Hint: Start from the leftmost and rightmost characters of the string str and keep comparing characters while they are same.

E.g. 1: if the initial value of str is "aba", the value of isPalindrome will be true .
E.g. 2: if the initial value of str is "abc", the value of isPalindrome will be false .
E.g. 3: if the initial value of str is "abbccbba", the value of isPalindrome will be true .', N'boolean isPalindrome;
// TODO: add your code here

 
        
        ', 5)
GO
INSERT [dbo].[CodingExercises] ([Id], [Title], [Description], [Code], [TopicId]) VALUES (12, N'While Loop 4', N'Assume that you want to invest your money by putting it in a bank account that earns a certain percent interest per year. Assume that your initial balance is stored in a double variable balance and the interest rate is stored in a double variable rate. Given these two variables, complete the following code in order to calculate how many years does it take for the initial balance to triple. Store the result in an integer variable called year.

Assume that the initial value of variables balance and rate is already set to a positive number and value of rate is in percent (i.e. ranges from 0 to 100).

Note that while this can be computed directly mathematically, you need to use a "while loop" to figure out the answer for this exercise.

E.g. 1: if the value of balance is 1000 and the value of rate is 5, the value of year will be 23.
E.g. 2: if the value of balance is 1000 and the value of rate is 10, the value of year will be 12.
E.g. 3: if the value of balance is 1000 and the value of rate is 20, the value of year will be 7.', N'int year;
// TODO: add your code here

 
        
        ', 5)
GO
INSERT [dbo].[CodingExercises] ([Id], [Title], [Description], [Code], [TopicId]) VALUES (13, N'For Loop 1', N'Given two integer variables a and b, complete the following code in order to calculate the sum of the integers from a (inclusive) to b (exclusive). The sum is stored in an integer variable called sum. Assume that the initial value of the variables a and b is already set to a positive integer.

E.g. 1: if the value of a is 3 and the value of b is 5, the value of sum will be 7.
E.g. 2: if the value of a is 2 and the value of b is 8, the value of sum will be 27.
E.g. 3: if the value of a is 1 and the value of b is 6, the value of sum will be 15.
', N'int sum = 0, i;
for 
(;;)       
{        
	sum += i;
}
System.out.println(sum);', 6)
GO
INSERT [dbo].[CodingExercises] ([Id], [Title], [Description], [Code], [TopicId]) VALUES (14, N'For Loop 3', N'Given an string variable str, complete the following code in order to create a string that has each character of string str repeated two times. The resulting string is stored in a variable called result. Assume that the initial value of variables str is already set to a string with at least one character.

E.g. 1: if the value of str is "The", the code prints TThhee.
E.g. 2: if the value of str is "AAbb", the code prints AAAAbbbb.
E.g. 3: if the value of str is "Hi-There", the code prints HHii--TThheerree.', N'String result = "";
int i;
for 
(;;)       
{        
	char add = str.charAt(i);
	result += "" + add + add;
}
System.out.println(result);', 6)
GO
INSERT [dbo].[CodingExercises] ([Id], [Title], [Description], [Code], [TopicId]) VALUES (15, N'Objects and Classes 2', N'Consider the following code:

public class Circle { 
    private double radius; 
    
    public double getRadius() {
	  return radius;
    }
}


Write a method for the class Circle named setRadius that sets the radius of the circle to the value that is specified as the parameter of the setRadius method. This method does not return anything. Note that the radius of a circle must be always a positive number. Therefore, this method prevents setting the radius of the circle to a negative value or zero.', N'public class Circle { 
    private double radius = 1;
    // TODO: add the setRadius method here
    
    
    
    
    
    
    public double getRadius() {
		return radius;
    }
}', 7)
GO
SET IDENTITY_INSERT [dbo].[CodingExercises] OFF
GO
SET IDENTITY_INSERT [dbo].[Examples] ON 
GO
INSERT [dbo].[Examples] ([Id], [Title], [Description], [Code], [TopicId]) VALUES (1, N'Creating a List of Words from File(s)', N'Construct a program that reads a text file and creates a list of the words that the file contains, ignoring the case of the letters. Assume that all of the words in the text file are separated by a single space characters.', N'import java.util.*;
import java.io.*;
public class JVocabulary1 {
  public static void main(String[] args) {
    JVocabulary1 v1 = new JVocabulary1();
    ArrayList<String> lst = v1.getWords("test1.txt");
    System.out.println("words = " + lst);
  }
  //Step 1: Define the method that creates a list of words from a file
  public ArrayList<String> getWords(String fileName) {
    //Step 1.1: Create an empty list to store the words
    ArrayList<String> words = new ArrayList<String>();
    //Step 1.2: Enclose the code that might throw an exception within the try block
    try {
      //Step 1.2.1: Wrap a BufferedReader around a FileReader
      FileReader fr = new FileReader(fileName);
      BufferedReader br = new BufferedReader(fr);
      //Step 1.2.2: Use the BufferedReader object to read one line at a time
      String line = null;
      while ( ( line = br.readLine() ) != null) {
        //Split the line into words, ignoring the case of the letters
        String[] tokens = line.toLowerCase().split(" ");
        //Add each word in the line to the list
        for (String token : tokens) {
          words.add(token);
        }
      }
      //Step 1.2.3: Close the BufferedReader object attached to the file
      br.close();
      //Step 1.3: Handle all possible exceptions that may be thrown in the try block
    } catch (FileNotFoundException ex) {
      System.out.println("File not found");
    } catch (IOException ex ) {
      System.out.println("Problem with the file!");
    }
    //Step 1.4: return the list
    return words;
  }
}', 1)
GO
INSERT [dbo].[Examples] ([Id], [Title], [Description], [Code], [TopicId]) VALUES (2, N'String Addition', N'Construct a program that prints the text "24 and 45 concatenated: 2445" and "24 and 45 added: 69".', N'public class StringAddition1
{
  public static void main (String[] args)
  {
    //Step 1: Create and print the text "24 and 45 concatenated: 2445"
    String str1 = "24 and 45 concatenated: " + 24 + 45;
    System.out.println(str1);
    //Step 2: Create and print the text "24 and 45 added: 69"
    String str2 = "24 and 45 added: " + (24 + 45);
    System.out.println(str2);
  }
}', 2)
GO
INSERT [dbo].[Examples] ([Id], [Title], [Description], [Code], [TopicId]) VALUES (3, N'String With Escape Characters', N'Construct a program that prints the following output:
"Quotes"
Slashes
\//
How ''"confounding'' "\" it is!', N'public class JEscapeChar1
{
  public static void main (String[] args)
  {
    //Step 1: Print the first three lines
    System.out.println("\"Quotes\"\nSlashes\n\\//");
    //Step 2: Print the last line
    System.out.print("How ''\"confounding'' \"\\\" it is!");
  }
}', 2)
GO
INSERT [dbo].[Examples] ([Id], [Title], [Description], [Code], [TopicId]) VALUES (4, N'Pass-Fail Rule', N'Construct a program to determine whether a student fails the course based on the inputs that it receives from the instructor. The student fails the course if the exam score is less than 55 or student has more than 2 missing homework.', N'import java.util.Scanner;
public class JFailCourse1 {
  public static void main(String[] args) {
    //Step 1: Read the instructor inputs
    Scanner scan = new Scanner(System.in);
    System.out.println("Enter the exam score:");
    int examScore = scan.nextInt();
    System.out.println("Enter number of missing homework:");
    int numberOfMissingHW = scan.nextInt();
    scan.close();
    //Step 2: Write the boolean expression to determine whether the student fails the course
    boolean isFailing = examScore < 55 || numberOfMissingHW > 2;
    System.out.println(isFailing);
  }
}', 3)
GO
INSERT [dbo].[Examples] ([Id], [Title], [Description], [Code], [TopicId]) VALUES (5, N'Buying a New Phone', N'Construct a program that determines whether it is time to buy a new phone based on the inputs that it receives from the user. A new phone should be bought if the phone breaks or the phone is at least 3 years old.', N'import java.util.Scanner;
public class JPhoneAge1 {
  public static void main(String[] args){
    //Step 1: Read the user inputs
    Scanner scan = new Scanner(System.in);
    System.out.println("Enter the phone age in years:");
    int phoneAge = scan.nextInt();
    System.out.println("Enter whether the phone is broken (true or false):");
    boolean isBroken = scan.nextBoolean();
    scan.close();
    //Step 2: Write the boolean expression to determine whether it is time to buy a new phone
    boolean needPhone = isBroken || phoneAge >= 3;
    System.out.println(needPhone);
  }
}', 3)
GO
INSERT [dbo].[Examples] ([Id], [Title], [Description], [Code], [TopicId]) VALUES (6, N'The Min/Max of Three Integers', N'Construct a program that determines the smallest of the three integer values entered by the user.', N'import java.util.Scanner;
public class JNestedIfMinOfThree
{
  public static void main (String[] args)
  {
    //Step 1: Read the three integers
    Scanner scan = new Scanner (System.in);
    System.out.println("Enter three integers: ");
    int num1 = scan.nextInt();
    int num2 = scan.nextInt();
    int num3 = scan.nextInt();
    scan.close();
    //Step 2: Determine the minimum integer
    int min;
    if (num1 < num2) {
      if (num1 < num3) {
        min = num1;
      } else {
        min = num3;
      }
    } else {
      if (num2 < num3) {
        min = num2;
      } else {
        min = num3;
      }
    }
    //Step 3: Print the minimum integer
    System.out.println ("Minimum value: " + min);
  }
}
', 4)
GO
INSERT [dbo].[Examples] ([Id], [Title], [Description], [Code], [TopicId]) VALUES (7, N'Warning about the Changes in the Weather Condition', N'Construct a program that receives the temperature for today and yesterday and warns the user when it is getting colder or warmer or neither. The temperature values could have a decimal point.', N'import java.util.Scanner;
public class JNestedIfTemperature1 {
  public static void main(String[] args) {
    //Step 1: Read the temperature for today and yesterday
    Scanner scan = new Scanner (System.in);
    System.out.println("Enter the yesterday''s temperature: ");
    double yesterday = scan.nextDouble();
    System.out.println("Enter the today''s temperature: ");
    double today = scan.nextDouble();
    scan.close();
    //Step 2: Warn the user about the changes in the temperature
    if ( today < yesterday ) {
      System.out.println("It is getting colder!");
    } else {
      if ( today > yesterday ) {
        System.out.println("It is getting warmer!");
      } else {
        System.out.println("Temperature is the same as yesterday!");
      }
    }
  }
}', 4)
GO
INSERT [dbo].[Examples] ([Id], [Title], [Description], [Code], [TopicId]) VALUES (8, N'Finding Smallest/Largest Divisor of a Positive Number', N'Construct a program that finds the smallest divisor (other than 1) of a positive number. For example, the smallest divisor of 4 is 2.', N'public class JSmallestDivisor {
  public static void main(String[] args) {
    //Step 1: Define the variables that we need for this program
    int num = 15;
    int divisor = 2;
    //Step 2: Find the smallest divisor of the number
    while (num % divisor != 0) {
      divisor += 1;
    }
    System.out.println("The smallest divisor of " + num + " is " + divisor);
  }
}	', 5)
GO
INSERT [dbo].[Examples] ([Id], [Title], [Description], [Code], [TopicId]) VALUES (9, N'Receiving Input Integers Until a Certain Condition is Met', N'Construct a program that receives an integer from the user, outputs that integer, and stops receiving integers when the user enters a negative integer.', N'import java.util.Scanner;
public class JInput1 {
  public static void main(String[] args) {
    //Step 1: Read the first integer that the user enters
    Scanner scan = new Scanner(System.in);
    System.out.println("Enter an integer:");
    int num = scan.nextInt();
    //Step 2: Print the integer that the user has entered, then receive the next integers as long as the user enters an integer that is not negative; otherwise stop
    while ( num >= 0 ) {
      System.out.println("The integer entered is " + num);
      System.out.println("Enter an integer:");
      num = scan.nextInt();
    }
    scan.close();
    System.out.println("End of input.");
  }
}', 5)
GO
INSERT [dbo].[Examples] ([Id], [Title], [Description], [Code], [TopicId]) VALUES (10, N'Printing Sequence of Numbers with a Gap Between Adjacent Values', N'Construct a program that prints a sequence of numbers from 1 (inclusive) to 16 (exclusive) in increments of 4.', N'public class JForThree1 {
  public static void main(String[] args) {
    //Step 1: Iterate through the numbers in the sequence
    for (int num = 1; num < 16; num += 4) {
      //Step 1.1: Print each number in the sequence
      System.out.println(num);
    }
  }
}', 6)
GO
SET IDENTITY_INSERT [dbo].[Examples] OFF
GO
