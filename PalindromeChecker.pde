public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here
  String letters = word.replaceAll("[^A-Za-z]+", "").toLowerCase();
    for(int i = 0; i < letters.length(); i++)
    {
        if(letters.charAt(i) != letters.charAt(letters.length()-i-1))
        {
    return false;
        }
    }
  return true;
}

