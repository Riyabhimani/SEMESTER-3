// WAP to sort the N names in an alphabetical order. 

import java.util.*;
public class Lab3_20CC {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int N = sc.nextInt();
        String s[] = new String[N];
        String temp;
        for (int i = 0; i < s.length; i++) {
            s[i] = sc.next();            
        }
        for (int i = 0; i < s.length; i++) {
            for (int j = 1; j <= i; j++) {
                if(s[i].compareTo(s[j])>0){
                    temp = s[i];
                    s[i] = s[j];
                    s[j] = temp;
                }
            }
        }
        for (int i = 0; i < s.length; i++) {
            System.out.println(s[i]);
        }
    }
}