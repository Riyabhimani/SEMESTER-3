//WAP to replace lowercase characters by uppercase & vice-versa in a user specified string.

import java.util.*;
/**
 * Lab4_27C
 */
public class Lab4_27C {
public static void main(String[] args) {
    Scanner sc=new Scanner(System.in);

    System.out.println("Enter String: ");
    String str1=sc.nextLine();

    System.out.println("Final String: ");
    String str2=" ";

    for(int i=0;i<str1.length();i++){
        char c=str1.charAt(i);

        if(c>='A' && c<='Z'){
            c=(char)(c+32);
        }
        else if(c>='a' && c<='z'){
            c=(char)(c-32);
        }
        str2 += c;
    }
    System.out.println(str2);
}
}