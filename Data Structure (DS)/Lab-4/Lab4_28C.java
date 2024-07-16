// Suppose you are senior developer for an Relational Database Management System 
// named "Array Database" where everything is implemented using only array, today 
// your task is to implement aggregate function like sum, min, max, avg. For simplicity, 
// assume that your database can only store integers.

import java.util.*;
public class Lab4_28C {
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);

        System.out.println("Enter a length of an array: ");
        int n=sc.nextInt();

        int arr[] = new int[n];

        for(int i=0;i<arr.length;i++){
            System.out.println("Enter arr["+i+"]= ");
            arr[i] = sc.nextInt();
        }
        int sum=0;
        int min=arr[0];
        int max=arr[0];
        double avg=0;

        for(int i=0;i<arr.length;i++){
            sum += arr[i];
            if(arr[i]<min){
                min=arr[i];
            }
            else if(arr[i]>max){
                max=arr[i];
            }
        }
        avg=sum/(double)n;

        System.out.println("Sum= "+sum);
        System.out.println("Minimum= "+min);
        System.out.println("Maximum= "+max);
        System.out.println("Average= "+avg);
    }
}